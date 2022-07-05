<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>sub</title>
<link href="${pageContext.request.contextPath}/resources/css/sub.css"
	rel="stylesheet">
</head>
<body>

	<section class="sub">
	
	<div class="japen01"> 

		<div class="japen_menu">

			<div class="japen_title">
				<p>일본골프</p>
				<div>
					<img src="${pageContext.request.contextPath}/resources/img/category/location.png">
				</div>
			</div>

			<div class="menu01">
				<a href="#">
					<p>도쿄/간도</p>
					<p>></p>
				</a>
			</div>

			<div class="menu02">
				<a href="#">
					<p>오사카/간사이</p>
					<p>></p>
				</a>
			</div>

			<div class="menu03">
				<a href="#">
					<p>오키나와/나하</p>
					<p>></p>
				</a>
			</div>

			<div class="menu04">
				<a href="#">
					<p>후쿠오카/야마구치</p>
					<p>></p>
				</a>
			</div>

			<div class="menu05">
				<a href="#">
					<p>가고시마/미야자키</p>
					<p>></p>
				</a>
			</div>

			<div class="menu06">
				<a href="#">
					<p>구마모토/오이타</p>
					<p>></p>
				</a>
			</div>

			<div class="menu07">
				<a href="#">
					<p>나카사키/사가</p>
					<p>></p>
				</a>
			</div>

			<div class="menu08">
				<a href="#">
					<p>아오모리/니카타</p>
					<p>></p>
				</a>
			</div>

			<div class="menu09">
				<a href="#">
					<p>나고야/도카이</p>
					<p>></p>
				</a>
			</div>

			<div class="menu10">
				<a href="#">
					<p>오카야마/츄고쿠</p>
					<p>></p>
				</a>
			</div>

			<div class="menu11">
				<a href="#">
					<p>다카마츠/마츠야마</p>
					<p>></p>
				</a>
			</div>

			<div class="japen_free">
				<a href="freegolf">
					<img src="${pageContext.request.contextPath}/resources/img/category/free_japen.png">
				</a>
			</div>

		</div><!--left-->

		<div class="right">

			<div class="location">
				<div>
					<img src="${pageContext.request.contextPath}/resources/img/category/find.png">
				</div>

				<p>></p>

				<p>일본골프</p>

				<p>></p>

				<p>도쿄/간도</p>

				<p>></p>

				<p>총 15개 상품</p>

			</div>

			<div class="title_box">

				<div class="right_title">
					<p>도쿄/간도</p>
				</div><!--타이틀-->

				<div class="button_menu">
					<div class="all">
						<a href="#">
							<p>전체</p>
						</a>
					</div>

					<div class="incheon">
						<a href="#">
							<p>인천출발</p>
						</a>
					</div>

					<div class="gimhae">
						<a href="#">
							<p>김해출발</p>
						</a>
					</div>

					<div class="daegu">
						<a href="#">
							<p>대구출발</p>
						</a>
					</div>

					<select>
						<option>인기순</option>
						<option>높은가격순</option>
						<option>낮은가격순</option>
					</select>
				</div>
			</div><!--title_box-->


			<div class="line"></div>

			<div class="all_box">
				<div class="product_zon01">
				
					<%-- 게시물 노출 --%>
					<c:forEach items="${bbsList}" var="bbsList">
					
					<div class="product01">
						<a href="product_detail?package_product_code=${bbsList.package_product_code}">
							<div>
								<img src="${pageContext.request.contextPath}/resources/img/category/product01.png">
							</div>

					
							<div class="product_text_01">
								<p>${bbsList.package_arrival} 출발 ></p>
								<p>${bbsList.package_city}</p>
								<p>${bbsList.package_productName}</p>
								<p>${bbsList.package_lowestPrice} ~</p>
							</div>

							<div class="review_box_01">
								<div class="star01">
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/star.png">
									</div>
									<!-- <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div> -->
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/02star.png">
									</div>
								</div>
								<!--star-->

								<div class="review01">

									<div class="talk01">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/talk.png">
										</div>
										<p>203</p>
									</div>

									<div class="like01">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/good.png">
										</div>
										<p>8.5</p>
									</div>

								</div><!--review01-->
							</div> <!--review_box_01-->
						</a>
					</div><!--product_01-->
 
					</c:forEach>
					<%-- 게시물 노출 --%>

<%-- 					<div class="product02">

						<a href="#">
							<div>
								<img src="${pageContext.request.contextPath}/resources/img/category/product02.png">
							</div>

							<div class="product_text_02">
								<p>김해출발 ></p>
								<p>베트남/다낭</p>
								<p>다낭명품 3색골프 3박 5일</p>
								<p>1,290,000원~</p>
							</div>

							<div class="review_box_02">
								<div class="star02">
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/star.png">
									</div>
									<!--    <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div> -->
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/02star.png">
									</div>
								</div><!--star-->

								<div class="review02">

									<div class="talk02">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/talk.png">
										</div>
										<p>203</p>
									</div>

									<div class="like02">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/good.png">
										</div>
										<p>8.5</p>
									</div>

								</div><!--review02-->
							</div> <!--review_box_02-->
						</a>
					</div><!--product_02-->

					<div class="product03">
						<a href="#">
							<div>
								<img src="${pageContext.request.contextPath}/resources/img/category/product03.png">
							</div>

							<div class="product_text_03">
								<p>대구출발 ></p>
								<p>일본/북해도</p>
								<p>루스츠 골프리조트 4박 6일</p>
								<p>1,590,000원~</p>
							</div>

							<div class="review_box_03">
								<div class="star03">
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/star.png">
									</div>
									<!-- <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div> -->
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/02star.png">
									</div>
								</div>
								<!--star-->

								<div class="review03">

									<div class="talk03">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/talk.png">
										</div>
										<p>203</p>
									</div>

									<div class="like03">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/good.png">
										</div>
										<p>8.5</p>
									</div>

								</div><!--review03-->
							</div><!--review_box_03-->
						</a>
					</div><!--product_03-->
				</div><!--zon01-->

				<div class="product_zon02">
					<div class="product04">
						<a href="#">
							<div>
								<img src="${pageContext.request.contextPath}/resources/img/category/product04.png">
							</div>

							<div class="product_text_04">
								<p>인천출발 ></p>
								<p>태국/치앙마이</p>
								<p>치앙마이 아티타야 3박 5일</p>
								<p>1,090,000원~</p>
							</div>

							<div class="review_box_04">
								<div class="star04">
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/star.png">
									</div>
									<!-- <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div> -->
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/02star.png">
									</div>
								</div><!--star-->

								<div class="review04">

									<div class="talk04">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/talk.png">
										</div>
										<p>203</p>
									</div>

									<div class="like04">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/good.png">
										</div>
										<p>8.5</p>
									</div>

								</div><!--review04-->
							</div><!--review_box_04-->
						</a>
					</div><!--product_04-->

					<div class="product05">

						<a href="#">
							<div>
								<img src="${pageContext.request.contextPath}/resources/img/category/product05.png">
							</div>

							<div class="product_text_05">
								<p>김해출발 ></p>
								<p>베트남/다낭</p>
								<p>다낭명품 3색골프 3박 5일</p>
								<p>1,290,000원~</p>
							</div>

							<div class="review_box_05">
								<div class="star05">
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/star.png">
									</div>
									<!-- <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div> -->
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/02star.png">
									</div>
								</div><!--star-->

								<div class="review05">

									<div class="talk05">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/talk.png">
										</div>
										<p>203</p>
									</div>

									<div class="like05">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/good.png">
										</div>
										<p>8.5</p>
									</div>

								</div><!--review05-->
							</div> <!--review_box_05-->
						</a>
					</div><!--product_05-->

					<div class="product06">
						<a href="#">
							<div>
								<img src="${pageContext.request.contextPath}/resources/img/category/product06.png">
							</div>

							<div class="product_text_06">
								<p>대구출발 ></p>
								<p>일본/북해도</p>
								<p>루스츠 골프리조트 4박 6일</p>
								<p>1,590,000원~</p>
							</div>

							<div class="review_box_06">
								<div class="star06">
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/star.png">
									</div>
									<!-- <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div> -->
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/02star.png">
									</div>
								</div><!--star-->

								<div class="review06">

									<div class="talk06">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/talk.png">
										</div>
										<p>203</p>
									</div>

									<div class="like06">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/good.png">
										</div>
										<p>8.5</p>
									</div>

								</div><!--review06-->
							</div> <!--review_box_06-->
						</a>
					</div><!--product_06-->
				</div><!--zon02-->

				<div class="product_zon03">
					<div class="product07">
						<a href="#">
							<div>
								<img src="${pageContext.request.contextPath}/resources/img/category/product07.png">
							</div>

							<div class="product_text_07">
								<p>인천출발 ></p>
								<p>태국/치앙마이</p>
								<p>치앙마이 아티타야 3박 5일</p>
								<p>1,090,000원~</p>
							</div>

							<div class="review_box_07">
								<div class="star07">
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/star.png">
									</div>
									<!-- <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div> -->
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/02star.png">
									</div>
								</div><!--star-->

								<div class="review07">

									<div class="talk07">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/talk.png">
										</div>
										<p>203</p>
									</div>

									<div class="like07">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/good.png">
										</div>
										<p>8.5</p>
									</div>

								</div><!--review07-->
							</div> <!--review_box_07-->
						</a>
					</div><!--product_07-->

					<div class="product08">

						<a href="#">
							<div>
								<img src="${pageContext.request.contextPath}/resources/img/category/product08.png">
							</div>

							<div class="product_text_08">
								<p>김해출발 ></p>
								<p>베트남/다낭</p>
								<p>다낭명품 3색골프 3박 5일</p>
								<p>1,290,000원~</p>
							</div>

							<div class="review_box_08">
								<div class="star08">
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/star.png">
									</div>
									<!-- <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div> -->
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/02star.png">
									</div>
								</div><!--star-->

								<div class="review08">

									<div class="talk08">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/talk.png">
										</div>
										<p>203</p>
									</div>

									<div class="like08">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/good.png">
										</div>
										<p>8.5</p>
									</div>

								</div><!--review08-->
							</div> <!--review_box_08-->
						</a>
					</div><!--product_08-->

					<div class="product09">
						<a href="#">
							<div>
								<img src="${pageContext.request.contextPath}/resources/img/category/product09.png">
							</div>

							<div class="product_text_09">
								<p>대구출발 ></p>
								<p>일본/북해도</p>
								<p>루스츠 골프리조트 4박 6일</p>
								<p>1,590,000원~</p>
							</div>

							<div class="review_box_09">
								<div class="star09">
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/star.png">
									</div>
									<!-- <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div> -->
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/02star.png">
									</div>
								</div><!--star-->

								<div class="review09">

									<div class="talk09">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/talk.png">
										</div>
										<p>203</p>
									</div>

									<div class="like09">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/good.png">
										</div>
										<p>8.5</p>
									</div>

								</div><!--review09-->
							</div> <!--review_box_09-->
						</a>
					</div><!--product_09-->
				</div><!--zon03-->

				<div class="product_zon04">
					<div class="product10">
						<a href="#">
							<div>
								<img src="${pageContext.request.contextPath}/resources/img/category/product04.png">
							</div>

							<div class="product_text_10">
								<p>인천출발 ></p>
								<p>태국/치앙마이</p>
								<p>치앙마이 아티타야 3박 5일</p>
								<p>1,090,000원~</p>
							</div>

							<div class="review_box_10">
								<div class="star10">
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/star.png">
									</div>
									<!-- <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div> -->
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/02star.png">
									</div>
								</div><!--star-->

								<div class="review10">

									<div class="talk10">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/talk.png">
										</div>
										<p>203</p>
									</div>

									<div class="like10">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/good.png">
										</div>
										<p>8.5</p>
									</div>

								</div><!--review10-->
							</div> <!--review_box_10-->
						</a>
					</div><!--product_10-->

					<div class="product11">

						<a href="#">
							<div>
								<img src="${pageContext.request.contextPath}/resources/img/category/product05.png">
							</div>

							<div class="product_text_11">
								<p>김해출발 ></p>
								<p>베트남/다낭</p>
								<p>다낭명품 3색골프 3박 5일</p>
								<p>1,290,000원~</p>
							</div>

							<div class="review_box_11">
								<div class="star11">
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/star.png">
									</div>
									<!-- <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div> -->
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/02star.png">
									</div>
								</div><!--star-->

								<div class="review11">

									<div class="talk11">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/talk.png">
										</div>
										<p>203</p>
									</div>

									<div class="like11">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/good.png">
										</div>
										<p>8.5</p>
									</div>

								</div><!--review11-->
							</div> <!--review_box_11-->
						</a>
					</div><!--product_11-->

					<div class="product12">
						<a href="#">
							<div>
								<img src="${pageContext.request.contextPath}/resources/img/category/product06.png">
							</div>

							<div class="product_text_12">
								<p>대구출발 ></p>
								<p>일본/북해도</p>
								<p>루스츠 골프리조트 4박 6일</p>
								<p>1,590,000원~</p>
							</div>

							<div class="review_box_12">
								<div class="star12">
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/star.png">
									</div>
									<!-- <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div> -->
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/02star.png">
									</div>
								</div>
								<!--star-->

								<div class="review12">

									<div class="talk12">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/talk.png">
										</div>
										<p>203</p>
									</div>

									<div class="like12">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/good.png">
										</div>
										<p>8.5</p>
									</div>

								</div><!--review12-->
							</div> <!--review_box_12-->
						</a>
					</div><!--product_12-->
				</div><!--zon04-->

				<div class="product_zon05">
					<div class="product13">
						<a href="#">
							<div>
								<img src="${pageContext.request.contextPath}/resources/img/category/product07.png">
							</div>

							<div class="product_text_13">
								<p>인천출발 ></p>
								<p>태국/치앙마이</p>
								<p>치앙마이 아티타야 3박 5일</p>
								<p>1,090,000원~</p>
							</div>

							<div class="review_box_13">
								<div class="star13">
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/star.png">
									</div>
									<!-- <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div> -->
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/02star.png">
									</div>
								</div>
								<!--star-->

								<div class="review13">

									<div class="talk13">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/talk.png">
										</div>
										<p>203</p>
									</div>

									<div class="like13">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/good.png">
										</div>
										<p>8.5</p>
									</div>

								</div><!--review13-->
							</div> <!--review_box_13-->
						</a>
					</div><!--product_13-->

					<div class="product14">

						<a href="#">
							<div>
								<img src="${pageContext.request.contextPath}/resources/img/category/product08.png">
							</div>

							<div class="product_text_14">
								<p>김해출발 ></p>
								<p>베트남/다낭</p>
								<p>다낭명품 3색골프 3박 5일</p>
								<p>1,290,000원~</p>
							</div>

							<div class="review_box_14">
								<div class="star14">
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/star.png">
									</div>
									<!-- <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div> -->
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/02star.png">
									</div>
								</div>
								<!--star-->

								<div class="review14">

									<div class="talk14">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/talk.png">
										</div>
										<p>203</p>
									</div>

									<div class="like14">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/good.png">
										</div>
										<p>8.5</p>
									</div>

								</div> <!--review14-->
							</div> <!--review_box_14-->
						</a>
					</div> <!--product_14-->

					<div class="product15">
						<a href="#">
							<div>
								<img src="${pageContext.request.contextPath}/resources/img/category/product09.png">
							</div>

							<div class="product_text_15">
								<p>대구출발 ></p>
								<p>일본/북해도</p>
								<p>루스츠 골프리조트 4박 6일</p>
								<p>1,590,000원~</p>
							</div>

							<div class="review_box_15">
								<div class="star15">
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/star.png">
									</div>
									<!-- <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div> -->
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/02star.png">
									</div>
								</div> <!--star-->

								<div class="review15">

									<div class="talk09">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/talk.png">
										</div>
										<p>203</p>
									</div>

									<div class="like15">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/good.png">
										</div>
										<p>8.5</p>
									</div>

								</div> <!--review15--> 
							</div> <!--review_box_15--> 
						</a> 
					</div> --%> <!--product_15--> 
					
					
				</div> <!--zon05--> 
			</div> <!--all_box-->

				<%-- 페이징  --%>    
				<div class="number_btn">

					<a href="category?page=${pageMaker.startPage}"><p>&lt;&lt;</p></a>
					
                    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="p">
                   		<a href="category?page=${p}"><p>${p}</p></a>    
                    </c:forEach>
					
					<a href="category?page=${pageMaker.endPage}"><p>&gt;&gt;</p></a>

				</div>
				<%-- 페이징  --%>
				
				
			</div><!--right-->
		</div>
	</section>

</body>
</html>