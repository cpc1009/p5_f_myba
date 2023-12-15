<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<html>
<head>
    <title>책 정보</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-8W4aXqC9/WB8mdOZML6TGUnyU5yF6/RnREZw7LoG5GpZpZPd9GffMXKp4Vfa6JEM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 50%;
            margin: auto;
            margin-top: 50px;
        }
        #list th, #list td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }
        #list th {
            background-color: #007BFF;
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
<div class="container">
    <h2 class="mt-4 mb-4">책 정보</h2>
    <table id="list" class="table table-bordered">
        <c:forEach items="${list}" var="u">
            <tr>
                <th scope="row">Seq</th>
                <td>${u.seq}</td>
            </tr>
            <tr>
                <th scope="row">Title</th>
                <td>${u.title}</td>
            </tr>
            <tr>
                <th scope="row">Content</th>
                <td>${u.content}</td>
            </tr>
            <tr>
                <th scope="row">Writer</th>
                <td>${u.writer}</td>
            </tr>
            <tr>
                <th scope="row">Category</th>
                <td>${u.category}</td>
            </tr>
            <tr>
                <th scope="row">Regdate</th>
                <td>${u.regdate}</td>
            </tr>
        </c:forEach>
    </table>
</div>

<!-- Bootstrap 5 JS and Popper.js scripts -->


</body>
</html>
