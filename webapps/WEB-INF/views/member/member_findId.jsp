<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title></title>
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
                    <select>
                        <option selected>대한민국</option>
                        <option>　</option>
                    </select>

                    <input type="text" size="16" maxlength="16" id="phone" name="phone" required placeholder="휴대폰번호(숫자만입력)">

                </div>

                <div class="number_chk_box">
                    <input type="text" size="8" maxlength="8" id="certification" required placeholder="인증번호입력">

                    <a href="#">
                    	<div class="certification_btn">인증번호받기</div>
                    </a>

                </div>

                <input type="submit" value="확인" id="confirm">

            </div><!--number_box-->

			</form>


        </div>
    </div>

</body>
</html>