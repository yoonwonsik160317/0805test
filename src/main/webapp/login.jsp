<%@page import="myWeb.MyDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

MyDao dao = new MyDao();
request.setCharacterEncoding("UTF-8");
String username = request.getParameter("username");
String password = request.getParameter("password");
if (dao.checkLogin(username, password)) {
	
	Cookie loginCookie = new Cookie("username", username);
	loginCookie.setMaxAge(60*60);
	response.addCookie(loginCookie);
	out.println("<script type='text/javascript'>");
    out.println("alert('환영합니다, " + username + "!');");
    out.println("window.location.href = 'index.jsp';");
    out.println("</script>");
} else {
	out.println("<script type='text/javascript'>");
    out.println("alert('로그인 실패!');");
    out.println("window.location.href = 'index.jsp';");
    out.println("</script>");

}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>