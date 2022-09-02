package link_sharing

class Readings {
    boolean isRead

    static constraints = {
        user blank:false,nullable: false
        resource blank:false, nullable:false
        isRead blank:false,nullable:false
    }
    static belongsTo = [user:Users, resource:Resources]
}
