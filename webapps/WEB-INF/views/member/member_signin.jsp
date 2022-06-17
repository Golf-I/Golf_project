<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>join03</title>
	<link href="${pageContext.request.contextPath}/resources/css/login.css"	rel="stylesheet">
	<script	src="${pageContext.request.contextPath}/resources/js/member_signin.js"></script>
</head>
<body>

	<div class="login_ex">
        <div class="login">
            <div class="title_login">
                <p>로그인</p>
            </div><!--title-->

			<!-- form 태그 -->
			<form method="post" action="member/signin" name="login" id="login" onsubmit="return login_check();">
            
            <input type="email" name="id" id="email" size="30" required placeholder=" 이메일을 입력하세요">

            <input type="password" name="pw" id="pw" size="30" required placeholder=" 비밀번호를 입력하세요">

            <div class="check">
	            <div class="save">
	            	<label for="remember">
		            	<input type="checkbox" id="remember" name="remember"> 이메일(아이디)저장
	            	</label>
	            </div><!--save-->

	            <div class="auto">
	            	<label for="autologin">
		            	<input type="checkbox" id="autologin" name="autologin"> 자동로그인
	            	</label>
	            </div><!--auto-->
            </div><!--check-->

            <input type="submit" id="login_button" value="로그인">

			</form>
			<!-- form 태그 -->

            <div class="signup_box">
                <a href="signup"><p>회원가입</p></a>
                <div></div>
                <a href="findpw"><p>비밀번호 찾기</p></a>
            </div>

            <div class="line"></div>

            <a href="#">
            <div class="naver">
                    <div class="naver_logo">
                        <img src="${pageContext.request.contextPath}/resources/img/naver_login.png">
                    </div>
                    <p>네이버 로그인</p>
                </div>
            </a>

            <a href="#">
            <div class="kakao_login">
                    <div class="kakao_logo">
                        <img src="${pageContext.request.contextPath}/resources/img/kakaotalk_login.png">
                    </div>
                    <p>카카오톡 로그인</p>
            </div>
            </a>

        </div><!--login-->
    </div><!--login_ex-->

</body>
</html>