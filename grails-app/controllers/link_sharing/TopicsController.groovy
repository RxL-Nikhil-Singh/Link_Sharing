package link_sharing

//import link_sharing.Enums

import static link_sharing.Enums.*

class TopicsController {
//    static scaffold=Topics
    static defaultAction = "createTopic"

    def createTopic() {
        Topics topic = new Topics()

        topic.name = params.name
        if (params.visibility == 'PRIVATE') {
            topic.visibility = 'PRIVATE'
        } else topic.visibility = 'PUBLIC'
        topic.createdBy = session.user
        List allTopics=Users.getAll(session.user.id).topic.name

        if (!(allTopics.contains(topic.name))) {
            topic.addToSubs(user: session.user, topic: topic, seriousness: Enums.Seriousness.VERY_SERIOUS)
            topic.save(flush: true, validate: true, failOnError: true)
            redirect(controller: "dashboard", action: "dashboard")
            flash.message = "Topic '${topic.name}' created Successfully"
        } else {
            redirect(controller: "dashboard", action: "dashboard")
            flash.message = "Topic '${topic.name}' already exists, Please choose a different topic name"
        }
    }

    def topicShow(){
        Topics topic=Topics.get(params.topic)
        Users user=Users.get(params.user)
        List Resource=Resources.findAllByTopic(topic,[sort:"dateCreated",order:"desc"])
        print Resource.description+"   "
//        render topic.name
        render(view:"topicShow",model:[user:user,topic:topic,Resource:Resource])
        flash.message="${topic.name}"
    }

    def pvtVisibility(){
        Topics topic=Topics.get(params.topic)
        topic.visibility=Enums.Visibility.PRIVATE
        topic.save(flush:true,validate:true,failOnError:true)
        redirect(controller: "dashboard",action: "dashboard")
        flash.message="Visibility changed to PRIVATE"
    }

    def pubVisibility(){
        Topics topic=Topics.get(params.topic)
        topic.visibility=Enums.Visibility.PUBLIC
        topic.save(flush:true,validate:true,failOnError:true)
        redirect(controller: "dashboard",action: "dashboard")
        flash.message="Visibility changed to PUBLIC"
    }
}