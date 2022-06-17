<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>freegolf</title>
<link
	href="${pageContext.request.contextPath}/resources/css/freegolf_detail.css"
	rel="stylesheet">
</head>
<body>

	<input type="checkbox" id="call">
	<input type="checkbox" id="talk">
	<input type="checkbox" id="link">
	<input type="checkbox" id="map">

	<section class="freegolf_detail_box">
	<div class="freegolf_detail">

		<div class="route">

			<a href="index"> <img
				src="${pageContext.request.contextPath}/resources/img/freegolf/home.png">
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
					src="${pageContext.request.contextPath}/resources/img/freegolf/call_detail.png">
				</label>

				<div class="call_sheet">
					<p>
						상담센터 <span>1588-1588</span>
					</p>
					<p>평일 09:00~18:00 / 일요일 및 공휴일 휴무</p>
				</div>

				<label class="detail_d" for="talk"> <img
					src="${pageContext.request.contextPath}/resources/img/freegolf/talk_detail.png">
				</label>

				<div class="talk_sheet">
					<div>
						<p>실시간 문의하기</p>
					</div>
					<div></div>
					<div class="talk_btn">

						<a href="#"> <img
							src="${pageContext.request.contextPath}/resources/img/freegolf/plus.png">
						</a> <input type="text" id="talk_box"> <input type="button"
							value="전송" id="talk_btn">
					</div>
				</div>

				<label class="detail_l" for="link"> <img
					src="${pageContext.request.contextPath}/resources/img/freegolf/link_detail.png">
				</label>

				<div class="link_sheet">
					<a href="#"> <img
						src="${pageContext.request.contextPath}/resources/img/freegolf/band_link.png">
					</a> <a href="#"> <img
						src="${pageContext.request.contextPath}/resources/img/freegolf/facebook_link.png">
					</a> <a href="#"> <img
						src="${pageContext.request.contextPath}/resources/img/freegolf/kakao_link.png">
					</a> <a href="#"> <img
						src="${pageContext.request.contextPath}/resources/img/freegolf/twiter_link.png">
					</a> <a href="#"> <img
						src="${pageContext.request.contextPath}/resources/img/freegolf/line_link.png">
					</a>
				</div>

				<label class="detail_m" for="map"> <img
					src="${pageContext.request.contextPath}/resources/img/freegolf/map_detail.png">
				</label>

				<div class="map_sheet">
					<label for="map" class="close"><img
						src="${pageContext.request.contextPath}/resources/img/freegolf/close.png"></label>
				</div>

			</div>
			<!--icon-->
		</div>
		<!--title-->

		<div class="line01"></div>

		<div class="img_box">

			<div class="big_img"></div>

			<div class="mini_img_box">

				<div></div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
			</div>

		</div>
		<!--img_box-->

		<input type="button" id="right_m"> <input type="button"
			id="left_m">

		<div class="plans_chk_box">

			<div class="calendar_box">


				<div class="calendar">

					<div class="month">

						<label for="left_m"> <img
							src="${pageContext.request.contextPath}/resources/img/freegolf/left.png">
						</label>
						<p>2022-05</p>
						<label for="right_m"> <img
							src="${pageContext.request.contextPath}/resources/img/freegolf/right.png">
						</label>

					</div>


					<div class="day_c">
						<p>월</p>
						<p>화</p>
						<p>수</p>
						<p>목</p>
						<p>금</p>
						<p>토</p>
						<p>일</p>
					</div>

					<div class="day_data">

						<a href="#">
							<p>01</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>02</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>03</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>04</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>05</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>06</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>07</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>08</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>09</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>10</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>11</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>12</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>13</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>14</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>15</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>16</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>17</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>18</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>19</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>20</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>21</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>22</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>23</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>24</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>25</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>26</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>27</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>28</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>29</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>30</p>
							<p>1,090,000</p>
						</a> <a href="#">
							<p>31</p>
							<p>1,090,000</p>
						</a>

						<div></div>
						<div></div>
						<div></div>
						<div></div>

					</div>


				</div>
				<!--달력-->

				<input type="button" id="plus01">

				<div class="calendar_data">

					<div class="plus_btn">

						<p>※이용일 추가하기</p>

						<label for="pluse01">추가</label>

					</div>

					<div class="date_of_use">

						<p>골프장</p>
						<p>홍길동</p>
						<p>가격(1인기준)</p>
						<p>90,000원</p>
						<p>이용일</p>
						<p>2022-05-25</p>
						<p>인원</p>

						<div>
							<select>
								<option>2명</option>
								<option>3명</option>
								<option>4명</option>
								<option>5명</option>
								<option>6명</option>
							</select>
						</div>

					</div>
					<!--이용일-->

					<div class="date_of_use_data">

						<p>요금정보</p>
						<p>카트비</p>

						<div>
							<p>
								[2인1카트] ($20/18홀/1인) ($30/27홀/1인), 홀수인원 예약시 싱글카트비용<br>추가됩니다.
								- 현지지불
							</p>
						</div>

						<p>캐디비</p>
						<p>캐디피 포함</p>
						<p>캐디팁</p>
						<p>$14 / 18홀 기준 / 1인 요금</p>
						<p>기타</p>
						<p>클럽렌타비용 1일 $20</p>

					</div>
					<!--요금정보-->

				</div>
				<!--데이터-->

			</div>
			<!--달력-->

		</div>

		<div class="line02"></div>



		<div class="reservation_items">

			<div class="title_reservation">

				<div class="line_box01">

					<div class="re_title_line01"></div>
					<div class="re_title_line02"></div>
					<div class="re_title_line03"></div>

				</div>

				<div class="re_txt">
					<p>선택한 예약항목</p>
				</div>

				<div class="line_box02">

					<div class="re_title_line04"></div>
					<div class="re_title_line05"></div>
					<div class="re_title_line06"></div>

				</div>

			</div>

			<div class="reservation_top">
				<p>골프장명</p>
				<p>썬라이즈 골프장 18홀</p>
				<p>이용일</p>
				<p>2022-05-25</p>
				<p>인원</p>
				<p>2명</p>
				<p>총가격</p>
				<p>180,000원</p>
			</div>

			<div class="reservation_mid">
				<p>호텔명</p>
				<p>썬라이즈 골프장 18홀</p>
				<p>체크인</p>
				<p>2022-05-25</p>
				<p>체크아웃</p>
				<p>2022-05-27</p>
				<p>박수</p>
				<p>180,000원</p>
				<p>객실수</p>
				<p>1개</p>
				<p>총가격</p>
				<p>180,000원</p>
				<div></div>
			</div>

			<div class="reservation_bot">
				<p>이용일</p>
				<p>2022-05-25 ~ 2022-05-27</p>
				<p>이용기간</p>
				<p>2박 3일</p>
				<p>인원/수량</p>
				<p>1대</p>
				<p>총가격</p>
				<p>270,000원</p>
				<p>옵션내용</p>

				<div class="car_txt01">
					<p>
						Time 렌터카 차량 : Toyota Sienta GPS<br> 6인승 픽업장소는 도쿄 나리타 공항
						(Tokyo Narita Airport) 터미널 안<br> 도난보험, 자차보험 가입, GPS 다국어 지원
					</p>
				</div>

				<p>포함사항</p>

				<div class="car_txt02">
					<p>1일 렌터카 (1일 렌터카 (Sienta GPS 또는 동급)</p>
				</div>


			</div>

		</div>
		<!--예약항목-->

		<div class="golf_detail">

			<div class="golf_title_d">
				<div class="line_box01">
					<div class="golf_line01"></div>
					<div class="golf_line02"></div>
				</div>

				<p>골프장정보</p>

				<div class="line_box02">
					<div class="golf_line03"></div>
					<div class="golf_line04"></div>
				</div>
			</div>
			<!--타이틀-->

			<div class="golf_img_detail">

				<p>골프장명 : 센트럴 CC</p>

				<div class="golf_img_d">
					<div></div>
					<div></div>
				</div>

				<div class="golf_detail_txt">
					<p>
						총 36홀 코스로 이루어진 센트럴 골프클럽은 일본 골프코스 디자이너로 유명한 ‘나시노가＇설계해 1974년 정식 개장한
						일본의 명문 골프장입니다.<br> PGA 토너먼트, 관동 오픈 챔피언십, 일본프로오픈, 프로암대회, 각종
						아마추어 대회등 공식경기장소로 사랑받고 있는 수준급 토너먼트 골프코스이며, 각 코스마다 등급이 높아 라운드에 재미를 더
						해주는 레이아웃이 특징입니다.
					</p>
				</div>
			</div>

		</div>
		<!--골프장 정보-->

		<div class="hotel_detail">

			<div class="hotel_title_d">
				<div class="line_box03">
					<div class="hotel_line05"></div>
					<div class="hotel_line06"></div>
				</div>

				<p>숙박정보</p>

				<div class="line_box04">
					<div class="hotel_line07"></div>
					<div class="hotel_line08"></div>
				</div>
			</div>
			<!--타이틀-->

			<div class="hotel_img_detail">

				<p>숙박명 : 후지야 호텔</p>

				<div class="hotel_img_d">
					<div></div>
					<div></div>
				</div>

				<div class="hotel_detail_txt">
					<p>
						한국인이 직접 사서 운영하고 있는 호텔 후지야!<br> 이타코 강변에 위치하고 있어서,한적한 분위기가 마음을
						사로잡습니다. 4성급 비지니스급의 깔끔한 호텔이라고 보시면 됩니다. 코로나 이후 침체되었던 일본내 한국기업도 응원한다는
						점에서 의미가 깊은곳입니다.
					</p>
				</div>
			</div>

		</div>
		<!--호텔 정보-->

		<div class="option_detail">

			<div class="option_title_d">
				<div class="line_box05">
					<div class="option_line09"></div>
					<div class="option_line10"></div>
				</div>

				<p>숙박정보</p>

				<div class="line_box06">
					<div class="option_line11"></div>
					<div class="option_line12"></div>
				</div>
			</div>
			<!--타이틀-->

			<div class="option_img_detail">

				<p>옵션명 : time 렌터카 차량 : Toyota Sienta GPS</p>

				<div class="option_img_d">
					<div></div>
					<div></div>
				</div>

				<div class="option_detail_txt">
					<p>
						Time 렌터카 차량 : Toyota Sienta GPS<br> 6인승 픽업장소는 도쿄 나리타 공항
						(Tokyo Narita Airport) 터미널 안 도난보험, 자차보험 가입, GPS 다국어 지원

					</p>
				</div>
			</div>

		</div>
		<!--옵션 정보-->

	</div>
	<!--detail--> </section>
	<!--detail_box-->

</body>
</html>