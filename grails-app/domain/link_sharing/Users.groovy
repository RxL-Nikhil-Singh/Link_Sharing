package link_sharing

class Users {
    String username
    String firstName
    String lastName

    String eMail
    String password
    static transients=['confirmPassword']
    String confirmPassword
    boolean activeStatus=true
    boolean admin=false
    Date dateCreated
    Date lastUpdated
    String photo


    static constraints = {
        username blank: false, unique: true
        lastName blank: true, nullable: true

        password blank: false, nullable: false, minSize: 5, maxSize: 32,validator: {
            boolean smallCase=false,upperCase=false,num=false
            for(i in 0..(it.size()-1))
            {
                if(it[i]>='a' && it[i]<='z')
                    smallCase=true;
                if(it[i]>='A' && it[i]<='Z')
                    upperCase=true;
                if(it[i]>='0' && it[i]<='9')
                    num=true;
            }
            (num && upperCase && smallCase)
        }

        eMail email: true,unique: true
        photo nullable: true
    }

    static hasMany = [topic:Topics, subscription:Subscriptions, resource:Resources, reading:Readings, rating:Ratings]

}




