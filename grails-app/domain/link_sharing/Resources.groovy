package link_sharing

class Resources {
//    TOPIC topic
    String description
    Date dateCreated
    Date lastUpdated

    static constraints = {
        createdBy nullable: false, blank:false
        description nullable: false, blank: false
    }

    static hasMany = [reads:Readings, ratings:Ratings]
    static belongsTo = [createdBy:Users, topic:Topics]
}
