<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.example.dao.MemberDAO, com.example.vo.MemberVO"%>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="./assets/css/sticky-footer-navbar.css" rel="stylesheet">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<header class="p-3 bg-dark text-white">
	<div class="container">
		<div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
			<a href="list.jsp" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none fw-bold">
				Isacc Kim
			`</a>

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
<body>

<%
	MemberDAO memberDAO = new MemberDAO();
	String id = request.getParameter("id");
	System.out.println(id);
	MemberVO u = memberDAO.getOne(Integer.parseInt(id));
	request.setAttribute("vo",u);
%>
<h1>Edit Form</h1>
<form action="edit_ok.jsp" method="post" enctype="multipart/form-data">
<input type="hidden" name="sid" value="${vo.getSid()}"/>
<table id ="edit">
	<tr><td>User ID</td><td><input type="text" name="userid" value="${vo.getUserid()}" disabled/></td></tr>
	<tr><td>Name</td><td><input type="text" name="username" value="${vo.getUsername()}"/></td></tr>
<tr>
	<td>Photo</td><td><input type="file" name="photo" value="${vo.getPhoto()}" />
	 <c:if test ="${vo.getPhoto() ne ''}"><br/><img src="${pageContext.request.contextPath}/upload/${vo.getPhoto()}" class = "photo" width="30" height="30"></c:if></td>
</tr>
	<tr><td>Email:</td><td><input type="text" name="email" value="${vo.getEmail()}" />
<tr><td>Detail:</td><td><textarea cols="50" rows="5" name="detail">${ vo.getDetail()}</textarea></td></tr>
<tr>
	<td colspan="2"><input type="submit" value="Edit Post"/>
<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
</table>
</form>

</body>
</html>