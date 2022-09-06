package link_sharing

class Readings {
    boolean isRead=false

    static constraints = {
    }
    static belongsTo = [user:Users, resource:Resources]
}
