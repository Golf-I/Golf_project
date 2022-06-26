<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>join01</title>
	<link href="${pageContext.request.contextPath}/resources/css/join01.css"rel="stylesheet">
	<script	src="${pageContext.request.contextPath}/resources/js/member_signup1.js"></script>
</head>
<body>

	<input type="checkbox" id="character">

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
				<label for="character"><p>캐릭터선택</p></label> 
				<input type="submit" value="회원가입" id="join" class="join_Btn">
			</div>

			<div class="line02"></div>

			<!-- 네이버 로그인 버튼 노출 영역 -->
			<div class="naver" id="naver_id_login"></div>
			<!-- <a href="#">
                   <div class="naver_logo">
                       <img src="${pageContext.request.contextPath}/resources/img/naver_login.png">
                   </div>
                    <p>네이버 로그인</p>
           </div> 
           </a> -->

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


			<input type="checkbox" id="btn01" name="icon1"> 
			<input type="checkbox" id="btn02" name="icon2"> 
			<input type="checkbox" id="btn03" name="icon3"> 
			<input type="checkbox" id="btn04" name="icon4"> 
			<input type="checkbox" id="btn05" name="icon5"> 
			<input type="checkbox" id="btn06" name="icon6"> 
			<input type="checkbox" id="btn07" name="icon7"> 
			<input type="checkbox" id="btn08" name="icon8"> 
			<input type="checkbox" id="btn09" name="icon9"> 
			<input type="checkbox" id="btn10" name="icon10"> 
			<input type="checkbox" id="btn11" name="icon11"> 
			<input type="checkbox" id="btn12" name="icon12"> 
			<input type="checkbox" id="btn13" name="icon13"> 
			<input type="checkbox" id="btn14" name="icon14"> 
			<input type="checkbox" id="btn15" name="icon15"> 
			<input type="checkbox" id="btn16" name="icon16"> 

			<div class="pop_up_ex">
				<div class="pop_up">
					<p>캐릭터선택</p>
					<p>원하시는 캐릭터를 선택해 주세요.</p>

					<div class="line03"></div>

					<div class="character_box">

						<div class="line_c_01">
							<label for="btn01"> <img
								src="${pageContext.request.contextPath}/resources/img/signup/character.png">
							</label> <label for="btn02"> <img
								src="${pageContext.request.contextPath}/resources/img/signup/character.png">
							</label> <label for="btn03"> <img
								src="${pageContext.request.contextPath}/resources/img/signup/character.png">
							</label> <label for="btn04"> <img
								src="${pageContext.request.contextPath}/resources/img/signup/character.png">
							</label>
						</div>
						<!--01-->

						<div class="line_c_02">
							<label for="btn05"> <img
								src="${pageContext.request.contextPath}/resources/img/signup/character.png">
							</label> <label for="btn06"> <img
								src="${pageContext.request.contextPath}/resources/img/signup/character.png">
							</label> <label for="btn07"> <img
								src="${pageContext.request.contextPath}/resources/img/signup/character.png">
							</label> <label for="btn08"> <img
								src="${pageContext.request.contextPath}/resources/img/signup/character.png">
							</label>
						</div>
						<!--02-->

						<div class="line_c_03">
							<label for="btn09"> <img
								src="${pageContext.request.contextPath}/resources/img/signup/character.png">
							</label> <label for="btn10"> <img
								src="${pageContext.request.contextPath}/resources/img/signup/character.png">
							</label> <label for="btn11"> <img
								src="${pageContext.request.contextPath}/resources/img/signup/character.png">
							</label> <label for="btn12"> <img
								src="${pageContext.request.contextPath}/resources/img/signup/character.png">
							</label>
						</div>
						<!--03-->

						<div class="line_c_04">
							<label for="btn13"> <img
								src="${pageContext.request.contextPath}/resources/img/signup/character.png">
							</label> <label for="btn14"> <img
								src="${pageContext.request.contextPath}/resources/img/signup/character.png">
							</label> <label for="btn15"> <img
								src="${pageContext.request.contextPath}/resources/img/signup/character.png">
							</label> <label for="btn16"> <img
								src="${pageContext.request.contextPath}/resources/img/signup/character.png">
							</label>
						</div>
						<!--04-->

					</div>

					<div class="line04"></div>

					<label for="character" class="character_btn">
						<p>캐릭터선택</p>
					</label>

				</div>

			</div>

		</form>
	</div>
	<!--join_box--> </section>
	
</body>
</html>