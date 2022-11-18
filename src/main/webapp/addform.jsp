<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="./assets/css/sticky-footer-navbar.css" rel="stylesheet">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel =stylesheet" href="member.css">
</head>

<body>
<header class="p-3 bg-dark text-white">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a href="list.jsp" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none fw-bold">
                Isacc Kim
            </a>

            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <li><a href="#" class="nav-link px-2 text-secondary"></a></li>
                <li><a href="#" class="nav-link px-2 text-white"></a></li>
                <li><a href="#" class="nav-link px-2 text-white"></a></li>
                <li><a href="#" class="nav-link px-2 text-white"></a></li>
                <li><a href="#" class="nav-link px-2 text-white"></a></li>
            </ul>

            <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
                <input type="search" class="form-control form-control-dark" placeholder="Search..." aria-label="Search">
            </form>

            <div class="text-end">
                <button type="button" class="btn btn-outline-light me-2">Login</button>
                <button type="button" class="btn btn-warning">Sign-up</button>
            </div>
        </div>
    </div>
</header>
<h1>Add New Post</h1>
<form action="add_ok.jsp" method="post" enctype="multipart/form-data">
<table>
<tr><td>User ID:</td><td><input type="text" name="userid"/></td></tr>
    <tr><td>Password:</td><td><input type="text" name="password"/></td></tr>
<tr><td>Name:</td><td><input type="text" name="username"/></td></tr>
    <tr><td>Photo:</td><td><input type="file" name="photo"/></td></tr>
    <tr><td>Email:</td><td><input type="text" name="email"/></td></tr>
<tr><td>Detail:</td><td><textarea cols="50" rows="5" name="detail"></textarea></td></tr>
<tr><td><a href="list.jsp">View All Records</a></td><td align="right"><input type="submit" value="Add Post"/></td></tr>
</table>
    <button type="button" onclick="location.href = list.jsp">목록 보기</button>
    <button type="submit">회원 추가</button>
</form>

</body>
</html>