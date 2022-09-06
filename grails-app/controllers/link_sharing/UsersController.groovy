package link_sharing

class UsersController {
//    static scaffold = Users
    static defaultAction = "home"



    def home(){
        if(session.user) {
            session.invalidate()
        }
        List publicTopics=Topics.findAllByVisibility('PUBLIC')
        List publicResourceList=(publicTopics)?Resources.findAllByTopicInList(publicTopics,[sort: "lastUpdated", order: "desc"]):null
        Integer size=(publicResourceList)?((publicResourceList.size()<5)?publicResourceList.size():5):0
        List publicResourceSubList=(publicResourceList)?publicResourceList.subList(0,size):null

        Map M=new HashMap()
        Double ratingVal=0

        publicResourceList.each{
            if(Ratings.findAllByResource(it))
                ratingVal=Ratings.findAllByResource(it).score.sum()/Ratings.findAllByResource(it).size()
            M.put(it.id,ratingVal)
        }

        M=M.sort{it.value}
         size=(M.size())?((M.size()<5)?M.size():5):M.size()
        List topRatedList= (M.keySet())?Resources.getAll(M.keySet()).reverse().subList(0,size):null
//        List topRatedList= Resources.getAll(M.keySet()).subList(size-6,size-1).reverse()


        render (view:"home",model:[resList:publicResourceSubList,topRatedList:topRatedList])
        if(flash.message==null)
            flash.message="Hey🙋, Please Login or Register"
    }

    def savePhoto(def file, def username) {
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

            String docPath = folder + photoName + "." + extension
            File dest = new File(docPath);
            file.transferTo(dest);
            return username+"."+extension

    }

    def register(){

        Users user = new Users(params)
        List<String> usersList=Users.list().username
        List<String> emails=Users.list().eMail

        user.photo=savePhoto( params.profilePic,params.username)
        println params.profilePic
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
            else if(user.photo.size()>5120000)
        {
            redirect(actoin:"home")
            flash.message="Please reduce photo size below 5MBs"
        }

         if(user.validate())
        {
            user.save(flush: true, validate: true, failOnError: true)
            redirect (action:"home")
            flash.message="Congrats, you are registered 🤩, Please Login"
        }
        else{
             redirect(actoin:"home")
             flash.message="Password criteria violated, Please retry with a stronger password"
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
            redirect (controller:"dashboard",action: 'dashboard')
            flash.message=" Hey ${session.user.firstName}, Welcome aboard!"
        }
        else {
//            String message="wrong password"
            redirect(action: 'home')
            flash.message = "Wrong Password!, please try again or click on Forgot Password"

        }
    }


    def logout(){
        if(session.user)
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
        render(view:"/resources/post")
        flash.message="hello vijju"
    }

    def search(){

    }

    def userProfile(){
        Users user=Users.get(params.user)
        List publicTopicList=Topics.findAllByCreatedByAndVisibility(user,'PUBLIC')
        List privateTopicList=Topics.findAllByCreatedByAndVisibility(user,'PRIVATE')
        List resourceList=Resources.findAllByCreatedByAndTopicInList(user,publicTopicList,[sort: "lastUpdated", order: "desc"])
//        List subsList=Subscriptions.findAllByUserAndT(user)

        render(view:"userProfile",model:[user:user,resList:resourceList,publicTopicList:publicTopicList,privateTopicList:privateTopicList])
        flash.message="${user.firstName} ${user.lastName}"


    }


}
