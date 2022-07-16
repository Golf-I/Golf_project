<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, minimum-scale=1.0, user-scalable=no">
    <title>join01</title>
	<link href="${pageContext.request.contextPath}/resources/css/join01.css"rel="stylesheet">
	<script	src="${pageContext.request.contextPath}/resources/js/member_signup1.js"></script>
</head>
<body>

	<section class="join">

	<div class="join_box">
		<p>회원가입</p> 

		<form method="post" action="signup_" name="join" onsubmit="return join1_check();">
			<!-- enctype="multipart/form-data" -->

			<input type="text" id="name" name="name" size="20" maxlength="20" required placeholder=" 한글 이름을 입력하세요.">

			<div class="join_us">
				<input type="email" id="email" name="id" size="20" maxlength="20"required placeholder=" 이메일을 입력하세요.">
				<input type="button" value="중복확인" id="check_btn" onclick="return duplCheck();" attr-a="onclick:attr-a">
			</div>

			<span style="display: none;" id="emailfalse">이메일 중복 확인을 해주세요.<br /><br /></span> 
			
			<input type="password" id="password01" name="pw" size="20" maxlength="20" required placeholder=" 6~12자리 영문+숫자+특수문자 조합">
			<input type="password" id="password02" name="pw_check" size="20" maxlength="20" required placeholder=" 비밀번호를 다시 입력해주세요.">
			
			<span style="display: none;" id="pwfalse"><br />비밀번호가 틀립니다.</span>

			<div class="line01"></div>

			<div class="join_btn">
				<label for="character"><a href="#"><p>캐릭터선택</p></a></label> 
				<input type="submit" value="회원가입" id="join" class="join_Btn">
			</div>

			<div class="line02"></div>

			<!-- 네이버 로그인 버튼 노출 영역 -->
			<a href="#">
			<div class="naver" id="naver_id_login"></div>
<%--                    <div class="naver_logo">
                       <img src="${pageContext.request.contextPath}/resources/img/naver_login.png">
                   </div>
                    <p>네이버 로그인</p>
           </div>  --%>
           </a>
			<script type="text/javascript">
				var naver_id_login = new naver_id_login("YisyoxafjYVqvrj6lctE", "http://localhost:8080/Golf_project/naverlogin"); // YOUR_CLIENT_ID, YOUR_CALLBACK_URL
				var state = naver_id_login.getUniqState();
				naver_id_login.setButton("green", 3, 50);
				naver_id_login.setDomain("http://localhost:8080/Golf_project/"); // YOUR_SERVICE_URL
				naver_id_login.setState(state);
				naver_id_login.setPopup();
				naver_id_login.init_naver_id_login();
			</script>
			<!-- 네이버 로그인 버튼 노출 영역 -->


			<!-- 카카오 로그인 버튼 노출 영역 -->
			<a href="javascript:loginWithKakao()">
            	<div class="kakao_join">
                    <div>
                        <img src="${pageContext.request.contextPath}/resources/img/kakaotalk_login.png" alt="카카오 로그인 버튼">
                    </div>
                    <p>카카오톡 로그인</p>
            	</div>
			</a>
			<!-- 카카오 로그인 버튼 노출 영역 -->

		</form>
		
	</div><!--join_box-->
	
	</section>
	
	
	
	<!-- 모바일 -->
	<section class="mobile">

		<form method="post" action="signup_" name="m_join" onsubmit="return m_join1_check();">

        <div class="join_m_top">
           
            <a href="index">
                <p>←</p>
            </a>

            <p>회원가입</p>

            <a href="index">
                <img src="${pageContext.request.contextPath}/resources/img/home_m.png">
            </a>

        </div>

        <div class="join_line01"></div>

        <input type="text" id="name_m" name="name" placeholder="한글 이름을 입력하세요." required>

        <div class="id_m_chk">
            <input type="text" id="id_m" name="id" placeholder="이메일을 입력하세요." required>

            <input type="button" value="중복확인" id="chk_id_m" onclick="return m_duplCheck();" attr-a="onclick:attr-a">
        </div>

		<span style="display: none;" id="m_emailfalse">이메일 중복 확인을 해주세요.<br /><br /></span> 

        <input type="password" id="password_m" name="pw" placeholder="6~12자리 영문+숫자+특수문자 조합" maxlength="12" size="12" required>

        <input type="password" id="password_m_re" name="pw_check" placeholder="비밀번호를 다시 입력해주세요." maxlength="12" size="12" required>

		<span style="display: none;" id="m_pwfalse"><br />비밀번호가 틀립니다.</span>

        <div class="join_line02"></div>

        <div class="popup_m">

            <a href="#">
                <p>캐릭터선택</p>
            </a>

            <a href="#">
                <input type="submit" value="회원가입">
                <!-- <p>회원가입</p> -->
            </a>

        </div>


        <div class="join_line03"></div>

        <a href="#">

		    <!-- 네이버 로그인 버튼 노출 영역 -->
            <div class="naver_m" id="naver_id_login_m">

                <div>
                    <img src="${pageContext.request.contextPath}/resources/img/signup/naver.png">
                </div>

                <p>네이버로 로그인</p>

            </div>
        </a>
        
	   	<script type="text/javascript">
		 	var naver_id_login_m = new naver_id_login_m("YisyoxafjYVqvrj6lctE", "http://localhost:8080/Golf_project/mobilenaverlogin"); // YOUR_CLIENT_ID, YOUR_CALLBACK_URL
		 	var state = naver_id_login_m.getUniqState();
		 	naver_id_login_m.setButton("green", 3, 50);
		 	naver_id_login_m.setDomain("http://localhost:8080/Golf_project/"); // YOUR_SERVICE_URL
		 	naver_id_login_m.setState(state);
		 	naver_id_login_m.setPopup();
		 	naver_id_login_m.init_naver_id_login();
		</script>
		<!-- 네이버 로그인 버튼 노출 영역 -->


		<!-- 카카오 로그인 버튼 노출 영역 -->
        <a href="javascript:loginWithKakao()">
            <div class="kakao_m">

                <div>
                    <img src="${pageContext.request.contextPath}/resources/img/signup/kakaotalk.png" alt="카카오 로그인 버튼">
                </div>

                <p>카카오로 로그인</p>

            </div>
        </a>
		<!-- 카카오 로그인 버튼 노출 영역 -->
        
        
		</form>

	</section>

</body>
</html>