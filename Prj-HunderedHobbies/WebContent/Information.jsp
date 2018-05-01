<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>
  <meta charset="UTF-8" />
  <title>百 취미 정보</title>
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
        100가지 취미의 정보
      </li>
    </ul>
  </div>

 <!-- 메인 컨텐츠 시작 -->
  <div id = "contents">
    <div id="main">
    <article>
      <h1>100가지 취미의 정보</h1>

      <table>
        <caption>
          <h2>
            100가지의 취미들
          </h2>
          <p>
            <br>
            백취미에서 제공하는 100가지의 취미들입니다. 하루에 랜덤하게 3가지를 추천해 드립니다. 
            <br>
            <br>
          </p>
        </caption>
        <thead>
          <tr>
            <th scope="col">취미</th>
            <th scope="col">설명</th>
          </tr>
        </thead>

        <tbody>
          <tr>
            <th scope="row">수영</th>
            <td>
              <img src = "images/hswim.png"/> <br>
              【명사】【~하다 → 자동사】<br>
                스포츠나 놀이로서 물속을 헤엄치는 일. <br>
                ┈┈• ∼을 배우다. <br>
            </td>
          </tr>

          <tr>
            <th scope="row">탁구</th>
            <td>
              <img src = "images/hpingpong.png"/> <br>
              【명사】<br>
              나무 대(臺)의 가운데에 네트를 치고 마주 서서 셀룰로이드 공을 라켓으로 쳐 넘겨 승부를 겨루는 경기. 핑퐁.
            </td>
          </tr>

          <tr>
            <th scope="row">요리</th>
            <td>
              <img src = "images/hcooking.png"/> <br>
              【명사】【~하다 → 타동사】<br>
                음식을 일정한 방법으로 만듦. 또는 그 음식. <br>
                ┈┈• ∼ 솜씨 <br>
                ┈┈• ∼를 먹다.</td>
          </tr>

          <tr>
            <th scope="row">테니스</th>
            <td>
              <img src = "images/htennis.png"/> <br>
              【명사】<br>
                중앙에 네트를 치고 양쪽에서 라켓으로 공을 쳐서 넘기는 경기《남·녀 단식과 복식, 혼합 복식 등의 방식이 있음》.</td>
          </tr>

          <tr>
            <th scope="row">자전거</th>
            <td>
              <img src = "images/hbicycle.png"/> <br>
              【명사】<br>
              사람이 타고 양발로 페달을 밟아 바퀴를 돌려서 앞으로 나아가게 장치한 수레. <br>
              ┈┈• ∼ 짐받이에 물건을 싣다 <br>
              ┈┈• ∼ 페달을 밟다.
            </td>
          </tr>
          
          <tr>
            <th scope="row">낚시</th>
            <td>
              <img src = "images/hfishing.png"/> <br>
              【명사】【~하다 → 자동사】<br>
              ① 미끼를 꿰어 물고기를 잡는 데 쓰는, 작은 바늘로 된 갈고랑이. 낚싯바늘. 조구(釣鉤). <br>
              ┈┈• ∼에 물고기가 걸리다. <br>
              ┈┈• ∼를 물에 드리우다. <br>
              ┈┈• ∼에 미끼를 갈아 끼우다.
            </td>
          </tr>

          <tr>
            <th scope="row">독서</th>
            <td>
              <img src = "images/hread.png"/> <br>
              【명사】【~하다 → 자동사】<br>
              책을 읽음. <br>
              ┈┈• 가을은 ∼의 계절이다.
            </td>
          </tr>

          <tr>
            <th scope="row">드론</th>
            <td>
              <img src = "images/hdrone.png"/> <br>
              (원격,혹은 자동조종되는) 소형 무인 정찰기
            </td>
          </tr>

          <tr>
            <th scope="row">등산</th>
            <td>
              <img src = "images/hhiking.png"/> <br>
              【명사】【~하다 → 타동사】<br>
              운동·놀이·탐험 따위를 위해 산에 오름. <br>
              ┈┈• ∼을 가다
            </td>
          </tr>
        </tbody>

      </table>

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
  <!-- 메인 컨텐츠 종료 -->

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
