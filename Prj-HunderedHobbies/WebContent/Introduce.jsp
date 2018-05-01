<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>
  <meta charset="UTF-8" />
  <title>百 취미 소개</title>
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
        백 취미 소개
      </li>
    </ul>
  </div>

  <div id = "contents">
    <div id="main">
    <article>
      <h1>백취미의 소개</h1>
      <section class = "concept_box">
        <h2>백(百) 취미란?</h2>
        <P>
          <img src = "images/concept_photo1.jpg" alt = "" class = "image_right" />
          간단하게 설명하자면 
          <br>
          <br>
          총 백여가지의 취미들 중
          <br>
          <br>
          매일 다른 취미 세가지를 추천해 드립니다.
          <br>
          <br>
          수 많은 장 / 단기 임무를 하나씩 수행하여
          <br>
          <br>
          포인트를 모아 취미 물품 GET!!
          <br>
          <br>
        </P>
        <h2>백(百) 취미의 목적</h2>
        <p>
          <img src = "images/concept_photo3.PNG" alt = "" class = "image_right" />
          - 최근 1인 가구의 수와 홀로 족 증가 
          <br>
          <br>
          - 오늘 뭐 하지? 에 대한 고민 증가
          <br>
          <br>
          - 매일매일 다른 취미를 제안 => 선택의 폭 DOWN!!
          <br>
          <br> 
          - 임무수행으로 얻는 포인트 => 알찬 하루에 대한 의욕 UP!!
        </p>
      </section>

      <section class = "concept_box">
        <h2>
          이용방법
        </h2>
        <p>
          <img src = "images/concept_photo2.jpg" alt = "" class = "image_left" />
          1. 100여가지의 취미활동 中 매일 새로운 취미 3가지(장기1 단기2) 추천
          <br>
          (ex) 장기:뜨개질 ,단기:낚시,탁구)
          <br>
          <br>
          2. 체크리스트 中 오늘의 취미 수행 &인증
          <br>
          <br>
          3. 오늘의 활동은 인증게시판에! 
          <br>
          <br>
          4. 인증 후 그 활동에 맞는 포인트를 지급!
          <br>
          <br>
          5. 포인트로는 취미물품으로 교환! 
          <br>
          <br>
        </p>
        <h2>인증</h2>
        <p>
          <img src = "images/concept_photo4.jpg" alt = "" class = "image_left" />
          인증게시판에 취미 활동 사진 게시.
          <br>
          <br>
          사진을 도용 방지 => 인증조건
          <br>
          <br>
          <blockquote>
          1. 활동사진에 본인의 아이디 노출
          <br>
          <br>
          2. 취미활동의 내용 노출
          <br>
          <br>
          3. 얼굴 공개는 선택!
          </blockquote>
          <br>
          인증게시판으로 취미 자랑&댓글로 칭찬하기!

        </p>
      </section>
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
