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

    def deleteConfirmation(){
        Topics topic=Topics.get(params.topic)
        render (view:"deleteConfirmation",model:[topic:topic])
    }

    def deleteTopic(){
        if(session.user.password!=params.password) {
            redirect(controller: "dashboard",action: "dashboard")
            flash.message="Authentication failed, Deletion aborted"
        }
        else {
            Topics topic = Topics.findByName(params.topicName)
            List subs = (topic) ? Subscriptions.findAllByTopic(topic) : null
            List resources = (topic) ? Resources.findAllByTopic(topic) : null
            List rates = (resources) ? Ratings.findAllByResourceInList(resources) : null
            List reads = (resources) ? Readings.findAllByResourceInList(resources) : null

            rates.each {
                it.delete(flush: true)
            }
            reads.each {
                it.delete(flush: true)
            }
            resources.each {
                it.delete(flush: true)
            }
            subs.each {
                it.delete(flush: true)
            }
            topic.delete(flush: true)

            redirect(controller: "dashboard", view: "dashboard")
            flash.message = "Content Deletion Successful"
        }
    }



    def abortDeletion(){
        redirect(controller: "dashboard",action: "dashboard")
        flash.message="Content Deletion aborted"
    }


    def topicChangeRender(){
        Topics topic=Topics.get(params.topic)
        render (view:"topicChange",model:[topic:topic])
    }

    def topicChange(){
        Topics topic = Topics.findByName(params.topicName)
        List allTopics=Topics.list().name
        if(allTopics.contains(params.newTopicName))
        {
            redirect(controller: "dashboard",action: "dashboard")
            flash.message="Topic already exists, Please use a different name"
        }
        else {
            topic.name = params.newTopicName
            topic.save(flush: true)

            redirect(controller: "dashboard", view: "dashboard")
            flash.message = "Topic Changed Successful"
        }
    }

    def abortTopicChange(){
        redirect(controller: "dashboard",action: "dashboard")
        flash.message="Topic Change aborted"
    }
}