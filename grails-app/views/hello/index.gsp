<%--
  Created by IntelliJ IDEA.
  User: james
  Date: 4/11/22
  Time: 1:07 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Testing Grails</title>
    <asset:stylesheet src="style.css"/>
    <asset:stylesheet src="bootstrap.css" />
</head>

<body>
    <main>
        <form action="/hello/addTodo" method="POST">
            <legend>Todo List</legend>
            <div class="form-group">
                <label for="todo">New Todo</label>
                <input class="form-control" id="todo" value="<%= id%>" type="text" name="todo" placeholder="Todo" required>
            </div>
            <button class="btn btn-primary">Add TODO</button>
        </form>

        <p>List of Todos</p>
        <ul class="list-group">
            <% todolist.each{todo -> %>
            <li class="list-group-item d-flex justify-content-between">
                <%= todo.todo %>
                <button class="btn btn-danger">Delete</button>
            </li>

            <% } %>
        </ul>
    </main>
    <asset:javascript src="index.js" />
</body>
</html>
