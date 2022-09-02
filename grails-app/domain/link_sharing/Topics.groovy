package link_sharing

class Topics {

//    USERS createdBy
     String name
    Date dateCreated
    Date lastUpdated
    Enums.Visibility visibility

    static constraints = {
//        status inList: Visibility.values()*.id
        name nullable:false,blank:false,unique: true
        visibility nullable:false, blank:false

    }

    static belongsTo = [createdBy:Users]
    static hasMany = [subs:Subscriptions, resource:Resources]
}
