package link_sharing

//import link_sharing.Enums

import static link_sharing.Enums.*

class TopicsController {
//    static scaffold=Topics
    static defaultAction = "createTopic"

    def createTopic() {
        Topics topic = new Topics()

        List<String> allTopics = Topics.list().name
        topic.name = params.name
        if (params.visibility == 'PRIVATE') {
            topic.visibility = 'PRIVATE'
        } else topic.visibility = 'PUBLIC'
        topic.createdBy = session.user


        if (!(allTopics.contains(topic.name))) {
            topic.addToSubs(user: session.user, topic: topic, seriousness: Enums.Seriousness.VERY_SERIOUS)
            topic.save(flush: true, validate: true, failOnError: true)
            redirect(controller: "Users", action: "dashboard")
            flash.message = "Topic '${topic.name}' created Successfully"
        } else {
            redirect(controller: "Users", action: "dashboard")
            flash.message = "Topic '${topic.name}' already exists, Please choose a different topic name"
        }
    }

    def topicShow(){
        List topicList=Topics.list()
        render(view:"topicShow",model:[user:session.user,topicList:topicList])
        flash.message="Hey ${session.user.firstName}, Explore the world here!"
    }
}