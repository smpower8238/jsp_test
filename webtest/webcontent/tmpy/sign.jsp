<%@page import="webtest.DB_Connect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
DB_Connect db = new DB_Connect();
String id = request.getParameter("id");
String pass = request.getParameter("pass");
String mail = request.getParameter("mail");
String name = request.getParameter("name");
String message = request.getParameter("message");

if (db.Check_sign(id) == false){
	db.Create_User_test(id, pass, mail, name, message);
	%><script type="text/javascript">
	alert('회원가입 완료');
		location.href = "index.html";
	</script><%}
else {
%><script type="text/javascript">
	alert('아이디가 존재합니다!');
	location.href = "index.html";
	</script>
<%
}
%>