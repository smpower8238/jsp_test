<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α��� ��~</title>
<script>window.onload = function() {
          // ������ ��ü�� ���� �̺�Ʈ ���� ����
          document.getElementById("signin").onclick = function() {
        	  location.href="sign.html"
          }
}
</script>
</head>
<body>
	<form action="login.jsp" method="post">
		���̵�:<input type="text" name="id" maxlength="8">
		<p>
			���:<input type="text" name="pass" maxlength="8">
		<p>
			<input type="submit" value="�α���">
		<p>
	</form>
	<button id="signin">ȸ������</button>
	
</body>
</html>