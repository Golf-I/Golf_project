<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, minimum-scale=1.0, user-scalable=no">
    <title>phone</title>
    <link href="${pageContext.request.contextPath}/resources/css/phone.css" rel="stylesheet">
</head>
<body>

    <section class="web">

        <div class="phone">

            <p>휴대폰변경</p>

            <div class="box_p">

				<form action="member/memberPhoneUpdate" method="POST">

				<input type="hidden" name="id" value="${sessionScope.id}"> 

                <div class="txt01">

                    <p><span><b><u>${sessionScope.id}</u></b></span> 회원정보 중 전화번호를 수정하기 위해 인증절차가 필요합니다.</p>

					
                    <select id="korea" required>
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

                    <div class="num">

                        <p>전화번호</p>

                        <input type="text" size="11" maxlength="11" id="num_p" name="phone" required>

                        <a href="#">
                            <p>인증요청</p>
                        </a>

                    </div>

                    <input type="text" size="12" maxlength="12" placeholder="인증번호 입력" id="certification" name="" required>

                </div>

                <input type="submit" value="변경하기" id="btn">

				</form>
				
            </div>

        </div>

    </section>
    
    
    
    <!-- 모바일 -->
       <section class="mobile">

        <div class="phone_m_top">
           
            <a href="index">
                <p>←</p>
            </a>

            <p>휴대폰변경</p>

        </div>

        <div class="phone_line01"></div>

		<form action="member/memberPhoneUpdate" method="POST">
		
		<input type="hidden" name="id" value="${sessionScope.id}"> 

        <div class="phone_txt_m_01">

            <div>
                <p><span>${sessionScope.id}</span> 회원정보 중 전화번호를 수정하기 위해 인증절차가 필요합니다.</p>
<!--                 <p><span>an20o0@naver.com</span> 회원정보 중 전화번호를 수정하기 위해 인증절차가 필요합니다.</p> -->
            </div>

        </div>

        <div class="phone_txt_m_02">

            <select id="korea_mobile" required>
				<option>대한민국(+82)</option>
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


            <div class="phone_mini_m">

                <p>전화번호</p>

                <input type="text" id="phone_mobile" name="phone" required>

                <input type="button" value="인증요청" id="chk_m_btn">

            </div>


            <input type="text" id="phone_chknum_m" placeholder="인증번호 입력" required>

        </div>


        <input type="submit" value="변경하기" id="change_m">

		</form>
	
    </section>
    
</body>
</html>