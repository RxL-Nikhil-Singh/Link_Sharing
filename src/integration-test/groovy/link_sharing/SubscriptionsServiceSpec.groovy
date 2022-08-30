package link_sharing

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class SubscriptionsServiceSpec extends Specification {

    SUBSCRIPTIONService SUBSCRIPTIONService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new SUBSCRIPTION(...).save(flush: true, failOnError: true)
        //new SUBSCRIPTION(...).save(flush: true, failOnError: true)
        //SUBSCRIPTION SUBSCRIPTION = new SUBSCRIPTION(...).save(flush: true, failOnError: true)
        //new SUBSCRIPTION(...).save(flush: true, failOnError: true)
        //new SUBSCRIPTION(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //SUBSCRIPTION.id
    }

    void "test get"() {
        setupData()

        expect:
        SUBSCRIPTIONService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Subscriptions> SUBSCRIPTIONList = SUBSCRIPTIONService.list(max: 2, offset: 2)

        then:
        SUBSCRIPTIONList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        SUBSCRIPTIONService.count() == 5
    }

    void "test delete"() {
        Long SUBSCRIPTIONId = setupData()

        expect:
        SUBSCRIPTIONService.count() == 5

        when:
        SUBSCRIPTIONService.delete(SUBSCRIPTIONId)
        sessionFactory.currentSession.flush()

        then:
        SUBSCRIPTIONService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Subscriptions SUBSCRIPTION = new Subscriptions()
        SUBSCRIPTIONService.save(SUBSCRIPTION)

        then:
        SUBSCRIPTION.id != null
    }
}
