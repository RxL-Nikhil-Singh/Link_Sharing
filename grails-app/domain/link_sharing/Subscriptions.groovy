package link_sharing

class Subscriptions {
//    TOPIC topic
    Date dateCreated
    Enums.Seriousness seriousness

    static constraints = {
        dateCreated nullable: true
        topic nullable: false, blank:false
        seriousness nullable: true
        user nullable:true
        topic nullable:true
    }

    static belongsTo = [user:Users, topic:Topics]

}
