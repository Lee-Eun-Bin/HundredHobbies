<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>
  <meta charset="UTF-8" />
  <title>백취미 Login</title>
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
        Join
      </li>
    </ul>
  </div>

  <div id = "contents">
    <div id="main">
    <article>
      <h1>Join</h1>
	<form action="JoinDB.jsp" method="post">
		<table width="550">
			<tr>
				<td><input type="text" name = "my_id" value="아이디" onfocus="this.value=''" maxlength="8" required>
				 영문, 숫자 6~8 자리를 입력해 주십시오. </td>
			</tr>
			<tr>
				<td><input type="text" name = "my_pwd" value="비밀번호" onfocus="this.value='', this.type='password'" maxlength="12" required>
				 영문, 숫자 기호를 이용해 8~12 자리를 입력해 주십시오.</td>
			</tr>
			<tr>
				<td><input type="text" name = "my_pwd1" value="비밀번호 확인" onfocus="this.value='', this.type='password'" maxlength="12" required>
				 위 비밀 번호를 확인합니다.</td>
			</tr>
		</table>
		<br>
		<table width="550">
			<tr>
				<td colspan="2"><input type="text" name = "my_name" value="이름" onfocus="this.value=''" maxlength="5" required>
				성함 3~5자를 입력해 주십시오. (ex) 홍길동 </td>
			</tr>
			<tr align="center">
				<td colspan="2"><input type="radio" name = "my_sex" value="남자"> 남자 
				<input type="radio" name = "my_sex" value="여자"> 여자 </td>
			</tr>
			<tr>
				<td align = "center">생일</td>
				<td>
					<input type="text" name = "my_birth" value="생년월일"  onfocus="this.value=''" required>
				(ex) 2018.01.01</td>
			</tr>
			<tr>
				<td colspan="2"><input type="text" name = "my_email" value="이메일"  onfocus="this.value=''" required>
				(ex) abcdef @ naver.com </td>
			</tr>
			<tr>
				<td colspan="2"><input type="text" name = "my_phone" value="휴대전화"  onfocus="this.value=''" required>
				(ex) 010 - 1111 - 2222 </td>
			</tr>
		</table>
		<br>
		<br>
		<center><input type="submit" name="submit" value="가입하기"></center>
	</form> 
    </article>  
   </div>


    <div id = "sub">
      <aside>
        <jsp:include page="LoginInclude.jsp" flush="false"/>
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
