<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<html>
<head>
    <title>도서 추가</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" integrity="sha384-rbs5zH0voMF1J1LySBN7Xb8Fn/u9Id12WxEMuRE6BlhNQ8q2H2F9CIPDA" crossorigin="anonymous">
    <style>
        body {
            background-color: #4CAF50; /* Greenish background */
            color: white; /* White text */
        }

        .container {
            margin-top: 5%;
        }
    </style>
</head>
<body>
<div class="container">
    <h1 class="mb-4">도서 추가</h1>
    <form action="addok" method="post">
        <div class="mb-3">
            <label for="title" class="form-label">Title:</label>
            <input type="text" class="form-control" id="title" name="title" required/>
        </div>
        <div class="mb-3">
            <label for="writer" class="form-label">Writer:</label>
            <input type="text" class="form-control" id="writer" name="writer" required/>
        </div>
        <div class="mb-3">
            <label for="content" class="form-label">Content:</label>
            <textarea class="form-control" id="content" name="content" rows="5" required></textarea>
        </div>
        <div class="mb-3">
            <label for="category" class="form-label">Category:</label>
            <select class="form-control" id="category" name="category" required>
                <option value="" disabled selected hidden>Select a category</option>
                <option value="Philosophy">Philosophy</option>
                <option value="Religion">Religion</option>
                <option value="Social Science">Social Science</option>
                <option value="Natural Science">Natural Science</option>
                <option value="Technology">Technology</option>
                <option value="Art">Art</option>
                <option value="Language">Language</option>
                <option value="Literature">Literature</option>
                <option value="History">History</option>
            </select>
        </div>
        <div class="mb-3">
            <button type="button" class="btn btn-secondary" onclick="location.href='list'">Go to List</button>
            <button type="reset" class="btn btn-warning">Reset</button>
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form>
</div>

<!-- Bootstrap 5 JS and Popper.js scripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-8W4aXqC9/WB8mdOZML6TGUnyU5yF6/RnREZw7LoG5GpZpZPd9GffMXKp4Vfa6JEM" crossorigin="anonymous"></script>
</body>
</html>
