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
				<%=id %>님께서 로그인 하셨습니다.
				<br>
				<br>
				<%=id %>님 환영합니다.
				<br>
				<br>
				<a href="Welcome.jsp">내 정보</a> &nbsp; &nbsp;
				<a href="Logout.jsp">로그아웃</a>
			</td>
		 </tr>     
	</table>
</body>
</html>