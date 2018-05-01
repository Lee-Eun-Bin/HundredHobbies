<%@page import="java.util.Calendar"%>
<%@page import="java.time.Month"%>
<%@page import="java.time.YearMonth"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WriteDB</title>
</head>
<body>
	<%	  request.setCharacterEncoding("UTF-8"); //한글 처리
		  String name = request.getParameter("w_name");
		  String story = request.getParameter("w_story");
		  String id = (String)session.getAttribute("my_id");
		  String year = Integer.toString(Calendar.YEAR+17);
		  String month = Integer.toString(Calendar.MONTH+2);
		  String date = Integer.toString(Calendar.DATE+25);
		  String day = year +"."+ month +"."+ date;
		  System.out.println(name + story + id + day);
		  //post로 html로부터 입력받은 내용을 변수화
	  try {
		  
		  Class.forName("oracle.jdbc.driver.OracleDriver"); //DB 경로
		  String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		  Connection con = DriverManager.getConnection(url, "c##xerxes", "2627");//(url, DB이름, 비밀번호)
		  Statement stat = con.createStatement();
		  String query = "INSERT INTO BOARD(NAME, ID, DAY, STORY) VALUES('"+name+"', '"+id+"', '"+day+"', '"+story+"')";
		  stat.executeUpdate(query); //쿼리문 날림
		  stat.close();
		  con.close();
	  } catch (Exception e) {
		  out.println(e);
	  }
	  response.sendRedirect("Afternote.jsp");
	%>
</body>
</html>