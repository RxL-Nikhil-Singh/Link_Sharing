package link_sharing

import org.springframework.web.multipart.MultipartFile

class UsersController {
//    static scaffold = Users
    static defaultAction = "home"



    def home(){
        if(session.user) {
            redirect(action: "dashboard")
            flash.message = "Hey ${session.user.firstName}!🙋"
        }
        List resourceList=Resources.list(sort:"dateCreated",order:"desc",max:5)
        List ratedResourceList=Ratings.list(sort:"score",order:"desc",max:5)
//    render(view:"home")
        render (view:"home",model:[resList:resourceList,ratedList:ratedResourceList])
        if(flash.message==null)
            flash.message="Hey🙋, Please Login or Register"
//        flash.message="Hello 🙋‍, Please Login or Register!"
//        ,[user:user]
    }

    def savePhoto(MultipartFile file, String username) {
        String orgName = file.getOriginalFilename();
            if(!(orgName.contains('.jpg')||orgName.contains('.jpeg')||orgName.contains('.png')))
                return "defaultProfile.png"
//        render (orgName)
            String fullPath = request.getServletContext().getRealPath("/");
            String filePath = fullPath.substring(0, fullPath.indexOf("Link_Sharing") + "Link_Sharing".length())
            String assets = filePath + "/grails-app/assets/"
            String folder = assets + "images/ProfilePictures/"


            String extension = orgName.split("\\.")[1]
            String photoName = username
//            if (session.user) {
//                photoName = session.user.email.split("\\.")[0]
////                photoName = session.user.username
//            }
            String docPath = folder + photoName + "." + extension
            File dest = new File(docPath);
            file.transferTo(dest);
            return username+"."+extension

    }

    def register(){

        Users user = new Users(params)
//        render(user.photo)
        List<String> usersList=Users.list().username
        List<String> emails=Users.list().eMail

        String pass=params.password
        boolean smallCase=false,upperCase=false,num=false

        for(i in 0..(pass.size()-1))
        {
            if(pass[i]>='a' && pass[i]<='z')
                smallCase=true;
            if(pass[i]>='A' && pass[i]<='Z')
                upperCase=true;
            if(pass[i]>='0' && pass[i]<='9')
                num=true;
        }
        boolean validator= (num && upperCase && smallCase)
        if(pass.size()<5)validator=false

//        render(params.profilePic)
        user.photo=savePhoto( params.profilePic,params.username)

        if(usersList.contains(user.username))
        {
            redirect(action:"home")
            flash.message="Username occupied, Please try a different one"
        }
            else if(emails.contains(user.eMail))
        {
            redirect(action:"home")
            flash.message="Email already registered, Please login!"
        }
        else if(!validator)
        {
            redirect(action:"home")
            flash.message="Password criteria violated, Please retry with a stronger password"
        }


//        render( validator)
     else if(params.password==params.confirmPassword) {

            user.save(flush: true, validate: true, failOnError: true)
            redirect (action:"home")
            flash.message="Congrats, you are registered 🤩, Please Login"
        }
        else {
            redirect(action:"home")
            flash.message="Passwords didn't match🥺, Please retry"
        }
    }





    def login(){

        Users curUser=Users.findByUsername(params.username)

        boolean x=curUser

        if(!x)
        {
            redirect(action:"home")
            flash.message = "User not found! 👺👺👺, Please retry or Register"

        }

        else if(curUser.password==params.password)
        {
            session.user=curUser
//            render session
            redirect (action: 'dashboard')
            flash.message=" Hey ${session.user.firstName}, Welcome aboard!"
        }
        else {
//            String message="wrong password"
            redirect(action: 'home')
            flash.message = "Wrong Password!, please try again or click on Forgot Password"

        }
    }

    def dashboard() {

        if (session.user){
            List topicList=Subscriptions.findAllByUser(session.user).topic.name
            List subscriptionList=Subscriptions.findAllByUser(session.user)
            List inbox=Readings.findAllByUserAndIsRead(session.user,false)
//            Users curUser=Users.get(session.user)
//            render curUser
            render(view: "dashboard", model: [user: session.user,topicList:topicList,subsList:subscriptionList,inbox:inbox])
        if (flash.message == null)
            flash.message = "${session.user.firstName} logged in"
        }

        else{
                redirect(action: "home")
                flash.message = "Session out ⌛, Please Login!"
        }
    }

    def logout(){
        session.invalidate()
        redirect(action:"home")
        flash.message=("Successfully logged out!, See ya!🖐")
    }

    def editProfile(){
        List topicList=Subscriptions.findAllByUser(session.user).topic.name
        List subscriptionList=Subscriptions.findAllByUser(session.user)
        render (view:"editProfile",model:[user:session.user,topicList:topicList,subsList: subscriptionList])
    }

    def post(){
        render(view:"post")
        flash.message="hello vijju"
    }

    def search(){

    }

    def userProfile(){

    }
}
