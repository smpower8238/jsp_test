<%@page import="webtest.DB_Connect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
DB_Connect db = new DB_Connect();
String id = request.getParameter("id");
String pass = request.getParameter("pass");
if (db.Check_sign(id) == false){
	db.Create_User(id, pass);
	%><script type="text/javascript">
	alert('회원가입 완료');
		location.href = "board.jsp";
	</script><%}
else {
%><script type="text/javascript">
	alert('아이디가 존재합니다!');
	location.href = "sign.html";
	</script>
<%
}
%>