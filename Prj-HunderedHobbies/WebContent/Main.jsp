<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>
  <meta charset="UTF-8" />
  <title>百취미(HUNDRED HOBBIES)</title>
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


  <div id = "graphic">
    <ul>
      <li class = "now">
        <img src = "images/slide1.png"/>
      </li>

      <li>
        <img class="imge2" src = "images/slide2.png"/>
      </li>

      <li>
        <img class = "image3" src = "images/slide3.png"/>
      </li>
    </ul>
  </div>


  <div id = "contents">
    <div id="main">
    <section id = "news">
      <h2>소식</h2>
      <ul>
        <li>
          <time datetime="2018-04-02">2018년 04월 02일</time>백 취미 팀 결성
        </li>
        <li>
          <time datetime="2018-04-09">2018년 04월 09일</time>
          백 취미 Html 완성
        </li>
        <li>
          <time datetime="2018-04-16">2018년 04월 16일</time>
          백 취미 DB 연동
        </li>
        <li>
          <time datetime="2018-04-29">2018년 04월 29일</time>백 취미 Proto-type 완성
        </li>
      </ul>

    </section>
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

  <script src = "js/slideshow.js"></script>

</body>

</html>
    