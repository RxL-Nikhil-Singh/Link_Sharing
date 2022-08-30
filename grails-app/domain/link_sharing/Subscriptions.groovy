package link_sharing

class Subscriptions {
//    TOPIC topic
    Date dateCreated
    Enums.Seriousness seriousness

    static constraints = {
        dateCreated nullable: true
        topic nullable: false, blank:false
//        createdBy nullable: false, blank:false
//        seriousness nullable: false, blank:false
    }

    static belongsTo = [user:Users, topic:Topics]

}
