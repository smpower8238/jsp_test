<%@page import="webtest.SaveId"%>
<%@page import="webtest.DB_Connect"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <% DB_Connect db = new DB_Connect();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">

function button_event(){
if (confirm("정말 삭제하시겠습니까??") == true){    //확인
    document.form.submit();
    <% db.Delete_User_Test(SaveId.id); %>
}else{   //취소
    return;
}
}
</script>


</head>
<body>
<input type="button" value="삭제하기" onclick="button_event();">

</body>
</html>