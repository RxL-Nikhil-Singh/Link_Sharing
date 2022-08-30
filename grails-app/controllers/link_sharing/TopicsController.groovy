package link_sharing

class TopicsController {
//    static scaffold=Topics
    static defaultAction = "createTopic"

    def createTopic(){
        Topics topic=new Topics()
//        Users user=Users.find
        topic.name=params.name
        if(params.visibility=='PRIVATE')
        {
            topic.visibility='PRIVATE'
        }
        else topic.visibility='PUBLIC'
        topic.createdBy=session.user
        topic.save(flush:true,validate:true,failOnError:true)

        redirect(controller:"Users", action:"dashboard")
    }
}
