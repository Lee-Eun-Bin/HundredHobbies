<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>
  <meta charset="UTF-8" />
  <title>百취미 Point</title>
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
        	Point
      </li>
    </ul>
  </div>

  <div id = "contents">
    <div id="main">
    <article>
      <h1>Point</h1>
      <h2>백(百) 취미의 Point란?</h2>
        <P>
          <img src = "images/point1.PNG" alt = "" class = "image_right" />
     	     포인트는 일종의 화폐입니다.
          <br>
          <br>
         	포인트를 이용하여 취미와 관련된 물건을 얻을 수 있습니다.
          <br>
          <br>
          	포인트는 취미활동 후 인증을 통해 얻을 수 있습니다.
          <br>
          <br>
          	포인트를 모아 취미 용품과 교환한 뒤
          <br>
          <br>
       	   리뷰게시판 게시 시 포인트를 또한 제공 => 다른 유저들의 의욕 UP!!
          <br>
          <br>
          <img src = "images/point2.PNG" alt = "" class = "image_left" />
          <br>
          	수 많은 장 / 단기 임무를 하나씩 수행하여 포인트를 얻어 보아요
          <br>
          <br>
          	포인트를 모아 취미 물품 GET!!
          <br>
          <br>
          	모두 함께 다양한 취미를 즐겨보고 마일리지로 Item도 얻어 보아요
        </P>
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
