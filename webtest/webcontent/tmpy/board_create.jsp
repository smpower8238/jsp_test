<%@page import="webapp.*"%>
<%@page import="webtest.DB_Connect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("UTF-8"); %>
    <%
    String title = request.getParameter("title");
    String content = request.getParameter("boarder_text");
   
    DB_Connect db =new DB_Connect();
   
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%if(SaveId.id ==null) {%><script>alert("로그인 하세욧!"); location.href = "index.jsp";</script><%} else{ db.Create_board_test(SaveId.id, title, content);}%>
<script type="text/javascript">
	alert('글 등록 완료!');
	location.href = "index.jsp";
	</script>
</head>
<body>

</body>
</html>