<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>detail02</title>
	<link href="${pageContext.request.contextPath}/resources/css/review.css" rel="stylesheet">
</head>
<body>

	<c:forEach items="${revList}" var="revList">

	<section class="review">
	
		<p>상품리뷰</p>
		
		<div class="line01"></div>

		<div class="title"> 
			<p>${revList.title}</p>
			<p>${fn:substring(revList.review_user, 0, fn:length(revList.review_user)-12)}***
				<span> ${revList.regdate}</span>
<!-- 			<p>골프아이를 이용해서 잘 다녀 왔습니다.</p> 
			<p>홍*동<span> 2022/05.20</span></p>-->
			</p>
		</div>
		
		<div class="line02"></div>
<%-- 		<div class="golf_img">
			<img src="${pageContext.request.contextPath}/resources/img/review/golfimg.png">
		</div> --%>

		<div class="review_box">
<!-- 			<p>	이번에 또 한번 갔다왔습니다. 골프장컨디션이 정말 좋아졌네요ㅎ 예전에는 바로옆에 스카이밸리 코스 차량비용받아서 많이 이용은
				안했던 <br>기억이납니다. <br>양쪽골프장 무료로 이용이 가능해져서 넘좋았구요 직원분들 넘
				친절합니다. <br>대우받는 느낌! 닭똥냄새 못느꼈구요 첫날 미팅시간 지연되서 20분 고생한것 빼고는 만족합니다.
				<br>5박 일정 다녀왔구요 4박은 썬라이즈ㆍ스카이밸리 라운드 마지막 하루일정은 파타야 호텔 숙박잡고 즐겁게
				호캉스 했네요. <br>마지막날 람차방18홀 라운드후 여정을 마치고 돌아 왔습니다. <br>다시 한 번
				즐거운 여행될수있게 리더해주신 직원분들 감사드립니다. <br>가을에 또 뵙겠습니다.
			</p> -->
			<p>${revList.contents}</p>
		</div>

		<div class="line03"></div>

		<div class="review_txt">
			<div>
				<img src="${pageContext.request.contextPath}/resources/img/review/question.png">
			</div>

			<p>위 내용은 고객님께서 직접 이용하신 상품에 대한 리뷰입니다.</p>
		</div>

	</section>
	
	</c:forEach>

</body>
</html>