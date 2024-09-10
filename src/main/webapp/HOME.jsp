<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
body {
    background-color: #f0f8ff; /* Light pastel blue background */
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
}
div {
    margin-left: auto;
    margin-right: auto;
    width: 300px;
    text-align: center;
}
h1 {
    text-align: center;
    font-size: 40px;
    color: #483D8B; /* Dark slate blue */
}
a {
    display: inline-block;
    width: 300px;
    height: 50px;
    line-height: 50px;
    background-color: #20B2AA; /* Light sea green */
    color: white;
    text-decoration: none;
    border-radius: 10px;
    box-shadow: 0px 0px 5px #333;
    border: 1px solid #20B2AA; /* Matching border color */
    margin-bottom: 10px;
    font-size: 18px;
}
a:hover {
    background-color: #FF6347; /* Tomato color on hover */
    color: white;
    border: 1px solid #FF6347;
}
</style>
</head>
<body>
<h1>TO-DO List</h1>
<div>
    <a href="addtask.jsp">ADD TASK</a> <br>
    <a href="viewall">VIEW ALL TASK</a> <br>
    <a href="update.jsp">UPDATE TASK</a> <br>
    <a href="remove">Remove TASK</a> <br>
    
</div>
</body>
</html>
