package helloworld

class HelloController {

    def index() {
        [todolist: Todo.getAll()]
    }

    def addTodo() {
        def newTodo = new Todo(todo: request.getParameter('todo'), start: new Date())
        newTodo.save()
        redirect(action: 'index')
    }

    def deleteTodo() {
        Todo.delete
    }
}
