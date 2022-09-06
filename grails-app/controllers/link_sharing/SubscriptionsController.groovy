package link_sharing


class SubscriptionsController {
//    static defaultAction = "createSubscription"

    def subscribe(){
        Topics topic=Topics.get(params.topic)
        Subscriptions subs=new Subscriptions()
        subs.topic=topic
        subs.user=session.user
        subs.seriousness=Enums.Seriousness.CASUAL

        if(session.user) {
            subs.save(flush: true, failOnError: true, validate: true)
            redirect(controller: "dashboard", action: "dashboard")
            flash.message = "Subscribed Topic '${topic.name}' by '${topic.createdBy.username}' , Please choose your seriousness"
            List resourceList = Resources.findAllByTopic(topic)
            resourceList.each {
                Readings reads = new Readings()
                reads.user = session.user
                reads.isRead = false
                reads.resource = it
                reads.save(flush: true, validate: true, failOnError: true)
            }
        }
        else{
            redirect(controller: "users",action:"home")
            flash.message="Sessoin out, Please Login!"
        }

    }

    def unsubscribe(){
        Topics topic=Topics.get(params.topic)
//        render topic.name
        Subscriptions subs=Subscriptions.findByUserAndTopic(session.user,topic)
        subs.delete(flush:true,validate:true,failOnError:true)

        List resourceList=Resources.findAllByTopic(topic)
        resourceList.each {
            Readings reads = Readings.findByUserAndResource(session.user,it)
            if(!(reads.isRead))
            reads.delete(flush:true,validate:true,failOnError:true)
        }

        redirect(controller:"dashboard",action:"dashboard")
        flash.message="Unsubscribed topic '${topic.name}' by '${topic.createdBy.username}'"
    }

    def modSeriousness(){
        Subscriptions subs=Subscriptions.get(params.subscription)
        subs.seriousness=params.newSerVal
        subs.save(flush:true,validate:true,failOnError:true)
        redirect(controller:"dashboard",action:"dashboard")
        flash.message="You are ${subs.seriousness} about ${subs.topic.name}"
    }

//    def createSubscriptionForTopicCreator(){
////    render(params.topic)
//        Subscriptions subscription=new Subscriptions()
//        subscription.seriousness="VERY_SERIOUS"
//        Topics topic=Topics.findByName(params.name)
//        subscription.topic=params.topic
//        subscription.user=session.user
//        subscription.save(flush:true,failOnError:true,validate:true)
//        redirect(controller: "Users", action: "dashboard")
//        flash.message = "Topic '${topic}' created Successfully"
//    }

}
