<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>password_check</title>
    <link href="${pageContext.request.contextPath}/resources/css/password_check.css" rel="stylesheet">
</head>
<body>

	<section>

        <div class="password_check">

			<form action="member/mypagePre" method="post">

            <div class="box_pw">
				
                <p>비밀번호 확인</p>

                <div class="check">

                    <div class="txt01">
                        <p><span>${sessionScope.id}</span> 님의 정보를 안전하게 보호하기 위해 비밀번호를  다시 한번 확인합니다.</p>
                    </div>

                    <div class="id">
                        <p>아이디(이메일)</p>
                        <p>
                        	<input type="email" name="id" size="12" maxlength="12" value="${sessionScope.id}" readonly>
                        </p>
                        
                    </div>

                    <div class="password">
                        <p>비밀번호</p>
                        <input type="password" name="pw" id="pw01" size="12" maxlength="12">
                    </div>

                </div><!-- class="check" -->


            </div><!-- class="box_pw" -->

           	<input type="submit" id="btn_pw" value="확인">
			
			</form>
			
        </div><!-- class="password_check" -->

    </section>

</body>
</html>