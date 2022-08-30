package link_sharing

import grails.gorm.services.Service

@Service(Subscriptions)
interface SUBSCRIPTIONService {

    Subscriptions get(Serializable id)

    List<Subscriptions> list(Map args)

    Long count()

    void delete(Serializable id)

    Subscriptions save(Subscriptions SUBSCRIPTION)

}