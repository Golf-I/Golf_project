<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>detail01</title>
<link href="${pageContext.request.contextPath}/resources/css/detail.css"
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
					src="${pageContext.request.contextPath}/resources/img/detail01/home.png">
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
						src="${pageContext.request.contextPath}/resources/img/detail01/call_detail.png">
					</label>

					<div class="call_sheet">
						<p>
							상담센터 <span>1588-1588</span>
						</p>
						<p>평일 09:00~18:00 / 일요일 및 공휴일 휴무</p>
					</div>

					<label class="detail_d" for="talk"> <img
						src="${pageContext.request.contextPath}/resources/img/detail01/talk_detail.png">
					</label>

					<div class="talk_sheet">
						<div>
							<p>실시간 문의하기</p>
						</div>
						<div></div>
						<div class="talk_btn">

							<a href="#"> <img
								src="${pageContext.request.contextPath}/resources/img/detail01/plus.png">
							</a> <input type="text" id="talk_box"> <input type="button"
								value="전송" id="talk_btn">
						</div>
					</div>

					<label class="detail_l" for="link"> <img
						src="${pageContext.request.contextPath}/resources/img/detail01/link_detail.png">
					</label>

					<div class="link_sheet">
						<a href="#"> <img
							src="${pageContext.request.contextPath}/resources/img/detail01/band_link.png">
						</a> <a href="#"> <img
							src="${pageContext.request.contextPath}/resources/img/detail01/facebook_link.png">
						</a> <a href="#"> <img
							src="${pageContext.request.contextPath}/resources/img/detail01/kakao_link.png">
						</a> <a href="#"> <img
							src="${pageContext.request.contextPath}/resources/img/detail01/twiter_link.png">
						</a> <a href="#"> <img
							src="${pageContext.request.contextPath}/resources/img/detail01/line_link.png">
						</a>
					</div>

					<label class="detail_m" for="map"> <img
						src="${pageContext.request.contextPath}/resources/img/detail01/map_detail.png">
					</label>

					<div class="map_sheet">
						<label for="map" class="close"><img
							src="${pageContext.request.contextPath}/resources/img/detail01/close.png"></label>
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
										src="${pageContext.request.contextPath}/resources/img/detail01/golf_icon.png">
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
										src="${pageContext.request.contextPath}/resources/img/detail01/hotel_icon.png">
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
										src="${pageContext.request.contextPath}/resources/img/detail01/man_icon.png">
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
										src="${pageContext.request.contextPath}/resources/img/detail01/go_icon.png">
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
										src="${pageContext.request.contextPath}/resources/img/detail01/arrival_icon.png">
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
										src="${pageContext.request.contextPath}/resources/img/detail01/good_icon.png">
								</div>
								<p>상품별점</p>
							</div>

							<div class="evaluation_s">
								<p>★★★★☆</p>
							</div>

						</div>
						<!--상품별점-->

						<div class="money">

							<div class="money_title">
								<div>
									<img
										src="${pageContext.request.contextPath}/resources/img/detail01/money_icon.png">
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
			</div>

			<div class="line02"></div>

			<div class="red_text">
				<p>※원하시는 기간 금액 옆에 예약하기를 클릭하시면 예약 페이지로 이동됩니다.</p>
			</div>

			<div class="reservation_zon">

				<div class="reservation">

					<div class="title_res">
						<p>도쿄 이타코(水鄕) 골프 2박 3일!</p>
					</div>

					<div class="period">
						<p>기간</p>

						<div class="period01">
							<p>2022-05-01</p>
							<p>~</p>
							<p>2022-05-15</p>
						</div>

						<div class="period02">
							<p>2022-05-01</p>
							<p>~</p>
							<p>2022-05-30</p>
						</div>

						<div class="period03">
							<p>2022-06-01</p>
							<p>~</p>
							<p>2022-06-30</p>
						</div>

						<div class="period04">
							<p>2022-06-15</p>
							<p>~</p>
							<p>2022-06-30</p>
						</div>

					</div>

					<div class="day">

						<p>일수</p>

						<div class="day01">
							<p>2박 3일</p>
						</div>

						<div class="day02">
							<p>2박 3일</p>
						</div>

						<div class="day03">
							<p>2박 3일</p>
						</div>

						<div class="day04">
							<p>2박 3일</p>
						</div>

					</div>

					<div class="lodging">

						<p>숙소</p>

						<div class="lodging01">
							<p>후지야호텔</p>
						</div>

						<div class="lodging02">
							<p>후지야호텔</p>
						</div>

						<div class="lodging03">
							<p>후지야호텔</p>
						</div>

						<div class="lodging04">
							<p>후지야호텔</p>
						</div>
					</div>

					<div class="airline">

						<p>항공</p>

						<div class="airline01">
							<p>에어부산</p>
						</div>

						<div class="airline02">
							<p>에어부산</p>
						</div>

						<div class="airline03">
							<p>에어부산</p>
						</div>

						<div class="airline04">
							<p>에어부산</p>
						</div>
					</div>


					<div class="weekday">

						<p>주중요금</p>

						<div class="weekday01">

							<div class="txt_week01">
								<p>1,090,000</p>
								<a href="#">예약하기</a>
							</div>

						</div>

						<div class="weekday02">
							<div class="txt_week02">
								<p>1,090,000</p>
								<a href="#">예약하기</a>
							</div>
						</div>

						<div class="weekday03">
							<div class="txt_week03">
								<p>1,090,000</p>
								<a href="#">예약하기</a>
							</div>
						</div>

						<div class="weekday04">
							<div class="txt_week04">
								<p>1,090,000</p>
								<a href="#">예약하기</a>
							</div>
						</div>
					</div>

					<div class="weekend">

						<p>주중요금</p>

						<div class="weekend01">

							<div class="txt_weekend01">
								<p>1,090,000</p>
								<a href="#">예약하기</a>
							</div>

						</div>

						<div class="weekend02">
							<div class="txt_weekend02">
								<p>1,090,000</p>
								<a href="#">예약하기</a>
							</div>
						</div>

						<div class="weekend03">
							<div class="txt_weekend03">
								<p>1,090,000</p>
								<a href="#">예약하기</a>
							</div>
						</div>

						<div class="weekend04">
							<div class="txt_weekend04">
								<p>1,090,000</p>
								<a href="#">예약하기</a>
							</div>
						</div>
					</div>

				</div>
				<!--right-->


				<div class="no_reservation">

					<p>예약불가 기간</p>

					<div class="no_day">
						<p>날짜</p>
						<p>2022-05-15</p>
						<p>2022-06-15</p>
						<div></div>
					</div>

					<div class="no_txt">
						<p>내용</p>
						<p>현지 독립기념일</p>
						<p>골프장 휴장일</p>
						<div></div>
					</div>

				</div>
				<!--left-->

			</div>
			<!--예약-->


			<div class="include_box">

				<div class="include_top">

					<div class="include01">

						<div class="include_txt01">

							<div class="title_in01">

								<div>
									<img
										src="${pageContext.request.contextPath}/resources/img/detail01/round.png">
								</div>

								<p>포함사항</p>

							</div>

							<p>+ 왕복항공권(유류세 & TAX 포함)</p>
							<p>+ 무제한 그린피</p>
							<p>+ 후자야 호텔 (2인 1실)</p>
							<p>+ 전일정 식사</p>

						</div>
						<!--txt-->

					</div>
					<!--포함-->


					<div class="dot01">
						<img
							src="${pageContext.request.contextPath}/resources/img/detail01/dot.png">
					</div>
					<!--선-->


					<div class="include02">

						<div class="include_txt02">

							<div class="title_in02">

								<div>
									<img
										src="${pageContext.request.contextPath}/resources/img/detail01/X.png">
								</div>

								<p>불포함사항</p>

							</div>

							<p>+ 카트비 : 2인 1카트 500엔(18홀/1인), 1인 1카트 700엔(18홀/1인)</p>
							<p>+ 캐디피 : 350엔(18홀/1인)</p>
							<p>+ 캐디팁 : 2인 1캐디 150엔(18홀/1인), 1인 1캐디 300엔(18홀/1인)</p>
							<p>+ 미팅 & 샌딩비 : $50 (1인/현장지불)</p>
							<p>+ 세탁비(의무) : 1일 100엔(1인)</p>
							<p>+ 코로나보험</p>
							<p>+ 현지 PCR 추가 비용</p>

						</div>
						<!--txt-->
					</div>
					<!--불포함-->
				</div>
				<!--top-->

				<div class="include_bottom">

					<div class="include03">

						<div class="include_txt03">

							<div class="title_in03">

								<div>
									<img
										src="${pageContext.request.contextPath}/resources/img/detail01/square.png">
								</div>

								<p>포함사항</p>

							</div>

							<p>+ 계약금 입금 후 환불 불가능합니다.</p>
							<p>+ 예약시 제출 서류 : 여권 사본, 백신 접종 증명서(영문본)</p>
							<p>+ 출국시 필요서류는 담당자를 통해 전달 드릴 예정입니다.</p>
							<p>+ 현지에서 PCR 검사가 추가 될 경우 비용은 본인 부담입니다.</p>
							<p>+ 준비 서류 꼭 프린터해서 입국 부탁드립니다. (영문)</p>
							<p>+ 여권 유효기간이 최소 6개월 이상 남아 있어야 합니다.</p>
							<p>+ 숙박은 기본 2인 1실 기준으로 홀수 인원시 싱글룸 사용하셔야 합니다.</p>
							<p>+ 라운드 미진행시 별도 그린피 환불은 없습니다.</p>
							<p>+ 예약 후 항공 좌석 및 호텔 숙박 가능 여부 담당자에게 재확인 부탁드립니다.</p>

						</div>
						<!--txt-->

					</div>
					<!--포함-->


					<div class="dot02">
						<img
							src="${pageContext.request.contextPath}/resources/img/detail01/dot02.png">
					</div>
					<!--선-->


					<div class="include04">

						<div class="include_txt04">

							<div class="title_in04">

								<div>
									<img
										src="${pageContext.request.contextPath}/resources/img/detail01/triangle.png">
								</div>

								<p>불포함사항</p>

							</div>

							<p>+ 본 상품은 예약과 동시에 전세기 상품이므로 계약금 입금 후 취소 불가능합니다. 계약금 환불
								불가입니다.</p>
							<p>+ 본 상품은 전세기 상품으로 취소시 패널티 1인 600,000원 제외 후 환불됩니다.</p>
							<p>+ 본 상품은 전세기 상품으로 출국 후 PCR 검사 결과 양성시 전액 환불되지 않습니다.</p>
							<p>+ 국제선 탑승시간 최소 2시간 전 수속 대기해주세요.</p>
							<p>+ 아티타야 숙소에는 수영장/헬스장/식당/술집/마사지샵 등 서비스 시설이 구비되어 있습니다.</p>

						</div>
						<!--txt-->
					</div>
					<!--불포함-->
				</div>
				<!--bottom-->


			</div>
			<!--포함/불포함-->



			<div class="calendar_box">
				<p>여행일정</p>

				<div class="reference">

					<div class="refernce_box">

						<div class="reference_txt">

							<div>
								<img
									src="${pageContext.request.contextPath}/resources/img/detail01/question.png">
							</div>

							<p>참고하세요.</p>

						</div>

						<p>여행 일정은 계약 체결 시 예상하지 못한 부득이한 사정 등이 발생하는 경우 여행자의 사전 동의를 거쳐
							변경될 수 있음을 양지하여 주시길 바랍니다.</p>

					</div>

				</div>
				<!--참고하세요-->


				<div class="calender_left">

					<div class="calendar_01">

						<div class="one_day">
							<p>1일차</p>
						</div>

						<div class="routine01">
							<div class="routin_box01">
								<p>
									<span>[08:00]</span> 인천 국제공항 출발 (에어부산)
								</p>
								<p>
									<span>[10:30]</span> 일본 나리타 국제공항 도착
								</p>
								<p>직원 미팅 후 중식</p>
								<p>중식 식사 후 골프장으로 이동 (약 50분 소요)</p>
								<p>센트럴 CC 2부 18홀 라운딩</p>
								<p>저녁 식사 후 호텔 투숙 및 휴식</p>
							</div>
						</div>

						<div class="food_ex_01">

							<div class="food01">

								<div class="food_box01">
									<p>조식 : 불포함</p>
									<p>중식 : 일본라면</p>
									<p>석식 : 초밥 디너세트</p>
								</div>

							</div>

							<div class="lodging_box01">
								<p>
									<span>호텔</span>후지야 호텔
								</p>
							</div>
						</div>

					</div>
					<!--1일차-->

					<div class="calendar_02">

						<div class="two_day">
							<p>2일차</p>
						</div>

						<div class="routine02">

							<div class="routin_box02">

								<p>호텔 조식 후 골프장으로 이동 (약 50분 소요)</p>
								<p>뉴센트럴CC 1부 18홀 라운딩</p>
								<p>저녁식사 후 호텔 투숙 및 휴식</p>

								<div class="routin_img">
									<div>
										<img
											src="${pageContext.request.contextPath}/resources/img/detail01/two_day_01.png">
									</div>
									<div>
										<img
											src="${pageContext.request.contextPath}/resources/img/detail01/two_day_02.png">
									</div>
									<div>
										<img
											src="${pageContext.request.contextPath}/resources/img/detail01/two_day_03.png">
									</div>
								</div>

							</div>

						</div>

						<div class="food_ex_02">

							<div class="food02">

								<div class="food_box02">
									<p>조식 : 호텔식</p>
									<p>중식 : 클럽식</p>
									<p>석식 : 일식</p>
								</div>

							</div>

							<div class="lodging_box02">
								<p>
									<span>호텔</span>후지야 호텔
								</p>
							</div>
						</div>

					</div>
					<!--2일차-->



					<div class="calendar_03">

						<div class="three_day">
							<p>3일차</p>
						</div>

						<div class="routine03">
							<div class="routin_box03">
								<p>호텔 조식 후 골프장으로 이동 (약 50분 소요)</p>
								<p>노스쇼어CC 1부 18홀 라운딩 공항으로 이동</p>
								<p>
									<span>[19:30]</span> 일본 나리타 국제공항 출발 (에어부산)
								</p>
								<p>
									<span>[21:00]</span> 인천 국제공항 도착
								</p>
							</div>
						</div>

						<div class="food_ex_03">

							<div class="food03">

								<div class="food_box03">
									<p>조식 : 호텔식</p>
									<p>중식 : 클럽식</p>
									<p>석식 : 불포함</p>
								</div>

							</div>

							<div class="lodging_box03">
								<p>
									<span>호텔</span>후지야 호텔
								</p>
							</div>
						</div>

					</div>
					<!--3일차-->
				</div>
				<!--일정 왼쪽-->

				<div class="calender_right">


					<div class="calender_r_title">
						<p>다른 인기상품</p>
					</div>

					<a href="#">
						<div class="product01">
							<div class="img_pro01">
								<img
									src="${pageContext.request.contextPath}/resources/img/detail01/product01.png">
							</div>

							<div class="product01_ex">

								<div class="product01_txt">
									<p>인천출발></p>
									<p>태국/치앙마이</p>
									<p>치앙마이 아티타야 3박 5일</p>
									<p>1,090,000원~</p>
								</div>

								<div class="review01">
									<div class="star01">
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail01/star.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail01/star.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail01/star.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail01/star.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail01/02star.png">
										</div>
									</div>

									<div class="good_icon01">
										<div class="talk_r_01">
											<div>
												<img
													src="${pageContext.request.contextPath}/resources/img/detail01/talk.png">
											</div>
											<p>203</p>
										</div>

										<div class="good_r_01">
											<div>
												<img
													src="${pageContext.request.contextPath}/resources/img/detail01/good.png">
											</div>
											<p>8.5</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</a> <a href="#">
						<div class="product02">
							<div class="img_pro02">
								<img
									src="${pageContext.request.contextPath}/resources/img/detail01/product01.png">
							</div>

							<div class="product02_ex">

								<div class="product02_txt">
									<p>인천출발></p>
									<p>태국/치앙마이</p>
									<p>치앙마이 아티타야 3박 5일</p>
									<p>1,090,000원~</p>
								</div>

								<div class="review02">
									<div class="star02">
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail01/star.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail01/star.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail01/star.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail01/star.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail01/02star.png">
										</div>
									</div>

									<div class="good_icon02">
										<div class="talk_r_02">
											<div>
												<img
													src="${pageContext.request.contextPath}/resources/img/detail01/talk.png">
											</div>
											<p>203</p>
										</div>

										<div class="good_r_02">
											<div>
												<img
													src="${pageContext.request.contextPath}/resources/img/detail01/good.png">
											</div>
											<p>8.5</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</a>


				</div>
				<!--일정 오른쪽-->

			</div>
			<!--일정-->

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
							아마추어 대회등 공식경기장소로 사랑받고 있는 수준급 토너먼트 골프코스이며, 각 코스마다 등급이 높아 라운드에 재미를
							더 해주는 레이아웃이 특징입니다.
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
							사로잡습니다. 4성급 비지니스급의 깔끔한 호텔이라고 보시면 됩니다. 코로나 이후 침체되었던 일본내 한국기업도
							응원한다는 점에서 의미가 깊은곳입니다.

						</p>
					</div>
				</div>

			</div>
			<!--호텔 정보-->

		</div>
		<!--detail-->
	</section>
	<!--box-->


</body>
</html>