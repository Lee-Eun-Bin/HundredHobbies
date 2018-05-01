<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>
  <meta charset="UTF-8" />
  <title>Welcome 백취미</title>
  <link rel="stylesheet" href="css/style.css" />
</head>

<body>
  <header id="top">
    <h1>
      <a href="Main.jsp">
        <img src="images/logo.png"/>
      </a>
    </h1>
  </header>

  <nav>
    <ul>
      <li id = "nav_concept">
        <a href="Introduce.jsp">백 취미 소개</a>
      </li>

      <li id = "nav_plan">
        <a href="Information.jsp">정보</a>
      </li>

      <li id = "nav_fair">
        <a href="Afternote.jsp">후기</a>
      </li>

      <li id = "nav_contact">
        <a href="Q&A.jsp">Q & A</a>
      </li>
    </ul>
  </nav>

  <div id = "breadcrumb">
    <ul>
      <li>
        <a href="Main.jsp">HOME</a>
      </li>
      <li>
        Welcome
      </li>
    </ul>
  </div>

   <div id = "contents">
    <div id="main">
    <article>
      <h1>환영합니다</h1>
      <%
		response.setContentType("text/html;charset=euc-kr");
		request.setCharacterEncoding("UTF-8"); // charset, Encoding 설정
		Class.forName("oracle.jdbc.driver.OracleDriver"); //load the driver
		String DB_URL = "jdbc:oracle:thin:@localhost:1521:orcl"; //DB경로
		String DB_USER = "c##xerxes"; //DB 이름
		String DB_PASSWORD = "2627"; //DB 비밀번호
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String newid = (String)session.getAttribute("my_id");
		try { 
			conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
			stmt = conn.createStatement();
			
			String query = "SELECT * FROM ONEHUNDREDHOBBIES WHERE id = '" + newid + "'";
			rs = stmt.executeQuery(query);
		%>
		<%while(rs.next()) { //rs를 통해 테이블 객체들의 필드값을 넘겨볼 수 있다%>
		  <table align="center">
		  <tr>
		  <td align="center" colspan = "2"> <%=rs.getString("ID") %>님 환영합니다 !</td>
		  </tr>
		  <tr>
		  	<td align="center">이름</td>
		  	<td><%=rs.getString("NAME") %></td>
		  </tr>
		  <tr>
		 	<td align="center">성별</td>
		  	<td><%=rs.getString("SEX") %></td>
		  </tr>
		  <tr>
		  	<td align="center">생일</td>
		  	<td><%=rs.getString("BIRTH") %></td>
		  </tr>
		  <tr>
		  	<td align="center">이메일</td>
		  	<td><%=rs.getString("EMAIL") %></td>
		  </tr>
		  <tr>
		  	<td align="center">전화번호</td>
		  	<td><%=rs.getString("PHONE") %></td>
		  </tr>
		  <tr>
		  <td align="center" colspan="2">
		  <input type="button" value="Home" style="height:40px; width:90px;" onclick="location='Main.jsp'">
		  </td>
		  </tr>
		  </table>  		
		<%}%>
		<% 
		rs.close(); //ResultSet exit
		stmt.close(); //Statement exit
		conn.close(); //Connection exit
		} catch (SQLException e) {
			out.println("err" + e.toString());
		}
		%>   
    </article>
    </div>

    <div id = "sub">
      <aside>
      	<% request.setCharacterEncoding("UTF-8"); %>
	  	<% String id = (String)session.getAttribute("my_id"); %>
		<%
		if(id==null) {%>
        	<jsp:include page="LoginInclude.jsp" flush="false"/>
        <%} else {%>
    		<jsp:include page="LoginInclude2.jsp" flush="false"/>
  		  <%} %>
         <br><br> 
         <div class = "bnr_inner">
          <a href="Point.jsp">
          <dl>
            <dt>
              <img src = "images/bnr_plan.jpg" alt = "point" />
            </dt>
          </dl>
          </a>
        </div>
      </aside>
    </div>

  </div>



  <footer>
    <p id = "pagetop">
      <a href = "#top">위로가기</a>
    </p>
    <address>
      46234 부산광역시 금정구 금샘로485번길 65 대표전화 : 010-6475-7796
    </address>
    <p id="copyright">
      <small>
        Copyright &copy;7 HUNDRED HOBBIES All rights reserved by ID
      </small>
    </p>
  </footer>

</body>

</html>