<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<% String id = (String)session.getAttribute("my_id"); %>
	<table align="center" border="0">
		<tr>
			<td style="background-color: #f3f2e9;">
				<%=id %>�Բ��� �α��� �ϼ̽��ϴ�.
				<br>
				<br>
				<%=id %>�� ȯ���մϴ�.
				<br>
				<br>
				<a href="Welcome.jsp">�� ����</a> &nbsp; &nbsp;
				<a href="Logout.jsp">�α׾ƿ�</a>
			</td>
		 </tr>     
	</table>
</body>
</html>