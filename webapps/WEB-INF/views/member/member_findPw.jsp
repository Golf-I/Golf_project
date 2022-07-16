<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, minimum-scale=1.0, user-scalable=no">
    <title>password_find</title>
	<link href="${pageContext.request.contextPath}/resources/css/password_find.css" rel="stylesheet">
	<script	src="${pageContext.request.contextPath}/resources/js/member_findPw.js"></script>
</head>
<body>

	<div class="password_find_box">

		<form action="member/findpw" method="post" onsubmit="return checkbox_check();">

       	<div class="password_find">

            <p>아이디/비밀번호찾기</p>

            <div class="find_box"> 

                <a href="findid">
                	<div class="id_f">아이디 찾기</div> 
                </a>

                <a href="findpw">
                	<div class="password_f">비밀번호 찾기</div>
                </a>

            </div> <!--find_box-->


            <div class="find_number_box">

                <div class="find_text">
                <p>비밀번호의 경우 암호화 저장되어 분실 시 찾아드릴 수 없는 정보입니다.<br>본인 확인을 통해 비밀번호를 재설정 하실 수 있습니다.
                </p>
                </div>

                <div class="name_select">
                    <div class="name">
                        <p>이름</p>
                    </div>

                    <input type="text" size="5" maxlength="5" id="name" name="name" required>

                </div>

                <div class="id_box">
                    <div class="id">
                        <p>아이디(이메일)</p>
                    </div>

                    <input type="email" size="20" maxlength="20" id="email" name="id" required>
                </div>

            </div><!--number_box-->

                <div class="find_title">
                	<p>비밀번호 찾기 방법을 선택해주세요.</p>
                </div>

	            <div class="find_chk_box">
	
	                <div class="email_chk">
	                	<label for="findpw_email">
		                    <input type="checkbox" id="findpw_email" name="mail" value="1"><span id="checkbox_email"> E-mail(이메일)주소</span>
	                	</label>
	                </div>
	
	                <div class="phone_chk">
	                	<label for="findpw_phone">
		                    <input type="checkbox" id="findpw_phone" name="phone" value="2"><span id="checkbox_phone"> 등록된 휴대폰</span>
	                	</label>
	                </div>
	
	            </div>

               	<input type="submit" id="confirm" class="confirm_button" value="확인">

			</div>

		</form>
	</div>
	
	
	
	<!-- 모바일 -->
	<section class="mobile">
	
		<form action="member/findpw" method="post">
	
        <div class="find_pw_m_top">
           
            <a href="index">
                <p>←</p>
            </a>

            <p>비밀번호 찾기</p>

            <a href="index">
                <img src="${pageContext.request.contextPath}/resources/img/home_m.png">
            </a>

        </div>

        <div class="find_pw_line_m"></div>

        <div class="find_pw_menu_m">

            <a href="findid">
                <p>아이디찾기</p>
            </a>

            <a href="findpw">
                <p>비밀번호찾기</p>
            </a>

        </div>

        <p>비밀번호의 경우 암호화 저장되어 분실 시 찾아드릴 수 없는 정보입니다.<br>본인 확인을 통해 비밀번호를 재설정 하실 수 있습니다.</p>

        
        <div class="name_m_box">

            <p>이름</p>

            <input type="text" id="name_m" name="name" required>

        </div>

        <div class="id_m_box">

           	<label for="id_m">
            	<p>아이디(이메일)</p>
			</label>

            <input type="email" id="id_m" name="id" required>
            
        </div>

        <div class="find_pw_line_m_02"></div>

        <div class="chk_m">

            <p>비밀번호 찾기 방법을 선택해주세요.</p>

            <div class="chk01_m">
                <input type="checkbox" id="email_m" name="mail" value="1"><!-- name="password_m"  -->

				<label for="email_m">
	                <p>E-mail(이메일)주소</p>
				</label>
            </div>

            <div class="chk02_m">
                <input type="checkbox" id="phone_num_m" name="phone" value="2"><!-- name="password_m" -->

				<label for="phone_num_m">
	                <p>등록된 휴대폰</p>
				</label>
            </div>

        </div>

        <input type="submit" value="확인" id="pw_find_btn_m">
        
        </form>
        
    </section>

</body>
</html>