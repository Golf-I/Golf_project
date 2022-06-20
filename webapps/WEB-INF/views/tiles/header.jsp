<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>main</title>
	<link href="${pageContext.request.contextPath}/resources/css/index.css"	rel="stylesheet">
	
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
  	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/npm/js-cookie@2/src/js.cookie.min.js"></script>
</head>
<body>

	<input type="checkbox" id="menu_btn">

	<div class="header">
		<div class="header_top">
			<div class="button">
				<div class="favorites">
					<p>
						<a href="#">즐겨찾기</a>
					</p>
				</div>
				<!--즐겨찾기-->
				<div class="resercation">
					<p>
						<a href="#">예약확인
					</p>
				</div>
				<!--예약확인-->
			</div>
			<!--button-->
		</div>
		<!--header_top-->

		<div class="header_middle">
			<div class="middle_top">
				<div class="logo">
					<a href="index"> <img
						src="${pageContext.request.contextPath}/resources/img/logo.png">
					</a>
				</div>
				<!--로고-->

				<div class="search">
					<div class="calendar">
						<img
							src="${pageContext.request.contextPath}/resources/img/calendar.png">
					</div>

					<div class="qna_button">
						<img
							src="${pageContext.request.contextPath}/resources/img/search_btn.png">
					</div>
				</div>
				<!--검색 박스-->

				<div class="call_header">
					<img
						src="${pageContext.request.contextPath}/resources/img/call_header.png">
				</div>

				<div class="login_btn">
					<div class="login">
						<a href="login"> <img
							src="${pageContext.request.contextPath}/resources/img/login.png">
						</a>
					</div>

					<label for="menu_btn"> <img
						src="${pageContext.request.contextPath}/resources/img/menu.png">
					</label>
				</div>

			</div>
			<!--top-->
			<div class="middle_bottom">
				<div>
					<a href="hashtag">#MD추천</a>
				</div>
				<div>
					<a href="hashtag">#해외전지훈련</a>
				</div>
				<div>
					<a href="hashtag">#인천출발</a>
				</div>
				<div>
					<a href="hashtag">#코로나무격리</a>
				</div>
				<div>
					<a href="hashtag">#부산출발</a>
				</div>
				<div>
					<a href="hashtag">#대구출발</a>
				</div>
			</div>
			<!--해시태그-->
		</div>
		<!--header_middle-->

		<div class="lnb_ex">
			<div class="lnb">
				<ul>
					<li><a href="category">일본골프</a>
						<ul>
							<div class="sheet_01">
								<li><a href="category">도쿄/간토</a></li>
								<li><a href="category">오사카/간사이</a></li>
								<li><a href="category">홋카이도/삿포로</a></li>
								<li><a href="category">후쿠오카/야마구치</a></li>
								<li><a href="category">가고시마/미아자키</a></li>
								<li><a href="category">구가모토/오이타</a></li>
								<li><a href="category">나가사키/사가</a></li>
								<li><a href="category">아오모리/니가타</a></li>
								<li><a href="category">나고야/도카이</a></li>
								<li><a href="category">오카야마/츄고쿠</a></li>
								<li><a href="category">다카마츠/마츠야마</a></li>
							</div>
						</ul>
						<!--소메뉴--></li>
					<!--일본골프-->

					<div class="line01"></div>

					<li><a href="category">태국골프</a>
						<ul>
							<div class="sheet_02">
								<li><a href="category">방콕/파타야</a></li>
								<li><a href="category">치앙마이/치앙라이</a></li>
								<li><a href="category">푸켓</a></li>
								<li><a href="category">칸차나부리/야유타야</a></li>
								<li><a href="category">후아힌</a></li>
							</div>
							<!--sheet02-->
						</ul>
						<!--소메뉴--></li>
					<!--태국골프-->

					<div class="line02"></div>

					<li><a href="category">베트남골프</a>
						<ul>
							<div class="sheet_03">
								<li><a href="category">나트랑</a></li>
								<li><a href="category">푸꾸옥</a></li>
								<li><a href="category">다낭</a></li>
								<li><a href="category">하노이</a></li>
								<li><a href="category">호치민</a></li>
								<li><a href="category">달랏</a></li>
							</div>
							<!--sheet03-->
						</ul>
						<!--소메뉴--></li>
					<!--베트남골프-->

					<div class="line03"></div>

					<li><a href="category">대만골프</a>
						<ul>
							<div class="sheet_04">
								<li><a href="category">타이페이/타이중</a></li>
								<li><a href="category">카오슝</a></li>
								<li><a href="category">화련</a></li>
							</div>
						</ul>
						<!--소메뉴--></li>
					<!--대만-->

					<div class="line04"></div>

					<li><a href="event">기획전/이벤트</a></li>
					<!--기획전/이벤트-->

					<div class="line05"></div>

					<li><a href="mypage">마이페이지</a></li>

					<div class="line06"></div>

					<li><a href="#">회원권/아카데미</a>
						<ul>
							<div class="sheet_05">
								<li><a href="#">회원권</a></li>
								<li><a href="#">아카데미</a></li>
							</div>
						</ul></li>

				</ul>
				<!--전체lnb-->

			</div>
			<!--lnb-->

			<div class="btn_sheet">
				<ul>
					<li><a href="category">일본골프</a>
						<ul>
							<div class="sub_menu01">
								<li><a href="category">도쿄/간도</a></li>
								<li><a href="category">오사카/간사이</a></li>
								<li><a href="category">홋카이도/삿포로</a></li>
								<li><a href="category">오키나와/나하</a></li>
								<li><a href="category">후쿠오카/야마구치</a></li>
								<li><a href="category">가고시마/미야자키</a></li>
								<li><a href="category">구마모토/오이타</a></li>
								<li><a href="category">나카사키/사가</a></li>
								<li><a href="category">아오모리/니카타</a></li>
								<li><a href="category">나고야/도카이</a></li>
								<li><a href="category">오카야마/츄고쿠</a></li>
								<li><a href="category">다카마츠.마츠아마</a></li>
							</div>
						</ul>
						<!--일본--></li>
					<!--일본-->

					<div class="line01">
						<div class="menu_line01"></div>
						<div class="menu_line02"></div>
					</div>

					<li><a href="category">태국골프</a>
						<ul>
							<div class="sub_menu02">
								<li><a href="category">방콕/파타야</a></li>
								<li><a href="category">치앙마이/치앙라이</a></li>
								<li><a href="category">푸켓</a></li>
								<li><a href="category">칸차나부리/아유타야</a></li>
								<li><a href="category">후아힌</a></li>
							</div>
						</ul>
						<!--태국--></li>
					<!--태국-->

					<div class="line02">
						<div class="menu_line03"></div>
						<div class="menu_line04"></div>
					</div>

					<li><a href="category">베트남골프</a>
						<ul>
							<div class="sub_menu03">
								<li><a href="category">나트랑</a></li>
								<li><a href="category">푸꾸옥</a></li>
								<li><a href="category">다낭</a></li>
								<li><a href="category">하노이</a></li>
								<li><a href="category">호치민</a></li>
								<li><a href="category">달랏</a></li>
							</div>
						</ul>
						<!--베트남--></li>
					<!--베트남-->

					<div class="line03">
						<div class="menu_line05"></div>
						<div class="menu_line06"></div>
					</div>

					<li><a href="category">대만골프</a>
						<ul>
							<div class="sub_menu04">
								<li><a href="category">가오슝</a></li>
								<li><a href="category">타이중</a></li>
								<li><a href="category">타이페이</a></li>
								<li><a href="category">신죽</a></li>
								<li><a href="category">타오위안</a></li>
								<li><a href="category">이란/화련</a></li>
							</div>
						</ul>
						<!--대만--></li>
					<!--대만-->

					<div class="line04">
						<div class="menu_line07"></div>
						<div class="menu_line08"></div>
					</div>

					<li><a href="#">회원권/아카데미</a>
						<ul>
							<div class="sub_menu05">
								<li><a href="#">회원권</a></li>
								<li><a href="#">아카데미</a></li>
							</div>
						</ul>
						<!--회원권--></li>
					<!--회원권-->

					<div class="line05">
						<div class="menu_line09"></div>
						<div class="menu_line10"></div>
					</div>


				</ul>
			</div>


		</div>
		<!--lnb_ex-->

	</div>
	<!--header-->

</body>
</html>