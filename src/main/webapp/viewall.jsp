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
    background-color: #f0f8ff; /* Light pastel blue background */
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
    color: #483D8B; /* Dark slate blue */
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
    background-color: #4B0082; /* Dark purple */
    color: white;
}
td {
    background-color: #FFE4E1; /* Light pink for rows */
    color: #333;
}
button, input[type="submit"] {
    width: 200px;
    height: 50px;
    background-color: #20B2AA; /* Light sea green */
    color: white;
    border: none;
    border-radius: 10px;
    cursor: pointer;
    box-shadow: 0px 0px 5px #333;
    margin-top: 10px;
}
button:hover, input[type="submit"]:hover {
    background-color: #FF6347; /* Tomato color */
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
</tr>

<% for(List1 lists : list) { %>
<tr>
<td><%= lists.getTitle() %></td>
<td><%= lists.getDescription() %></td>
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
