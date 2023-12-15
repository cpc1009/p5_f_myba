<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<html>
<head>
    <title>정보 수정</title>
    <!-- Bootstrap 5 CSS link -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="bg-light">
<div class="container mt-5">
    <h1>정보 변경</h1>
    <form action="../editok" method="post">
        <input type="hidden" name="seq" value="${u.seq}"/>
        <div class="mb-3">
            <label for="title" class="form-label">Title:</label>
            <input type="text" class="form-control" id="title" name="title" value="${u.title}"/>
        </div>
        <div class="mb-3">
            <label for="writer" class="form-label">Writer:</label>
            <input type="text" class="form-control" id="writer" name="writer" value="${u.writer}" />
        </div>
        <div class="mb-3">
            <label for="content" class="form-label">Content:</label>
            <textarea class="form-control" id="content" name="content" rows="5">${u.content}</textarea>
        </div>
        <div class="mb-3">
            <label for="category" class="form-label">Category:</label>
            <input type="text" class="form-control" id="category" name="category" value="${u.category}"/>
        </div>
        <div class="mb-3">
            <input type="submit" class="btn btn-primary" value="Edit Post"/>
            <input type="button" class="btn btn-secondary" value="Cancel" onclick="history.back()"/>
        </div>
    </form>
</div>

<!-- Bootstrap 5 JS and Popper.js scripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-8W4aXqC9/WB8mdOZML6TGUnyU5yF6/RnREZw7LoG5GpZpZPd9GffMXKp4Vfa6JEM" crossorigin="anonymous"></script>

</body>
</html>
