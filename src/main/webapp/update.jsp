
<%@page import="myWeb.BoardDTO"%>
<%@page import="myWeb.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Cookie[] cookies = request.getCookies();
String username = null;

if(cookies != null) {
	for (Cookie cookie : cookies) {
		if(cookie.getName().equals("username")) {
			username = cookie.getValue();
			break;
		}
	}
}

request.setCharacterEncoding("UTF-8");
String num = request.getParameter("num");
String title = request.getParameter("title");
String writer = username;
String content = request.getParameter("content");
BoardDAO dao = new BoardDAO();
BoardDTO dto = new BoardDTO(Integer.parseInt(num), writer, title, content, null, 0);
dao.updateBoard(dto);
response.sendRedirect("boardForm.jsp");
%>    
