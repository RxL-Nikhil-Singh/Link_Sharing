package link_sharing

class Users {
    String username
    String firstName
    String lastName

    String eMail
    String password
    static transients=['confirmPassword']
    String confirmPassword
    boolean activeStatus
    boolean admin
    Date dateCreated
    Date lastUpdated
    String photo


    static constraints = {
        username blank: false, unique: true
        firstName blank: false, nullable: false
        lastName blank: true, nullable: true

        password blank: false, nullable: false, minSize: 5, maxSize: 32

        eMail email: true,unique: true
        activeStatus blank: true, nullable: true
        admin blank: true, nullable: true
        photo nullable: true
    }

    static hasMany = [topic:Topics, subscription:Subscriptions, resource:Resources, reading:Readings, rating:Ratings]

}




