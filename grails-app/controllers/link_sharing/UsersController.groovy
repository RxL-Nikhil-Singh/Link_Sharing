package link_sharing

import org.springframework.web.multipart.MultipartFile

class UsersController {
//    static scaffold = USERS
    static defaultAction = "home"



    def home(){
        List<Resources> rec=Resources.list(sort:"dateCreated",order:"desc",max:5)


        render (view:"home",model:[rec:rec])
//        ,[user:user]
    }

    def savePhoto(MultipartFile file, String username) {
        if (file != null) {
            String fullPath = request.getServletContext().getRealPath("/");
            String filePath = fullPath.substring(0, fullPath.indexOf("Link_Sharing") + "Link_Sharing".length())
            String assets = filePath + "/grails-app/assets/"
            String folder = assets + "images/ProfilePictures/"
            String orgName = file.getOriginalFilename();
            String extension = orgName.split("\\.")[1]
            String photoName = username
            if (session.user) {
                photoName = session.user.email.split("\\.")[0]
//                photoName = session.user.username
            }
            String docPath = folder + photoName + "." + extension;
            File dest = new File(docPath);
            file.transferTo(dest);
            return username
        } else {
            return null
        }
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

        user.photo=savePhoto( params.profilePic,params.username)

        if(usersList.contains(user.username))
        {
            flash.message="Username occupied, Please try a different one"
        }
            else if(emails.contains(user.eMail))
        {
            redirect(action:"home")
            flash.message="Email already registered, Please login!"
        }
        else if(!validator)
        {
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
//        List<Users> usernames=Users.list()
//        render (user.username)
//        render (params.name)
        boolean x=curUser

        if(!x)
        {
            redirect(action:"home")
            flash.message = "User not found! 👺👺👺, Please retry or Register"

        }

        else if(curUser.password==params.password)
        {
            session.user=curUser
            redirect (action: 'dashboard');

        }
        else {
//            String message="wrong password"
            flash.message = "Wrong Password!, please try again or click on Forgot Password"
            redirect(action: 'home')
        }
    }

    def dashboard() {
//        render (view:"dashboard")
//        List<SUBSCRIPTION> subs=SUBSCRIPTION.list()
        render (view:"dashboard",model:[user:session.user])
    }

    def logout(){
        session.invalidate()
        redirect(action:"home")
    }
}
