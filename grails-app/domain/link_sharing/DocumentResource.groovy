package link_sharing

class DocumentResource extends Resources{
    String filePath
    static constraints = {
        filePath nullable:true,blank:true
    }
}