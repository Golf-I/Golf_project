<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, minimum-scale=1.0, user-scalable=no">
    <title>name_change</title>
    <link href="${pageContext.request.contextPath}/resources/css/name_change.css" rel="stylesheet">
</head>
<body>

	<input type="radio" name="gender" id="woman" value="female">
    <input type="radio" name="gender" id="man" value="male">

    <section class="web">

	<form action="member/memberNameUpdate" method="post">
    
    <input type="hidden" name="id" value="${sessionScope.id}">
    
        <div class="name_change">

            <p>이름변경</p>

            <div class="box_name">

                <p>인증받은 휴대전화 번호는 내 회원정보에 등록하겠습니다.</p>

                <input type="text" placeholder="이름" size="12" maxlength="12" id="name" name="name" required>

                <div class="gender">

                    <select id="local">

                        <option>내국인</option>

                        <option>외국인</option>

                    </select>

                    <div class="box_gender">


                            <label for="man">
                                <p>남성</p>
                            </label>

                            <label for="woman">
                                <p>여성</p>
                            </label>


                    </div>

                </div>

                <div class="birthday">

                    <p>생년월일</p>

                    <div class="birthday_box">

                        <input type="text" size="4" maxlength="4" id="day01" name="birth1" required>

                        <p>년</p>

                        <input type="text" size="2" maxlength="2" id="day02" name="birth2" required>

                        <p>월</p>

                        <input type="text" size="2" maxlength="2" id="day03" name="birth3" required>

                        <p>일</p>

                    </div>

                </div>

                <div class="phone">

                    <select id="agency">

                        <option>SKT</option>
                        <option>KT</option>
                        <option>LG</option>

                    </select>

                    <input type="text" size="11" maxlength="11" id="phone_num" placeholder="전화번호" name="phone" required>

                    <a href="#">
                        <p>인증요청</p>
                    </a> 


                </div>

                <input type="text" size="6" maxlength="6" id="certification_number" placeholder="인증번호 입력" required>

            </div>

            <input type="submit" id="btn01" value="변경하기">

        </div><!--name_change-->

	</form>

    </section>


	<!-- 모바일 -->
	<section class="mobile">

        <div class="name_m_top">

            <a href="#">
                <p>←</p>
            </a>

            <p>이름변경</p>

            <a href="#">
                <img src="img/home_m.png">
            </a>

        </div>

        <div class="name_line_m_01"></div>

        <div class="name_m_box_ex">

            <p>인증받은 휴대전화 번호는 내 회원정보에 등록하겠습니다.</p>

            <input type="text" placeholder="이름" id="name_m_01">

            <div class="namebox01">

                <select id="name_m_02">

                    <option>내국인</option>
                    <option>외국인</option>

                </select>

                <input type="radio" name="gendar_m" id="man_m">
                <input type="radio" name="gendar_m" id="woman_m">

                <div class="gender_mobile_box">

                    <label for="man_m">
                        <p>남성</p>
                    </label>

                    <label for="woman_m">
                        <p>여성</p>
                    </label>

                </div>


            </div>

            <div class="namebox02">

                <p>생년월일</p>

                <div class="day_m">

                    <div class="day01_m">

                        <input type="text" id="day_text_01" size="4" maxlength="4">

                        <p>년</p>

                    </div>

                    <div class="day02_m">

                        <input type="text" id="day_text_02" size="2" maxlength="2">

                        <p>월</p>
                        
                    </div>

                    <div class="day03_m">

                        <input type="text" id="day_text_03" size="2" maxlength="2">

                        <p>일</p>
                        
                    </div>

                </div>

            </div>

            <div class="namebox03">

                <select id="name_m_03">

                    <option>SKT</option>
                    <option>KT</option>
                    <option>LG</option>

                </select>


                <div class="phonenum_box_m">

                    <input type="text" placeholder="전화번호" id="phonenum_m" size="11" maxlength="11">

                    <input type="button" value="인증요청" id="certi_m_btn">

                </div>


            </div>


            <input type="text" id="certification_m" placeholder="인증번호 입력">
            
        </div><!--name_m_box_ex-->


        <input type="button" value="변경하기" id="change_m">


    </section>

    
</body>
</html>