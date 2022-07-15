<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, minimum-scale=1.0, user-scalable=no">
    <title>find_id</title>
	<link href="${pageContext.request.contextPath}/resources/css/find_id.css" rel="stylesheet">
</head>
<body>

		<div class="id_find_box">

        <div class="id_find">
            
            <p>아이디/비밀번호찾기</p> 

            <div class="find_box">

                <a href="findid">
                	<div class="id_f">아이디 찾기</div>
                </a>

                <a href="findpw">
               		<div class="password_f">비밀번호 찾기</div>
                </a>

            </div> <!--find_box-->
		
			<form action="member/findid" method="post">
		
            <div class="find_number_box">

                <div class="find_text">
                <p>회원님의 명의로 등록된 휴대폰으로 본인확인을 진행합니다.</p>
                </div>

                <div class="number_select">
                    <select id="korea_m" required>
						<option>대한민국 (+82)</option>
						<option>대만 (+886)</option>
						<option>말레이시아 (+60)</option>
						<option>베트남 (+64)</option>
						<option>인도네시아 (+62)</option>
						<option>일본 (+81)</option>
						<option>중국 (+86)</option>
						<option>타이 (+66)</option>
						<option>필리핀 (+63)</option>
						<option>홍콩 (+852)</option>
						<option>인도 (+91)</option>
						<option>싱가폴 (+65)</option>
                    </select>

                    <input type="text" size="16" maxlength="16" id="phone" name="phone" placeholder="휴대폰번호(숫자만입력)" required>

                </div>

                <div class="number_chk_box">
                    <input type="text" size="8" maxlength="8" id="certification" placeholder="인증번호입력" required> 

                    <a href="#">
                    	<div class="certification_btn">인증번호받기</div>
                    </a>

                </div>

                <input type="submit" value="확인" id="confirm">

            </div><!--number_box-->

			</form>

        </div>
    </div>
    
    
    
    <!-- 모바일 -->
    <section class="mobile">

		<form action="member/findid" method="post">

        <div class="find_id_m_top">
           
            <a href="index">
                <p>←</p>
            </a>

            <p>아이디 찾기</p>

            <a href="index">
                <img src="${pageContext.request.contextPath}/resources/img/home_m.png">
            </a>
            
        </div>

        <div class="find_id_line_m"></div>

        <div class="find_id_menu_m">
            <a href="findid">
                <p>아이디찾기</p>
            </a>
            <a href="findpw">
                <p>비밀번호찾기</p>
            </a>
        </div>

        <p>회원님의 명의로 등록된 휴대폰으로 본인확인을 진행합니다.</p>

        <div class="find_id_box_m_01">

            <select id="korea_m" required>
				<option>대한민국 (+82)</option>
				<option>대만 (+886)</option>
				<option>말레이시아 (+60)</option>
				<option>베트남 (+64)</option>
				<option>인도네시아 (+62)</option>
				<option>일본 (+81)</option>
				<option>중국 (+86)</option>
				<option>타이 (+66)</option>
				<option>필리핀 (+63)</option>
				<option>홍콩 (+852)</option>
				<option>인도 (+91)</option>
				<option>싱가폴 (+65)</option>
            </select>

            <input type="text" id="phone_num_m" name="phone" size="11" maxlength="11" placeholder="휴대폰 번호(숫자만 입력)" required>

        </div>

        <div class="find_id_box_m_02">

            <input type="text" id="certification_m" size="10" maxlength="10" placeholder="인증번호 입력" required>

            <input type="button" value="인증번호받기" id="certification_btn_m">
        </div>

        <input type="submit" value="확인" id="find_id_m">

		</form>

    </section>

</body>
</html>