<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <style>
        body{
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h1 {
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th,td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ccc;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover{
            background-color: #e0e0e0;
        }

        .button {
            display: inline-block;
            background-color: #4CAF50;
            color: #fff;
            padding: 8px 16px;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        .button:hover {
            background-color: #45a049;
        }

        a.button {
            margin-bottom: 10px;
        }

        .image-container {
            width: 200px;
            height: 200px;
            border: 1px solid #ccc;
            border-radius: 5px;
            overflow: hidden;
        }

        .image-container img{
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

    </style>
</head>
<body>
<h1>Product Form</h1>
<c:choose>
    <c:when test="$(empty product.id)">
        <form method="POST" action="products?action=create" enctype="multipart/form-data">
            <form method="POST" action="products?action=create">
            <label for="name">Name:</label>
            <input type="text" id= "name" name= "name">
            <br><br>
            <label for="price">Price: </label>
            <input type="text" id="price" name="price">
            <br><br>

            <label for="image">Image:</label>
            <input type="file" id="image" name="image">
            <br><br>

            <input type="submit" value="Create">
            <a class="button" href="products">Cancel</a>
        </form>
</c:when>
<c:otherwise>
<form method= "POST" action="products?action=update" enctype="multipart/form-data">
    <form method="POST" action="products?action=update">
    <input type="hidden" name="id" value="${product.id}">
    <Label for="name">Name:</label>
    <input type="text" id="name" name= "name" value= "${product.name}">
    <br><br>
    <label for="price">Price:</label>
    <input type="text" id="price" name="price" value="${product.price}">
    <br><br>

    <label for="image">Image:</label>
    <input type="file" id="image" name="image">
    <br><br>


    <input type="submit" value="Update">
    <a class="button" href="products">Cancel</a>
</form>
<form method="POST" action="products?action=delete">
    <input type="hidden" name="id" value="${product.id}">
    <input class="button" type="submit" value="Delete">
</form>
</c:otherwise>

</c:choose>
</body>
</html>