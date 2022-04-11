package helloworld

import grails.rest.*;

@Resource(uri='/todo')
class Todo {
    String todo
    Date start

    static constraints = {
        todo blank: false
    }
}
