<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Include</title>
</head>
<body>
	<form action="LoginDB.jsp">
    	<table align="center" border="0">
     		<tr>
     			<td style="background-color: #f3f2e9;">
     				<input type="text" id="my_id" name="my_id"  value="아이디" style="height:30px;" onfocus="this.value=''"  size="10" maxlength="12" required>
     				<br>
      				<br>
      				<input type="text" id="my_pwd" name="my_pwd" value="비밀번호"  style="height:30px;" onfocus="this.value='', this.type='password'" size="30" maxlength="12" required>
      				<br>
      				<br>
					<input type="image" src="images/minibnr_contact.png"/>
					<a href="Join.jsp"><img src="images/minijoin.png"></a>
   			 </tr>     
    	</table>      
  	</form> 
</body>
</html>