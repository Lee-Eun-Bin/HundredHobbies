<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="kr">

<head>
  <meta charset="UTF-8" />
  <title>100가지 취미의 Q & A</title>
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
        Q & A
      </li>
    </ul>
  </div>

  <div id = "contents">
    <div id="main">
    <article>
      <h1>Q & A</h1>
    </article>
    <p>
     백취미에 대한 문의를 보낼수 있는 공간입니다.
    </p>
    <ul>
      <li>
        질문사항을 기입하고 '확인'버튼을 클릭해주세요
      </li>
      <li>
        등록된 개인 정보는, 문의 내용의 확인 이외에는 사용하지 않습니다.
      </li>
    </ul>
    <form action="MAILTO:s154122@naver.com" method="post" enctype="text/plain">
      <p>
        <label>
        이름（필수）<br />
        <input type="text" name = "name" required/>
        </label>
      </p>

      <p>
        <label>
       메일주소（필수）<br />
        <input type="email" name="email" required/>
        </label>
      </p>

      <p>
        문의 종류<br />

        <label>
        <input type="radio" name = "kind" value="취미 문의" />
        취미 문의　
        </label>

        <label>
        <input type="radio" name = "kind" value="후기 문의" />
        후기 문의　
        </label>

        <label>
        <input type="radio" name = "kind" value="포인트 문의" />
        포인트 문의　
        </label>

        <label>
        <input type="radio" name = "kind" value="기타 문의" />
        기타문의
        </label>
      </p>
      <p>
        <label>
        문의내용<br />
        <textarea name="comment"></textarea>
        </label>
        <p>
          <input type="submit" value="확인" />
        </p>
      </p>
    </form>
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
