<%@page import="myWeb.BoardDTO"%>
<%@page import="myWeb.BoardDAO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Cookie[] cookies = request.getCookies();
String username = null;

if (cookies != null) {
	for (Cookie cookie : cookies) {
		if(cookie.getName().equals("username")) {
			username = cookie.getValue();
			break;
		}
	}
}
request.setCharacterEncoding("UTF-8");
String title = request.getParameter("title");
String writer = username;
String content = request.getParameter("content");
BoardDAO dao = new BoardDAO();
BoardDTO dto = new BoardDTO(0, writer, title, content, null, 0);
dao.insertBoard(dto);
response.sendRedirect("boardForm.jsp");
%>