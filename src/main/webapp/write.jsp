<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

Cookie[] cookies = request.getCookies();
String username = null;
boolean flag = false;

if(cookies != null) {
	for (Cookie cookie : cookies) {
		if(cookie.getName().equals("username")) {
			username = cookie.getValue();
			flag = true;
			break;
		}
	}
}

if(flag) {
%>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        table { width:680px; text-align:center; }
        th    { width:100px; background-color:cyan; }
        input[type=text], textarea { width:100%; }
    </style>
</head>
<body>

<form method="post" action="insert.jsp">
    <table>
        <tr>
            <th>제목</th>
            <td><input type="text" name="title"  maxlength="80"
                       value="">
            </td>
        </tr>
        <tr>
            <th>작성자</th>
            <td><%=username %>
            </td>
        </tr>
        <tr>
            <th>내용</th>
            <td><textarea name="content" rows="10"></textarea>
            </td>
        </tr>
    </table>

    <br>
    <input type="submit" value="저장">
    <input type="button" value="취소" onclick="history.back()">
</form>

</body>
</html>
<%
} else{
	 out.println("<script type='text/javascript'>");
     out.println("alert('로그인 하세요');");
     out.println("window.location.href = 'boardForm.jsp';");
     out.println("</script>");
 }
%>

