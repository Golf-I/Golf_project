<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>detail03</title>
<link
	href="${pageContext.request.contextPath}/resources/css/detail03.css"
	rel="stylesheet">
</head>
<body>

	<input type="checkbox" id="call">
	<input type="checkbox" id="talk">
	<input type="checkbox" id="link">
	<input type="checkbox" id="map">

	<section class="detail_box"> 
		<div class="detail">

			<div class="route">

				<a href="index"> <img
					src="${pageContext.request.contextPath}/resources/img/detail03/home.png">
				</a>

				<p>></p>

				<p>일본골프</p>

				<p>></p>

				<select>
					<option>도쿄/간토</option>
					<option>오사카/간사이</option>
					<option>홋카이도/삿포로</option>
					<option>오키나와/나하</option>
					<option>후쿠오카/야마구치</option>
					<option>가고시마/미야자키</option>
					<option>구마모토/오이타</option>
					<option>나카사키/사가</option>
					<option>아오모리/니카타</option>
					<option>나고야/도카이</option>
					<option>오카야마/츄고쿠</option>
					<option>다카마츠/마츠야마</option>
				</select>

				<p>></p>

				<p>도쿄 이타코(水鄕) 골프 2박 3일!</p>

			</div>
			<!--route-->

			<div class="title_detail">
				<p>도쿄 이타코(水鄕) 골프 2박 3일!</p>

				<div class="icon_detail">

					<label class="detail_c" for="call"> <img
						src="${pageContext.request.contextPath}/resources/img/detail03/call_detail.png">
					</label>

					<div class="call_sheet">
						<p>
							상담센터 <span>1588-1588</span>
						</p>
						<p>평일 09:00~18:00 / 일요일 및 공휴일 휴무</p>
					</div>

					<label class="detail_d" for="talk"> <img
						src="${pageContext.request.contextPath}/resources/img/detail03/talk_detail.png">
					</label>

					<div class="talk_sheet">
						<div>
							<p>실시간 문의하기</p>
						</div>
						<div></div>
						<div class="talk_btn">

							<a href="#"> <img
								src="${pageContext.request.contextPath}/resources/img/detail03/plus.png">
							</a> <input type="text" id="talk_box"> <input type="button"
								value="전송" id="talk_btn">
						</div>
					</div>

					<label class="detail_l" for="link"> <img
						src="${pageContext.request.contextPath}/resources/img/detail03/link_detail.png">
					</label>

					<div class="link_sheet">
						<a href="#"> <img
							src="${pageContext.request.contextPath}/resources/img/detail03/band_link.png">
						</a> <a href="#"> <img
							src="${pageContext.request.contextPath}/resources/img/detail03/facebook_link.png">
						</a> <a href="#"> <img
							src="${pageContext.request.contextPath}/resources/img/detail03/kakao_link.png">
						</a> <a href="#"> <img
							src="${pageContext.request.contextPath}/resources/img/detail03/twiter_link.png">
						</a> <a href="#"> <img
							src="${pageContext.request.contextPath}/resources/img/detail03/line_link.png">
						</a>
					</div>

					<label class="detail_m" for="map"> <img
						src="${pageContext.request.contextPath}/resources/img/detail03/map_detail.png">
					</label>

					<div class="map_sheet">
						<label for="map" class="close"><img
							src="${pageContext.request.contextPath}/resources/img/detail03/close.png"></label>
					</div>

				</div>
				<!--icon-->
			</div>
			<!--title-->

			<div class="line01"></div>

			<div class="detail_img_box">

				<div class="detail_left"></div>
				<div class="detail_right">

					<div class="explanation">

						<div class="golf">

							<div class="golf_title">
								<div>
									<img
										src="${pageContext.request.contextPath}/resources/img/detail03/golf_icon.png">
								</div>
								<p>골프장</p>
							</div>

							<div class="course">
								<p>센트럴CC, 뉴센트럴CC, 노스쇼어CC</p>
							</div>

						</div>
						<!--골프장-->

						<div class="hotel">

							<div class="hotel_title">
								<div>
									<img
										src="${pageContext.request.contextPath}/resources/img/detail03/hotel_icon.png">
								</div>
								<p>숙박지</p>
							</div>

							<div class="hotel_name">
								<p>후지야 호텔 (2인 1실 기준)</p>
							</div>

						</div>
						<!--호텔-->

						<div class="people">

							<div class="people_title">
								<div>
									<img
										src="${pageContext.request.contextPath}/resources/img/detail03/man_icon.png">
								</div>
								<p>최소인원</p>
							</div>

							<div class="people_num">
								<p>4명</p>
							</div>

						</div>
						<!--최소인원-->

						<div class="region">

							<div class="region_title">
								<div>
									<img
										src="${pageContext.request.contextPath}/resources/img/detail03/go_icon.png">
								</div>
								<p>출발지역</p>
							</div>

							<div class="region_course">
								<p>인천공항</p>
							</div>

						</div>
						<!--출발지역-->

						<div class="arrival">

							<div class="arrival_title">
								<div>
									<img
										src="${pageContext.request.contextPath}/resources/img/detail03/arrival_icon.png">
								</div>
								<p>도착지역</p>
							</div>

							<div class="arrival_course">
								<p>고쿄/나리타</p>
							</div>

						</div>
						<!--도착지역-->

						<div class="evaluation">

							<div class="evaluation_title">
								<div>
									<img
										src="${pageContext.request.contextPath}/resources/img/detail03/good_icon.png">
								</div>
								<p>상품별점</p>
							</div>

							<div class="evaluation_s">
								<p>★★★★☆</p>

								<p>평점 : 8.5점</p>
							</div>


						</div>
						<!--상품별점-->

						<div class="money">

							<div class="money_title">
								<div>
									<img
										src="${pageContext.request.contextPath}/resources/img/detail03/money_icon.png">
								</div>
								<p>상품최적가</p>
							</div>

							<div class="money_num">
								<p>1,090,000~</p>
							</div>

						</div>
						<!--골프장-->

					</div>
					<!--설명-->

					<div class="img_mini">
						<div></div>
						<div></div>
						<div></div>
						<div></div>
						<div></div>
					</div>
					<!--작은 이미지-->

				</div>
				<!--right-->


			</div>
			<!--img_box-->

			<div class="detail_menu_box">

				<a href="detail01">
					<p>가격/상품정보</p>
				</a> <a href="detail02">
					<p>상품별점/평점</p>
				</a> <a href="detail03">
					<p>상품리뷰</p>
				</a>

				<div class="line01"></div>

			</div>
			<!--링크-->

			<div class="review_ex">

				<p>상품리뷰</p>

				<div class="review">

					<div class="review_box">

						<div class="review_left">

							<div class="reference">

								<div>
									<img
										src="${pageContext.request.contextPath}/resources/img/detail03/question.png">
								</div>

								<p>참고하세요.</p>
							</div>

							<p>
								상품리뷰는 그 상품을 사용해보신 경험을 바탕으로 적어주세요 또한 골프아이는 가공된 리뷰를 사용하지 않습니다.<br>
								본 게시판은 상품리뷰와 관련된 게시판이므로 게시판 성격과 맞지 않는 글은 이동 또는 삭제 될 수 있습니다.
								고객님들의 양해 부탁 드립니다.
							</p>

						</div>
						<!--left-->

						<a href="#">
							<div class="review_right">
								<p>리뷰작성</p>
							</div>
						</a>
					</div>

				</div>
				<!--review-->

				<div class="member_review">

					<a href="javascript:open('detail03_review');">
						<div class="review_m_01">

							<div class="review_top">
								<div>
									<img
										src="${pageContext.request.contextPath}/resources/img/detail03/member.png">
								</div>

								<p>홍*동</p>

								<p>2022.05.20</p>
							</div>

							<p>이번에 또 한번 갔다왔습니다. 골프장컨디션이 정말 좋아졌네요ㅎ 예전에는 바로옆에 스카이밸리 코스
								차량비용받아서 많이 이용은 안했던 기억이납니다. 양쪽골프장 무료로 이용이 가능해져서 넘좋았구요 직원분들 넘
								친절합니다. 대우받는 느낌! 닭똥냄새 못느꼈구요 첫날 미팅시간 지연되서 20분 고생한것 빼고는 만족합니다 5박일정
								다녀왔구요 4박은 썬라이즈ㆍ스카이밸리 라운드 마지막 하루일정은 파타야 호텔숙박잡고 즐겁게 호캉스 했네요 마지막날
								람차방18홀 라운드후 여정을 마치고 돌아 왔습니다. 다시한번 즐거운 여행될수있게 리더해주신 직원분들 감사드립니다
								가을에 또 뵙겠습니다.</p>
						</div>
					</a>

					<div class="line_r_01"></div>

					<a href="#">

						<div class="review_m_02">

							<div class="review_mid">
								<div>
									<img
										src="${pageContext.request.contextPath}/resources/img/detail03/member.png">
								</div>

								<p>장*빈</p>

								<p>2022.05.07</p>
							</div>

							<p>
								19년 2월에 이용자들의 갑질 후기보고 냉정하게 좋은거 좋고 아쉬운거 적은 후기를 썼는데<br> 이젠
								가성비 갑의 스테이골프의 간판 골프장이 되셨군요<br> 축하드립니다.<br>
								<br> 이후 댓글을 보니 숙소의 수량및 수질 문제, 노후된 카트 문제, 수영장의 수질 문제, 페어웨이
								관리 등이 거론되는군요<br> 이런 부분까지 잘 살펴 계속 좋은 골프장으로 유지되길 바랍니다.
							</p>
						</div>

					</a>

					<div class="line_r_02"></div>

					<a href="#">
						<div class="review_m_03">

							<div class="review_bot">
								<div>
									<img
										src="${pageContext.request.contextPath}/resources/img/detail03/member.png">
								</div>

								<p>이*년</p>

								<p>2022.04.22</p>
							</div>

							<p>
								공항과의 짧은 거리로 시간을 절약할 수 있었으며, 음식은 집에서 먹는 것 보다 더 좋은 것 같네요.<br>
								인근 스카이벨리cc는 까다롭지만 은근 도전의식을 불러 일으키는 코스 설계로 재미를 더해 주어 2번이나 갔었고요.<br>
								주변 양계장의 문제만 줄여 준다면 더할 나위가 없겠네요.
							</p>
						</div>
					</a>

					<div class="line_r_03"></div>

				</div>
				<!--리뷰존-->
			</div>
			<!--ex-->

			<div class="number_btn">
				<a href="#">
					<p><</p>
				</a> <a href="#">
					<p>1</p>
				</a> <a href="#">
					<p>2</p>
				</a> <a href="#">
					<p>3</p>
				</a> <a href="#">
					<p>4</p>
				</a> <a href="#">
					<p>5</p>
				</a> <a href="#">
					<p>6</p>
				</a> <a href="#">
					<p>7</p>
				</a> <a href="#">
					<p>></p>
				</a>

			</div>

		</div>
		<!--detail-->

	</section>

</body>
</html>