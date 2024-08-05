<%@page import="myWeb.BoardDTO"%>
<%@page import="java.util.List"%>
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
%>
<%
BoardDAO dao = new BoardDAO();
List<BoardDTO> list = dao.getBoardList();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>기업형 웹 페이지</title>
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <script src="https://kit.fontawesome.com/c47106c6a7.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css">
    <script src="js/ie.js"></script>
</head>

<body>

    <header>
        <div class="inner">
            <h1><a href="#">BOARD</a></h1>

            <ul id="gnb">
                <li><a href="#">DEPARTMENT</a></li>
                <li><a href="#">GALLERY</a></li>
                <li><a href="#">YOUTUBE</a></li>
                <li><a href="#">COMMUNITY</a></li>
                <li><a href="#">LOCATION</a></li>
                <li><a href="boardForm.jsp">BOARD</a>
            </ul>

            <ul class="util">
                <li><a href="#">Contact</a></li>
                
<% 
if (username != null) {
%>
				<li><a> <%=username %></a>
				<li><a href="logout.jsp">logout</a>
<%
} else {
%>
				<li><a href="loginForm.jsp"> Login</a>
<%
}
%>
                <li><a href="#">Help</a></li>
                <li><a href="#">Join</a></li>
                <li><a href="#">Sitemap</a></li>
            </ul>
        </div>
    </header>


	
	<style>
		table  	{width:680px; text-align:center; }
        th        { background-color:gray; }
        
        .num      { width: 80px; }
        .title    { width:230px; }
        .writer   { width:100px; }
        .regtime  { width:180px; }
                
        a:link    { text-decoration:none; color:blue; }
        a:visited { text-decoration:none; color:gray; }
        a:hover   { text-decoration:none; color:red;  }
    </style>
</head>
<body>

<table>
    <tr>
        <th class="num"    >번호    </th>
        <th class="title"  >제목    </th>
        <th class="writer" >작성자  </th>
        <th class="regtime">작성일시</th>
        <th                >조회수  </th>
    </tr>
<%
for (BoardDTO dto : list) {
%>
    <tr>
        <td><%=dto.getNum() %></td>
        <td style="text-align:left;">
            <a href="view.jsp?num=<%=dto.getNum() %>"><%=dto.getTitle() %></a>
        </td>
        <td><%=dto.getWriter() %></td>
        <td><%=dto.getRegtime() %></td>
        <td><%=dto.getHits() %></td>
    </tr>
<%
}
%>
</table>

<br>
<input type="button" value="글쓰기" onclick="location.href='write.jsp'">
	

    <footer>
        <div class="inner">
            <div class="upper">
                <h1>DCODELAB</h1>
                <ul>
                    <li><a href="#">Policy</a></li>
                    <li><a href="#">Terms</a></li>
                    <li><a href="#">Family Site</a></li>
                    <li><a href="#">Sitemap</a></li>
                </ul>
            </div>

            <div class="lower">
                <address>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Quas, facere.<br>
                    TEL : 031-111-1234 C.P : 010-1234-5678
                </address>
                <p>
                    2020 DOCDELAB &copy; copyright all right reserved.
                </p>
            </div>
        </div>
    </footer>




</body>

</html>