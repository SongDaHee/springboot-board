<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>dhsong-board/home</title>
    <link rel="stylesheet" href="https://bootswatch.com/4/minty/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://bootswatch.com/4/minty/bootstrap.css"/>
    <link rel="stylesheet" href="https://bootswatch.com/4/minty/_variables.scss"/>
    <link rel="stylesheet" href="https://bootswatch.com/4/minty/_bootswatch.scss"/>
    <script src="/webjars/jquery/3.3.1/dist/jquery.min.js"></script>
    <script src="/webjars/bootstrap/3.3.4/dist/js/bootstrap.min.js"></script>

    <style>
        .back_img{
            background-image: url("/board/img/home.png");
            backgroound-repeat: no-repeat;
            top:0;
            left:0;
            right:0;
            bottom:0;
            position: absolute;
            width: 100%;
            height: 100%;
            z-index:-1;
            padding-top: 10%;
        }
        .container{
            padding-left: 5%;
            padding-right:5%;
        }
        .pagination{
            justify-content: center;
        }

    </style>
</head>

<body>

<nav class="navbar navbar-expand-sm navbar-fixed-top navbar-dark bg-primary">
    <a class="navbar-brand" href="/home">DHSONG's BOARD</a>
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href="/login">/Login/</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/signup">/Signup/</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/list">/List/</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/logout">/Logout/</a>
        </li>
    </ul>
</nav>

<div class="back_img">
    <div class="container">
        <form method="post" action="/list/delete">
    <div class="jumbotron">
    <table class="table table-hover">
        <thead>
        <tr>
            <th scope="col">번호</th>
            <th scope="col">제목</th>
            <th scope="col">작성자</th>
            <th scope="col">날짜</th>
        </tr>
        </thead>
        <tbody>
        <#list list as item>
        <tr class="table-primary">
            <td>
            <input type="checkbox" name="checknum" value="${item.num}"/>${item.num}</td>
            <td onclick=location.href='http://localhost:8080/list/view/${item.num}'>${item.title}</td>
            <td onclick=location.href='http://localhost:8080/list/view/${item.num}'>${item.user}</td>
            <td onclick=location.href='http://localhost:8080/list/view/${item.num}'>${item.date}</td>
        </tr>
        </#list>
        </tbody>
        </table>

            <button type="button" class="btn btn-primary"
                    onclick="location.href='http://localhost:8080/list/write'">글쓰기</button>
            <button type="submit" class="btn btn-primary">삭제</button>
        </form>
    </div>
        </div>
    </div>

</body>
</html>