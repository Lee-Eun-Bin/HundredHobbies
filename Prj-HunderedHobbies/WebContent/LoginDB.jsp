<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
response.setContentType("text/html;charset=UTF-8");
request.setCharacterEncoding("UTF-8"); // charset, Encoding 설정
String id = request.getParameter("my_id");
String pwd = request.getParameter("my_pwd");
Class.forName("oracle.jdbc.driver.OracleDriver"); //load the driver
String DB_URL = "jdbc:oracle:thin:@localhost:1521:orcl"; //DB경로
String DB_USER = "c##xerxes"; //DB 이름
String DB_PASSWORD = "2627"; //DB 비밀번호
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
try { 
	conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
	stmt = conn.createStatement();
	
	String query = "SELECT * FROM ONEHUNDREDHOBBIES WHERE ID = '" + id + "' and PASSWORD = '" + pwd + "'";
	rs = stmt.executeQuery(query);
%>
<%
	if(rs.next()) {
			System.out.println(rs.getString("ID"));
			if(id.equals(rs.getString("ID"))==true & pwd.equals(rs.getString("PASSWORD"))==true) {
				session.setAttribute("my_id", id);
				response.sendRedirect("Main.jsp");
			}
		
	} else {
		%> <script>alert("잘못된 아이디거나 비밀번호 입니다."); history.back();</script> <%
	}
%>
<% 
rs.close(); //ResultSet exit
stmt.close(); //Statement exit
conn.close(); //Connection exit
} catch (SQLException e) {
	out.println("err" + e.toString());
}
%>
</body>
</html>