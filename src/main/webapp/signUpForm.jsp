<%@page import="myWeb.MyDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="signUp.jsp" method="post">
    <table>
        <tr>
            <td>아이디</td>
            <td><input type="text" name="username"></td>
        </tr>
        <tr>
            <td>비밀번호</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td>전화번호</td>
            <td><input type="text" name="tell"></td>
        </tr>
    </table>    
    <input type="submit" value="등록"> 
    
</form>
</body>
</html>