<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 혀~</title>
<script>window.onload = function() {
          // 임의의 객체에 대해 이벤트 장착 가능
          document.getElementById("signin").onclick = function() {
        	  location.href="sign.html"
          }
}
</script>
</head>
<body>
	<form action="login.jsp" method="post">
		아이디:<input type="text" name="id" maxlength="8">
		<p>
			비번:<input type="text" name="pass" maxlength="8">
		<p>
			<input type="submit" value="로그인">
		<p>
	</form>
	<button id="signin">회원가입</button>
	
</body>
</html>