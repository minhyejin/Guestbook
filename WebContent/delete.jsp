<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestbookDao"%>

<%
	int no = Integer.valueOf(request.getParameter("no"));
	String password = request.getParameter("password");
	
	GuestbookDao dao = new GuestbookDao();
	dao.delete(no, password);
	
	System.out.println(no + " " + password);
	
	response.sendRedirect("list.jsp");
%>