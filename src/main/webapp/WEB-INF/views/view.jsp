<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Board List</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 50%;
            margin: auto;
        }
        #list th, #list td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }
        #list th {
            background-color: #006bb3;
            color: white;
            text-align: center;
        }
        #list tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        #list tr:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
<h2>Board List</h2>
<table id="list">
    <c:forEach items="${list}" var="u">
        <tr>
            <th>Seq</th>
            <td>${u.seq}</td>
        </tr>
        <tr>
            <th>Title</th>
            <td>${u.title}</td>
        </tr>
        <tr>
            <th>Content</th>
            <td>${u.content}</td>
        </tr>
        <tr>
            <th>Writer</th>
            <td>${u.writer}</td>
        </tr>
        <tr>
            <th>Category</th>
            <td>${u.category}</td>
        </tr>
        <tr>
            <th>Regdate</th>
            <td>${u.regdate}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
