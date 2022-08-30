package link_sharing

import grails.gorm.transactions.Transactional

@Transactional
class USERSService {

    def registerValidation(params){
        String message
        if(params.confirmPassword==params.password) {
            Users user = new Users(params)
            user.save(flush: true, validate: true)
            render (view:"dashboard")
        }
        else{

        }
    }
}
