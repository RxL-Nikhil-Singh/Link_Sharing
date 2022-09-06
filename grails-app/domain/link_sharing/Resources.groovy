package link_sharing

class Resources {
    String description
    Date dateCreated
    Date lastUpdated

    static constraints = {

    }

    static hasMany = [reads:Readings, rates:Ratings]
    static belongsTo = [createdBy:Users, topic:Topics]

    static mapping = {
        tablePerHierarchy true
    }

}