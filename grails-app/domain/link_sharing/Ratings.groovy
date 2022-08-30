package link_sharing

class Ratings {
//    RESOURCES resource
    Users user
    int score

    static constraints = {
        user blank:false,nullable: false
        resource blank:false, nullable:false
        score blank:false, nullable:false, min: 1,max: 5
    }
    static belongsTo = [user:Users, resource:Resources]
}
