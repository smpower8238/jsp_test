
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.* ,webtest.*"%>
<%
String id = request.getParameter("id");
String pass = request.getParameter("pass");
DB_Connect db = new DB_Connect();
if (db.Check_user_test(id, pass)) {
	SaveId.id = id;
	response.sendRedirect("./index.html");

} else {
%><script type="text/javascript">
		alert('로그인 실패');
		location.href = "index.html";
	</script>
<%
}
%>

