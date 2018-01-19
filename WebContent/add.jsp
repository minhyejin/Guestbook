<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>

<%

	request.setCharacterEncoding("UTF-8");
	GuestbookDao dao = new GuestbookDao();
	GuestbookVo vo;

	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");

	vo = new GuestbookVo (1, name, password, content, " " );
	dao.insert(vo);
	response.sendRedirect("list.jsp");

%>


