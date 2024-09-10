<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Task</title>
<style>
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
input[type="text"], textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 5px;
    background-color: #FFE4E1; /* Light pink */
    margin-bottom: 15px;
}
textarea {
    height: 100px;
}
a,input[type="submit"] {
    width: 100%;
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
    background-color: #FF6347; /* Tomato color */
    color: white;
    border: 1px solid #FF6347;
}
a {
    display: inline-block;
    text-decoration: none;
}
a input[type="submit"] {
    background-color: #20B2AA; /* Light sea green */
}
h1{
text-align: center;
}
</style>
</head>
<body>
<h1>Update Task</h1>
<div>
    <form action="update" method="post">
        <label for="title">Task Title Which You Want to Update:</label><br>
        <input type="text" id="title" name="title" required><br>
        
        <label for="description">Enter New Task Description:</label><br>
        <textarea id="description" name="description" required>${todo.description}</textarea><br>
        
        <input type="submit" value="Update Task">
    </form>
    <a href="HOME.jsp"><input type="submit" value="HOME"></a>
</div>
</body>
</html>
