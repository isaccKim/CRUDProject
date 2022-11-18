<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.dao.MemberDAO, com.example.vo.MemberVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix= "fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free Member</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
	<style>
		#list {
			font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
			border-collapse: collapse;
			width: 100%;
		}
		#list td, #list th {
			border: 1px solid #ddd;

			text-align:center;
		}
		#list tr:nth-child(even){background-color: #f2f2f2;}
		#list tr:hover {background-color: #ddd;}
		#list th {
			padding-top: 12px;
			padding-bottom: 12px;
			text-align: center;
			color: darkslateblue;
		}
	</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='delete_ok.jsp?id=' + id;
	}
</script>
</head>
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
<body>
<div class="text-center my-3"><h3>Member List</h3></div>
<div class="d-flex justify-content-end mb-3">
	<a href="addform.jsp" class="btn btn-primary" role="button" aria-pressed="true" style="margin-right: 30px">Add </a>
</div>
<%
	MemberDAO memberDAO = new MemberDAO();
	List<MemberVO> list = memberDAO.getList();
	request.setAttribute("list",list);
%>

<table class="table">
	<tbody>
	<tr class="align-middle">
	<th>NO</th>
	<th>Id</th>
	<th>Photo</th>
	<th>Username</th>
	<th>Email</th>
	<th>Regdate</th>
	<th>Detail</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>
<c:forEach items="${list}" var="u" varStatus="status">
	<tr>
		<td>${fn:length(list)-status.index}</td>
		<td>${u.getUserid()}</td>
		<td><c:if test ="${u.getPhoto() ne ''}"><img src="${pageContext.request.contextPath}/upload/${u.getPhoto()}" class = "photo" width="30" height="30"></c:if></td>

		<td>${u.getUsername()}</td>
		<td>${u.getEmail()}</td>
		<td>${u.getRegdate()}</td>
		<td>${u.getDetail()}</td>
<%--		<td><a href="editform.jsp?id=${u.getSid()}">Edit</a></td>--%>
<%--		<td><a href="javascript:delete_ok('${u.getSid()}')">Delete</a></td>--%>
		<td><a href="editform.jsp?id=${u.getSid()}"><i class="bi bi-pencil-square imo"></i></a></td>
		<td><a href="javascript:delete_ok('${u.getSid()}')"><i class="bi bi-trash imo"></i></a></td>
	</tr>
</c:forEach>
	</tbody></table>
</body>
</html>