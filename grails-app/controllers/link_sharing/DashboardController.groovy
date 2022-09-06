package link_sharing

class DashboardController {

    static defaultAction = "dashboard"
    def dashboard() {
        if (session.user) {
            List subscribedTopicList = Subscriptions.findAllByUser(session.user).topic
            List inboxList=new ArrayList()

            if(subscribedTopicList) {
                List subscribedResourceList = Resources.findAllByTopicInList(subscribedTopicList, [sort: "dateCreated", order: "desc"])

                subscribedResourceList.each {
                    Readings read = Readings.findByUserAndResource(session.user, it)
                    if (read)
                        if (!(read.isRead))
                            inboxList.push(it.id)
                }
            }

                List finalInbox=Resources.getAll(inboxList)
                Resources x=new DocumentResource()
                        
            List subscriptionList=Subscriptions.findAllByUser(session.user,[sort:"dateCreated",order:"desc"])

            List publicTopicList=Topics.findAllByVisibility('PUBLIC')
            Integer topicCount=Topics.countByCreatedBy(session.user)
//            Integer subsCount=Subscriptions.countByUser(session.user)

            Map M=new HashMap()
            publicTopicList.each{
                    M.put(it.id,it.resource.size())
            }
            M=M.sort{it.value}

            Integer size=(M.size()<5)?M.size():5
            List trendingTopics= Topics.getAll(M.keySet()).reverse().subList(0,size)
//            List subsTrendingTopics=Subscriptions.findAllByTopicInListAndUser(trendingTopics,session.user)
//            println trendingTopics.size()+" "+subsTrendingTopics.size()

            render(view: "dashboard", model: [user: session.user,subscriptionList:subscriptionList,
                                              trendingTopics :trendingTopics,
                                              topicCount:topicCount,finalInbox:finalInbox])
            if (flash.message == null)
                flash.message = "${session.user.firstName} logged in"
        }

        else{
            redirect(controller:"users", action: "home")
            flash.message = "Session out ⌛, Please Login!"
        }
    }
}
