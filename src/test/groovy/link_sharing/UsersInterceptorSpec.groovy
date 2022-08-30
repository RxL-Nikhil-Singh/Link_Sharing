package link_sharing

import grails.testing.web.interceptor.InterceptorUnitTest
import spock.lang.Specification

class UsersInterceptorSpec extends Specification implements InterceptorUnitTest<USERSInterceptor> {

    def setup() {
    }

    def cleanup() {

    }

    void "Test USERS interceptor matching"() {
        when:"A request matches the interceptor"
            withRequest(controller:"USERS")

        then:"The interceptor does match"
            interceptor.doesMatch()
    }
}
