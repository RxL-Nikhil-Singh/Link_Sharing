package link_sharing

import org.springframework.web.multipart.MultipartFile

class ResourcesController {
//    static scaffold = Resources

    def createLinkResource(){
        Resources resource=new LinkResource()
        resource.description=params.description
        resource.url=params.url
        resource.createdBy=session.user
        Topics topicc=Topics.findByName(params.topic)
//        render topicc.name
        resource.topic=topicc

        resource.addToReads(user: session.user, resource: resource, isRead:true)
        resource.addToRates(user:session.user,resource: resource,score: 5)
        resource.save(flush:true,validate:true,failOnError:true)
        redirect(controller: "Users", action: "dashboard")
        flash.message = "Link Resource Successfully Added"
    }


    def savePhoto(MultipartFile file) {
        String orgName = file.getOriginalFilename();
        if(!(orgName.contains('.')))
            return null
//        render (orgName)
        String fullPath = request.getServletContext().getRealPath("/");
        String filePath = fullPath.substring(0, fullPath.indexOf("Link_Sharing") + "Link_Sharing".length())
        String assets = filePath + "/grails-app/assets/"
        String folder = assets + "Document Resource/"


//        String extension = orgName.split("\\.")[1]
//        String photoName = username
//            if (session.user) {
//                photoName = session.user.email.split("\\.")[0]
////                photoName = session.user.username
//            }
        String docPath = folder + orgName
//        + "." + extension
//        render docPath
        File dest = new File(docPath);
        file.transferTo(dest);
        return orgName
    }

    def createDocumentResource(){
        Resources resource=new DocumentResource()
        resource.description=params.description

//        resource.filePath=saveDocumentResource( params.docFile)

        resource.createdBy=session.user
        Topics topicc=Topics.findByName(params.topic)
//        render topicc.name
        resource.topic=topicc

        resource.addToReads(user: session.user, resource: resource, isRead:true)
        resource.addToRates(user:session.user,resource: resource,score: 5)
        resource.save(flush:true,validate:true,failOnError:true)
        redirect(controller: "Users", action: "dashboard")
        flash.message = "Document Resource Successfully Added"
    }
}
