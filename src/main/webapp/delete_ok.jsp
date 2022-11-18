<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.dao.MemberDAO"%>
<%@page import="com.example.vo.MemberVO"%>
<%@ page import="com.example.dao.FileUpload" %>
<%
	String sid = request.getParameter("id");
	if (sid != ""){
		int id = Integer.parseInt(sid);
		MemberDAO MemberDAO = new MemberDAO();
		String filename = MemberDAO.getPhotoFilename(id);
		MemberVO vo = new MemberVO();
		if(filename != null) FileUpload.deleteFile(request,filename);
		MemberDAO.deleteMember(id);
	}
	response.sendRedirect("list.jsp");
%>