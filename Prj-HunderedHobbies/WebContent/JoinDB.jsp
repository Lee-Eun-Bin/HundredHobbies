<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Join JSP</title>
</head>
<body>
	<%	  request.setCharacterEncoding("UTF-8"); //한글 처리
		  String id = request.getParameter("my_id");
		  String pwd = request.getParameter("my_pwd");
		  String name = request.getParameter("my_name");
		  String sex = request.getParameter("my_sex");
		  String birth = request.getParameter("my_birth");
		  String email = request.getParameter("my_email");
		  String phone = request.getParameter("my_phone");
		  //post로 html로부터 입력받은 내용을 변수화
	System.out.println(id +" "+ pwd +" "+ name +" "+ sex + " " + birth + " " + email + " " + phone);
	  try {
		  
		  Class.forName("oracle.jdbc.driver.OracleDriver"); //DB 경로
		  String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		  Connection con = DriverManager.getConnection(url, "c##xerxes", "2627");//(url, DB이름, 비밀번호)
		  Statement stat = con.createStatement();
		  String query = "INSERT INTO ONEHUNDREDHOBBIES(id, password, name, sex, birth, email, phone) VALUES('"+id+"', '"+pwd+"', '"+name+"', '"+sex+"', '"+birth+"', '"+email+"', '"+phone+"')";
		  //INSERT into member(id,name,pwd,email) VALUES ('id','name','pwd','email') 쿼리문 
		  stat.executeUpdate(query); //쿼리문 날림
		  stat.close();
		  con.close();
	  } catch (Exception e) {
		  out.println(e);
	  }
	  session.setAttribute("my_id", id);
	  response.sendRedirect("Welcome.jsp");
	%>
</body>
</html>