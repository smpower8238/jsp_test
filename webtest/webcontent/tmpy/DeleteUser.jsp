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
if (confirm("���� �����Ͻðڽ��ϱ�??") == true){    //Ȯ��
    document.form.submit();
    <% db.Delete_User_Test(SaveId.id); %>
}else{   //���
    return;
}
}
</script>


</head>
<body>
<input type="button" value="�����ϱ�" onclick="button_event();">

</body>
</html>