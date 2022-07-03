<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>detail02</title>
	<link href="${pageContext.request.contextPath}/resources/css/detail02.css" rel="stylesheet">
	<script	src="${pageContext.request.contextPath}/resources/js/product_detail.js"></script>
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
					src="${pageContext.request.contextPath}/resources/img/detail02/home.png">
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
						src="${pageContext.request.contextPath}/resources/img/detail02/call_detail.png">
					</label>

					<div class="call_sheet">
						<p>
							상담센터 <span>1588-1588</span>
						</p>
						<p>평일 09:00~18:00 / 일요일 및 공휴일 휴무</p>
					</div>

					<label class="detail_d" for="talk"> <img
						src="${pageContext.request.contextPath}/resources/img/detail02/talk_detail.png">
					</label>

					<div class="talk_sheet">
						<div>
							<p>실시간 문의하기</p>
						</div>
						<div></div>
						<div class="talk_btn">

							<a href="#"> <img
								src="${pageContext.request.contextPath}/resources/img/detail02/plus.png">
							</a> <input type="text" id="talk_box"> <input type="button"
								value="전송" id="talk_btn">
						</div>
					</div>

					<label class="detail_l" for="link"> <img
						src="${pageContext.request.contextPath}/resources/img/detail02/link_detail.png">
					</label>

					<div class="link_sheet">
						<a href="#"> <img
							src="${pageContext.request.contextPath}/resources/img/detail02/band_link.png">
						</a> <a href="#"> <img
							src="${pageContext.request.contextPath}/resources/img/detail02/facebook_link.png">
						</a> <a href="#"> <img
							src="${pageContext.request.contextPath}/resources/img/detail02/kakao_link.png">
						</a> <a href="#"> <img
							src="${pageContext.request.contextPath}/resources/img/detail02/twiter_link.png">
						</a> <a href="#"> <img
							src="${pageContext.request.contextPath}/resources/img/detail02/line_link.png">
						</a>
					</div>

					<label class="detail_m" for="map"> <img
						src="${pageContext.request.contextPath}/resources/img/detail02/map_detail.png">
					</label>

					<div class="map_sheet" id="map_canvas">
<%--					
						<label for="map" class="close">
 						<img src="${pageContext.request.contextPath}/resources/img/detail01/close.png"> 
						</label>
--%>
						<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCvyMtPQMvAEecQKPi4LaKF5M7-DRIjWNs&callback=showmap"></script>
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
										src="${pageContext.request.contextPath}/resources/img/detail02/golf_icon.png">
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
										src="${pageContext.request.contextPath}/resources/img/detail02/hotel_icon.png">
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
										src="${pageContext.request.contextPath}/resources/img/detail02/man_icon.png">
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
										src="${pageContext.request.contextPath}/resources/img/detail02/go_icon.png">
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
										src="${pageContext.request.contextPath}/resources/img/detail02/arrival_icon.png">
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
										src="${pageContext.request.contextPath}/resources/img/detail02/good_icon.png">
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
										src="${pageContext.request.contextPath}/resources/img/detail02/money_icon.png">
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


			<div class="grade_box">

				<div class="grade01">

					<p>
						<span>8.9</span>/10
					</p>

					<div class="star01">
						<div>
							<img
								src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
						</div>
						<div>
							<img
								src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
						</div>
						<div>
							<img
								src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
						</div>
						<div>
							<img
								src="${pageContext.request.contextPath}/resources/img/detail02/02star_detail.png">
						</div>
						<div>
							<img
								src="${pageContext.request.contextPath}/resources/img/detail02/03star_detail.png">
						</div>
					</div>

					<p>총 00명 참여</p>

				</div>
				<!--01-->

				<div class="grade02">
					<p>9.2</p>
					<p>페이웨이/그린</p>
				</div>


				<div class="grade03">
					<p>9.2</p>
					<p>플레이 속도</p>
				</div>

				<div class="grade04">
					<p>9.2</p>
					<p>캐디</p>
				</div>

				<div class="grade05">
					<p>9.2</p>
					<p>부대시설</p>
				</div>

				<div class="grade06">
					<p>9.2</p>
					<p>가이드</p>
				</div>

			</div>
			<!--평점-->

			<div class="type01">

				<p>
					전체<span> 2개</span>
				</p>

				<div class="line_type"></div>

				<div class="type_box">

					<p>◎ 이용한 상품에 대해 "별"을 주세요!</p>
					<p>
						평가해주신 평점은 다른 고객들의 예약에 중요한 기준이 됩니다.<br> 솔직 담백한 평점 부탁드립니다.
					</p>
					<p>※ 도배 및 악의적인 내용들은 사전 통보 없이 삭제될 수 있습니다.</p>

					<div class="typing">

						<div class="grade_right01">

							<div class="grade_box_t">

								<div class="typing01">

									<p>페이웨이/그린</p>

									<div class="typing_st_01">

										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>

										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>

										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>

										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>

										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>

									</div>

									<p>10</p>

								</div>
								<!--01-->

								<div class="typing02">

									<p>플레이속도</p>

									<div class="typing_st_02">

										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>

										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>

										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>

										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>

										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>

									</div>

									<p>10</p>

								</div>
								<!--02-->

								<div class="typing03">

									<p>캐디</p>

									<div class="typing_st_03">

										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>

										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>

										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>

										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>

										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>

									</div>

									<p>10</p>

								</div>
								<!--03-->

								<div class="typing04">

									<p>부대시설</p>

									<div class="typing_st_04">

										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>

										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>

										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>

										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>

										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>

									</div>

									<p>10</p>

								</div>
								<!--04-->

								<div class="typing05">

									<p>가이드</p>

									<div class="typing_st_05">

										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>

										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>

										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>

										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>

										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>

									</div>

									<p>10</p>

								</div>
								<!--05-->

							</div>

						</div>
						<!--right-->


						<textarea id="text01"></textarea>

					</div>
					<!--typing-->

					<div class="typing_btn">
						<input type="submit" id="subnit_t" value="등록"> <input
							type="reset" id="reset_t" value="취소">
					</div>

				</div>

			</div>
			<!--type01-->

			<div class="review_box">

				<div class="review_01">

					<div class="left_rev_01">

						<div class="grade_re_top01">

							<div class="name_left01">
								<p>평균 고객평점</p>
								<p>등록자 : 홍길동</p>
							</div>
							<!--left-->

							<div class="name_right01">

								<div class="grade_re_box01">

									<div class="grade_num01">
										<p>
											<span>8.9</span>/10
										</p>
									</div>

									<div class="grade_star01">
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/02star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/03star_detail.png">
										</div>
									</div>

								</div>
								<!--grade_re_box01-->

								<div class="bottom_txt01">
									<p>등록일 : 2022-05-01</p>
								</div>

							</div>
							<!--right-->

						</div>
						<!--top-->

						<div class="grade_re_bot01">

							<div class="golf_grade_box01">

								<div class="grade_g01">

									<p>페이웨이/그린</p>

									<div class="golf_star01">
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
									</div>

									<p>10</p>

								</div>
								<!--01-->

								<div class="grade_g02">

									<p>플레이 속도</p>

									<div class="golf_star02">
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
									</div>

									<p>10</p>

								</div>
								<!--02-->

								<div class="grade_g03">

									<p>캐디</p>

									<div class="golf_star03">
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
									</div>

									<p>10</p>

								</div>
								<!--03-->

								<div class="grade_g04">

									<p>부대시설</p>

									<div class="golf_star04">
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
									</div>

									<p>10</p>

								</div>
								<!--04-->

								<div class="grade_g05">

									<p>가이드</p>

									<div class="golf_star05">
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
									</div>

									<p>10</p>

								</div>
								<!--05-->

							</div>
						</div>
						<!--bot-->
					</div>
					<!--left-->

					<div class="right_rev_01">
						<p>※ 도배 및 악의적인 내용들은 사전 통보없이 삭제될 수 있습니다.</p>

						<textarea id="text02">조식포함 가격 생각하면 가성비 괜찮다고 생각해요. 기대 안 해서 그런지 조식도 괜찮았고 룸도 그냥 괜찮았던 것 같아요. 근처에 좋아하는 곳이 있어서 거기 방문을 위해서라도 재방문 의사 있긴 한데 방콕에 워낙 괜찮은 호텔들이 많아서 다음엔 다른 곳 이용해보고 싶어요. 그리고 지하철 타기도 편했고 바로 앞에 편의점이 있어서 편했고 특히 한국 컵라면 판매하고 있어서 좋았어요. 직원들이 영어를 엄청 잘해서 의사소통 하는 데도 문제 없었어요</textarea>
					</div>
					<!--right-->

				</div>
				<!--review01-->

				<div class="review_02">

					<div class="left_rev_02">

						<div class="grade_re_top02">

							<div class="name_left02">
								<p>평균 고객평점</p>
								<p>등록자 : 홍길동</p>
							</div>
							<!--left-->

							<div class="name_right02">

								<div class="grade_re_box02">

									<div class="grade_num02">
										<p>
											<span>8.9</span>/10
										</p>
									</div>

									<div class="grade_star02">
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/02star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/03star_detail.png">
										</div>
									</div>

								</div>
								<!--grade_re_box01-->

								<div class="bottom_txt02">
									<p>등록일 : 2022-05-01</p>
								</div>

							</div>
							<!--right-->

						</div>
						<!--top-->

						<div class="grade_re_bot02">

							<div class="golf_grade_box02">

								<div class="grade_g06">

									<p>페이웨이/그린</p>

									<div class="golf_star06">
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
									</div>

									<p>10</p>

								</div>
								<!--01-->

								<div class="grade_g07">

									<p>플레이 속도</p>

									<div class="golf_star07">
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
									</div>

									<p>10</p>

								</div>
								<!--02-->

								<div class="grade_g08">

									<p>캐디</p>

									<div class="golf_star08">
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
									</div>

									<p>10</p>

								</div>
								<!--03-->

								<div class="grade_g09">

									<p>부대시설</p>

									<div class="golf_star09">
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
									</div>

									<p>10</p>

								</div>
								<!--04-->

								<div class="grade_g10">

									<p>가이드</p>

									<div class="golf_star10">
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/img/detail02/01star_detail.png">
										</div>
									</div>

									<p>10</p>

								</div>
								<!--05-->

							</div>
						</div>
						<!--bot-->
					</div>
					<!--left-->

					<div class="right_rev_02">
						<p>※ 도배 및 악의적인 내용들은 사전 통보없이 삭제될 수 있습니다.</p>

						<textarea id="text03">조식포함 가격 생각하면 가성비 괜찮다고 생각해요. 기대 안 해서 그런지 조식도 괜찮았고 룸도 그냥 괜찮았던 것 같아요. 근처에 좋아하는 곳이 있어서 거기 방문을 위해서라도 재방문 의사 있긴 한데 방콕에 워낙 괜찮은 호텔들이 많아서 다음엔 다른 곳 이용해보고 싶어요. 그리고 지하철 타기도 편했고 바로 앞에 편의점이 있어서 편했고 특히 한국 컵라면 판매하고 있어서 좋았어요. 직원들이 영어를 엄청 잘해서 의사소통 하는 데도 문제 없었어요</textarea>
					</div>
					<!--right-->

				</div>
				<!--review01-->

			</div>
			<!--review_box-->


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