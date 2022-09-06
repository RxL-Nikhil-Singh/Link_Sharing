package link_sharing

class Subscriptions {
    Date dateCreated
    Enums.Seriousness seriousness

    static constraints = {
    }

    static belongsTo = [user:Users, topic:Topics]

}
