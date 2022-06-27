<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>find_id_02</title>
	<link href="${pageContext.request.contextPath}/resources/css/find_id_02.css" rel="stylesheet">
</head>
<body>

    <section>
        <div class="id_box">

            <p>아이디 찾기</p>

            <div class="find">

                <div class="logo">
                    <div>
                        <img src="${pageContext.request.contextPath}/resources/img/member/find/join_logo.png">
                    </div>
                </div>

                <div class="id">
<!--                     <p>고객님의 아이디는 <span>an20o0@naver.com</span> 입니다.</p> -->
                    <p>고객님의 아이디는 <b><span>${param.mvo}</span></b>입니다.</p>
                </div>

            </div>

            <a href="login">
                <p>로그인 하러 가기</p>
            </a>

        </div>
    </section>

</body>
</html>