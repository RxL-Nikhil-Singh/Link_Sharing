package link_sharing

class Ratings {
    int score=0

    static constraints = {
        score  min: 1,max: 5
    }
    static belongsTo = [user:Users, resource:Resources]
}
