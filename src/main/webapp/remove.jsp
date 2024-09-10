<%@page import="todolist.object.List1"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" />
<title>To-Do List</title>
<style type="text/css">
body {
    background-color: #f0f8ff;
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
}
div {
    margin: 0 auto;
    width: 80%;
    max-width: 600px;
    text-align: center;
}
h1 {
    font-size: 40px;
    color: #483D8B;
    margin-bottom: 20px;
}
table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
}
th, td {
    padding: 15px;
    border: 1px solid #ddd;
}
th {
    background-color: #4B0082;
    color: white;
}
td {
    background-color: #FFE4E1;
    color: #333;
}
button, input[type="submit"] {
    width: 200px;
    height: 50px;
    background-color: #20B2AA;
    color: white;
    border: none;
    border-radius: 10px;
    cursor: pointer;
    box-shadow: 0px 0px 5px #333;
    margin-top: 10px;
}
button:hover, input[type="submit"]:hover {
    background-color: #FF6347;
    color: white;
    border: 1px solid #FF6347;
}
</style>
</head>
<body>
<% @SuppressWarnings("unchecked")
List<List1> list = (List<List1>) request.getAttribute("list");
if(list != null && list.size() > 0) {
%>
<div>
<h1>TO-DO List</h1>
<table>
<tr>
<th>Title</th>
<th>Description</th>
<th>Remove</th>
</tr>

<% for(List1 lists : list) { %>
<tr>
<td><%= lists.getTitle() %></td>
<td><%= lists.getDescription() %></td>
<td>
    
    <form action="removetask" method="post">
        <input type="hidden" name="title" value="<%= lists.getTitle() %>">
        <input type="submit" value="Remove">
    </form>
</td>
</tr>
<% } %>

</table>
<form action="HOME.jsp"><button type="submit">HOME</button></form>
</div>
<% } else { %>
<div>
<h1>No To-Do Items Found</h1>
<form action="HOME.jsp"><button type="submit">HOME</button></form>
</div>
<% } %>

</body>
</html>
