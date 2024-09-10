<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Task</title>
<style>
body {
    background-color: #f0f8ff; /* Light pastel blue background */
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
}
div {
    margin: 0 auto;
    width: 300px;
    text-align: center;
}
h1 {
    font-size: 40px;
    color: #483D8B; /* Dark slate blue */
    text-align: center;
}
input[type="text"], textarea {
    width: 300px;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 5px;
    background-color: #FFE4E1; /* Light pink */
    margin-bottom: 10px;
}
textarea {
    height: 100px;
}
input[type="submit"] {
    width: 300px;
    height: 50px;
    background-color: #20B2AA; /* Light sea green */
    color: white;
    border: none;
    border-radius: 10px;
    cursor: pointer;
    box-shadow: 0px 0px 5px #333;
    margin-bottom: 10px;
}
input[type="submit"]:hover {
    background-color: #FF6347; /* Tomato color on hover */
    color: white;
    border: 1px solid #FF6347;
}
a {
    text-decoration: none;
}
a input[type="submit"] {
    width: 300px;
    background-color: #20B2AA; /* Light sea green */
}
</style>
</head>
<body>
<h1>Add New Task</h1>
<div>
    <form action="addtask" method="post">
        <label for="title">Task Title:</label><br>
        <input type="text" id="title" name="title" required><br>
        
        <label for="description">Task Description:</label><br>
        <textarea id="description" name="description" required></textarea><br>
        
        <input type="submit" value="Add Task"><br>
    </form>
    <a href="HOME.jsp"><input type="submit" value="HOME"></a>
</div>

<%!String message;%>
<%
message = (String)request.getAttribute("message");
%>
<div align="center">
    <%
    if (message != null) {
    %>
    <h4><%=message%></h4>
    <%
    }
    %>
</div>
</body>
</html>
