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
        resource.save(flush:true,validate:true,failOnError:true)


        List subscriberList=Subscriptions.findAllByTopic(topicc).user
        subscriberList.each{
            Readings read=new Readings()
            read.isRead=false
            read.user=it
            read.resource=resource
            read.save(flush:true,failOnError:true,validate:true)
        }

        redirect(controller: "dashboard", action: "dashboard")
        flash.message = "Link Resource Successfully Added"
    }


    def saveDocument(def pathTillAsset, def file) {
            String folder = pathTillAsset + "DocumentResources/"

            String orgName = (Math.random()*10000000).toInteger().toString()
            String extension = file.getOriginalFilename().split("\\.")[1]

            String docPath = folder + orgName+"."+extension;
            File dest = new File(docPath);
            file.transferTo(dest);
            return orgName+"."+extension
    }

    def createDocumentResource(){
        Resources resource=new DocumentResource()
        resource.description = params.description
        String pathTillAsset="/home/lt-nikhilks/Documents/Grails/Link_Sharing/grails-app/assets/"
        resource.filePath = saveDocument(pathTillAsset, params.docFile)


        Topics topicc=Topics.findByName(params.topic)
        resource.topic=topicc
        resource.createdBy=session.user

        resource.addToReads(user: session.user, resource: resource, isRead:true)
        resource.save(flush:true,validate:true,failOnError:true)

        List subscriberList=Subscriptions.findAllByTopic(topicc).user
        subscriberList.each{
            Readings read=new Readings()
            read.isRead=false
            read.user=it
            read.resource=resource
            read.save(flush:true,failOnError:true,validate:true)
        }

        redirect(controller: "dashboard", action: "dashboard")
        flash.message = "Document Resource Successfully Added"
    }


    def post(){
        Resources resource=Resources.get(params.resource)
        Integer size=(resource.description.length()<50)?resource.description.length():50

        render (view:"post",model:[user:session.user,resource:resource])
        flash.message="${resource.description.substring(0,size)}..."
    }

}
