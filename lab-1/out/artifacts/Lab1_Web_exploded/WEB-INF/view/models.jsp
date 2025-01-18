<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 1/6/2025
  Time: 5:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Models</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
<h1>CV-Models Management</h1>

<!-- Форма для добавления новой книги -->
<h3>Add a New CV-Models</h3>
<form action="models" method="post">
    <input type="hidden" name="action" value="save">
    Name: <input type="text" name="name"><br>
    Release: <input type="text" name="release"><br>
    Score: <input type="text" name="score"><br>
    <button type="submit">Save CV-Model</button>
</form>

<h2>Models List</h2>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Release</th>
        <th>Score</th>
    </tr>
    <jsp:useBean id="models" scope="request" type="java.util.List"/>
    <c:forEach var="model" items="${models}">
        <tr>
            <td>${model.id}</td>
            <td>${model.name}</td>
            <td>${model.release}</td>
            <td>${model.score}</td>
            <td>
                <form action="models" method="post" style="display:inline;">
                    <input type="hidden" name="action" value="delete">
                    <input type="hidden" name="id" value="${model.id}">
                    <button type="submit">Delete</button>
                </form>
                <form action="models" method="get" style="display:inline;">
                    <input type="hidden" name="action" value="edit">
                    <input type="hidden" name="id" value="${model.id}">
                    <button type="submit">Update</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>