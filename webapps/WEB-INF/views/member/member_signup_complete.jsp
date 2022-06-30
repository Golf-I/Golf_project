<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title></title>
	<link href="${pageContext.request.contextPath}/resources/css/join03.css" rel="stylesheet">
	<script	src="${pageContext.request.contextPath}/resources/js/member_notice.js"></script>
</head>
<body>

	<section class="join">
	<div class="join_ex">

		<p>회원가입</p>

		<div class="join_box"> 

			<div class="join_logo">

				<div>
					<img
						src="${pageContext.request.contextPath}/resources/img/join_logo.png">
				</div>

				<p>회원가입이 완료되었습니다.</p>

			</div>
			<!--로고-->


			<div class="join_bottom">
				<div class="join_txt">
					<p>이메일 수신 동의 : 2022-05-18</p>
					<p>문자메시지 수신동의 : 2022-05-18</p>
				</div>
			</div>

		</div>
		<!--밑-->

		<a href="login">
			<p>확인</p>
		</a>
	</div>
	</section>

</body>
</html>