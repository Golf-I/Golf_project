<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, minimum-scale=1.0, user-scalable=no">
    <title>join03</title>
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
					<img src="${pageContext.request.contextPath}/resources/img/join_logo.png">
				</div>

				<p>회원가입이 완료되었습니다.</p>

			</div><!--로고-->

			<div class="join_bottom">
				<div class="join_txt">
					<p>이용약관 동의 : 
					
					<script type="text/javascript">

						// 현재 날짜 불러오기
						var today = new Date();
						var year = today.getFullYear(); // 년도
						var month = today.getMonth() + 1;  // 월
						var date = today.getDate();  // 날짜
					
						document.write(year + '-' + month + '-' + date);
						
					</script>
					</p>
					
					<p>개인정보취급방침 동의 : 
					
					<script type="text/javascript">

						document.write(year + '-' + month + '-' + date);
						
					</script>
					</p>
<!-- 					<p>이메일 수신 동의 : 2022-05-18</p> -->
<!-- 					<p>문자메시지 수신동의 : 2022-05-18</p> -->
				</div>
			</div>

		</div><!--밑-->

        <div class="button">

             <a href="index">
                 <p>메인화면으로 가기</p>
             </a>

             <a href="login">
                 <p>로그인하러 가기</p>
             </a>
        </div>
           
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

        <div class="img">
            <img src="${pageContext.request.contextPath}/resources/img/find_id.png">
        </div>

        <p><span>회원가입</span>이 <span>완료</span>되었습니다.</p>

        <div class="txt_box_m_ex">

            <div class="txt_box_m">

				<p>이용약관 동의 : 
				
				<script type="text/javascript">

					// 현재 날짜 불러오기
					var today = new Date();
					var year = today.getFullYear(); // 년도
					var month = today.getMonth() + 1;  // 월
					var date = today.getDate();  // 날짜
				
					document.write(year + '-' + month + '-' + date);
					
				</script>
				</p>
				
				<p>개인정보취급방침 동의 : 
				
				<script type="text/javascript">

					document.write(year + '-' + month + '-' + date);
					
				</script>
				</p>
<!--                 <p>이메일 수신 동의 : 2022-05-18</p>
                <p>문자메시지 수신 동의 : 2022-05-18</p> -->

            </div>

        </div>

        <div class="information_m">

            <a href="index">
                <p>메인 화면으로 가기</p>
            </a>

            <a href="login">
                <p>로그인 하러 가기</p>
            </a>

        </div>

    </section>

</body>
</html>