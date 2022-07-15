<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, minimum-scale=1.0, user-scalable=no">
    <title>find_id_02</title>
	<link href="${pageContext.request.contextPath}/resources/css/find_id_02.css" rel="stylesheet">
</head>
<body>

    <section class="web">
    
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
                    <p>고객님의 아이디는 <b><span>${fn:substring(param.mvo, 0, fn:length(param.mvo)-13)}********</span></b> 입니다.</p>
                    
                </div>

            </div>

            <a href="login">
                <p>로그인 하러 가기</p>
            </a>

        </div>
    </section>
    
    
    <!-- 모바일 -->
    <section class="mobile">

        <div class="join_m_top">
           
            <a href="index">
                <p>←</p>
            </a>

            <a href="index">
                <img src="${pageContext.request.contextPath}/resources/img/home_m.png">
            </a>

        </div>

        <div class="join_line01"></div>

        <div class="notification">

            <div>
                <img src="${pageContext.request.contextPath}/resources/img/find_id.png">
            </div>

            <p>고객님의 아이디는<br><b>${fn:substring(param.mvo, 0, fn:length(param.mvo)-13)}********</b>입니다.</p>
<!--             <span>an20o0@naver.com</span> 입니다.</p> -->

            <a href="login">
                <p>로그인 하러 가기</p>
            </a>

        </div>
    </section>

</body>
</html>