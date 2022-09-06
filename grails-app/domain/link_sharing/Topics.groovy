package link_sharing

class Topics {

     String name
    Date dateCreated
    Date lastUpdated
    Enums.Visibility visibility

    static constraints = {
    }

    static belongsTo = [createdBy:Users]
    static hasMany = [subs:Subscriptions, resource:Resources]
}
