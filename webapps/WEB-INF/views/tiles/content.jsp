<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, minimum-scale=1.0, user-scalable=no">
    <title>main</title>
	<link href="${pageContext.request.contextPath}/resources/css/index.css"	rel="stylesheet">
</head>
<body>

    <div class="visual_banner">
        <img src="${pageContext.request.contextPath}/resources/img/visual02.png">
    </div>
	<!--visual_banner-->

	<div class="recommend_zon">
	
        <div class="recommend_box">
	
		<div class="recommend_title">
			<p><span>해외골프</span> 강력추천상품</p>
			<p>7일동안 특별한 가격으로 만나는 상품!</p>
	
			<div class="bar">
				<img src="${pageContext.request.contextPath}/resources/img/bar.png">
			</div>
			
		</div>
		<!--타이틀-->

		<div class="recommend">

			<div class="recommend_left">
				<img src="${pageContext.request.contextPath}/resources/img/left.png">
			</div>

			<!-- 해외골프 강력추천상품  -->
			<div class="recommend_01">
				<a href="#">
					<div class="recommend_img01">
						<img src="${pageContext.request.contextPath}/resources/img/product01.png">
					</div>

					<div class="title_rec01">
						<p>인천출발 ></p>
						<p>태국/치앙마이</p>
						<p>치앙마이 아티타야 3박 5일</p>
						<p>1,090,000원~</p>
					</div>

					<div class="grade01">
						<div class="star01">
							<img src="${pageContext.request.contextPath}/resources/img/star.png">
							<img src="${pageContext.request.contextPath}/resources/img/02star.png">
						</div>

						<div class="review01">
							<div class="talk01">
								<img src="${pageContext.request.contextPath}/resources/img/talk.png">
								<p>203</p>
							</div>
							<div class="good01">
								<img src="${pageContext.request.contextPath}/resources/img/good.png">
								<p>8.5</p>
							</div>
						</div>
					</div>
				</a>
			</div><!--상품01-->

			<div class="recommend_02">
				<a href="#">
					<div class="recommend_img02">
						<img src="${pageContext.request.contextPath}/resources/img/product02.png">
					</div>
					<div class="title_rec02">
						<p>김해출발 ></p>
						<p>베트남/다낭</p>
						<p>다낭 명품 3색골프 3박 5일</p>
						<p>1,290,000원~</p>
					</div>
					<div class="grade02">
						<div class="star02">
							<img src="${pageContext.request.contextPath}/resources/img/star.png">
							<img src="${pageContext.request.contextPath}/resources/img/02star.png">
						</div>

						<div class="review02">
							<div class="talk02">
								<img src="${pageContext.request.contextPath}/resources/img/talk.png">
								<p>203</p>
							</div>
							<div class="good02">
								<img src="${pageContext.request.contextPath}/resources/img/good.png">
								<p>8.5</p>
							</div>
						</div>
					</div>
				</a>
			</div><!--상품02-->
			

			<div class="recommend_03">
				<a href="#">
					<div class="recommend_img03">
						<img src="${pageContext.request.contextPath}/resources/img/product03.png">
					</div>
					<div class="title_rec03">
						<p>대구출발 ></p>
						<p>일본/북해도</p>
						<p>루스츠 골프리조트 4박 6일</p>
						<p>1,590,000원~</p>
					</div>
					<div class="grade03">
						<div class="star03">
							<img src="${pageContext.request.contextPath}/resources/img/star.png">
							<img src="${pageContext.request.contextPath}/resources/img/02star.png">
						</div>

						<div class="review03">
							<div class="talk03">
								<img src="${pageContext.request.contextPath}/resources/img/talk.png">
								<p>203</p>
							</div>
							<div class="good03">
								<img src="${pageContext.request.contextPath}/resources/img/good.png">
								<p>8.5</p>
							</div>
						</div>
					</div>
				</a>
			</div>

				<div class="recommend_right">
					<img src="${pageContext.request.contextPath}/resources/img/right.png">
				</div>
			</div>
		</div>
	</div><!-- 해외골프 강력추천상품  -->


	<!-- 지역별 인기상품 BEST -->
	<div class="best_product">

		<div class="title_best">
			<p>지역별 <span>인기상품 </span>BEST</p>
			<p>많은 분들이 선택한 최고의 골프장 인기상품!</p>
		</div><!--타이틀-->

		<div class="best_zon">

		<div class="product_menu">

                <p>지역별 인기 상품</p>

                <a href="category?region=일본&city=도쿄/간도">
                    <p>일본골프</p>
                </a>

                <div class="product_line01"></div>

                <a href="category?region=태국&city=방콕/파타야">
                    <p>태국골프</p>
                </a>

                <div class="product_line02"></div>

                <a href="category?region=베트남&ciry=나트랑">
                    <p>베트남골프</p>
                </a>

                <div class="product_line03"></div>

                <a href="category?region=대만&city=가오슝">
                    <p>대만골프</p>
                </a>
            </div>

			<div class="product">
				<div class="product01">
					<a href="#">
					<img src="${pageContext.request.contextPath}/resources/img/product04.png">
					
						<div class="product_text01">
							<p>김해출발 ></p>
							<p>태국/치앙마이</p>
							<p>치앙마이 아티타야 3박 5일</p>
							<p>1,090,000원~</p>
						</div><!--text-->
						

						<div class="grade04">
							<div class="star04">
								<img src="${pageContext.request.contextPath}/resources/img/star.png">
								<img src="${pageContext.request.contextPath}/resources/img/02star.png">
							</div>

							<div class="review04">
								<div class="talk04">
									<img src="${pageContext.request.contextPath}/resources/img/talk.png">
									<p>203</p>
								</div>
								<div class="good04">
									<img src="${pageContext.request.contextPath}/resources/img/good.png">
									<p>8.5</p>
								</div>
							</div>
						</div><!--grade-->
					</a>
				</div><!--상품01---->
				

				<div class="product02">
					<a href="#">
						<img src="${pageContext.request.contextPath}/resources/img/product05.png">
						
						<div class="product_text02">
							<p>인천출발 ></p>
							<p>대만/타이페이</p>
							<p>타이페이 VIP 골프 3박 4일</p>
							<p>999,000원~</p>
						</div><!--text-->
						

						<div class="grade05">
							<div class="star05">
								<img src="${pageContext.request.contextPath}/resources/img/star.png">
								<img src="${pageContext.request.contextPath}/resources/img/02star.png">
							</div>

							<div class="review05">
								<div class="talk05">
									<img src="${pageContext.request.contextPath}/resources/img/talk.png">
									<p>203</p>
								</div>
								<div class="good05">
									<img src="${pageContext.request.contextPath}/resources/img/good.png">
									<p>8.5</p>
								</div>
							</div>
						</div><!--grade-->
					</a>
				</div><!--상품02---->
				

				<div class="product03">
					<a href="#">
						<img src="${pageContext.request.contextPath}/resources/img/product06.png">
						
						<div class="product_text03">
							<p>김해출발 ></p>
							<p>베트님/다낭</p>
							<p>다낭 명품 3색 골프 3박 5일</p>
							<p>1,090,000원~</p>
						</div><!-- text03 -->
						

						<div class="grade06">
							<div class="star06">
								<img src="${pageContext.request.contextPath}/resources/img/star.png">
								<img src="${pageContext.request.contextPath}/resources/img/02star.png">
							</div>

							<div class="review06">
								<div class="talk06">
									<img src="${pageContext.request.contextPath}/resources/img/talk.png">
									<p>203</p>
								</div>
								<div class="good06">
									<img src="${pageContext.request.contextPath}/resources/img/good.png">
									<p>8.5</p>
								</div>
							</div>
						</div><!--grade-->
					</a>
				</div><!--상품03---->
				

				<div class="product04">
					<a href="#">
						<img src="${pageContext.request.contextPath}/resources/img/product07.png">
						
						<div class="product_text04">
							<p>대구출발 ></p>
							<p>일본/북해도</p>
							<p>루스츠 골프리조트 4박 6일</p>
							<p>1,590,000원~</p>
						</div><!--text-->

						<div class="grade07">
							<div class="star07">
								<img src="${pageContext.request.contextPath}/resources/img/star.png">
								<img src="${pageContext.request.contextPath}/resources/img/02star.png">
							</div>

							<div class="review07">
								<div class="talk07">
									<img src="${pageContext.request.contextPath}/resources/img/talk.png">
									<p>203</p>
								</div>
								<div class="good07">
									<img src="${pageContext.request.contextPath}/resources/img/good.png">
									<p>8.5</p>
								</div>
							</div>
						</div><!--grade-->
					</a>
				</div><!--상품03---->

				<div class="product05">
					<a href="#">
						<img src="${pageContext.request.contextPath}/resources/img/product08.png">
						
						<div class="product_text05">
							<p>인천출발 ></p>
							<p>대만/타이페이</p>
							<p>카오슝 럭셔리 골프 3박 5일</p>
							<p>1,090,000원~</p>
						</div><!--text-->

						<div class="grade08">
							<div class="star08">
								<img src="${pageContext.request.contextPath}/resources/img/star.png">
								<img src="${pageContext.request.contextPath}/resources/img/02star.png">
							</div>

							<div class="review08">
								<div class="talk08">
									<img src="${pageContext.request.contextPath}/resources/img/talk.png">
									<p>203</p>
								</div>
								<div class="good08">
									<img src="${pageContext.request.contextPath}/resources/img/good.png">
									<p>8.5</p>
								</div>
							</div>
						</div><!--grade-->
					</a>
				</div><!--상품03---->

				<div class="product_left">
					<img src="${pageContext.request.contextPath}/resources/img/product_left.png">
				</div>

				<div class="product_right">
					<img src="${pageContext.request.contextPath}/resources/img/product_right.png">
				</div>
			
			</div><!--product-->

		</div><!--best-->
		
	</div><!--best-->

	<div class="event_zon">
	
       <div class="event_box">
       
			<div class="event_title">
				<p><span>이벤트 </span>/ 기획전</p>
				<P>7일동안 특별한 가격으로 만나는 상품!</P>
			</div><!--타이틀-->

			<div class="event">
				<div class="event01">
					<a href="event">
						<img src="${pageContext.request.contextPath}/resources/img/event01.png">
					</a>
				</div>
				<div class="event02">
					<a href="event">
						<img src="${pageContext.request.contextPath}/resources/img/event02.png">
					</a>
				</div>
				<div class="event03">
					<a href="event">
						<img src="${pageContext.request.contextPath}/resources/img/event03.png">
					</a>
				</div>
			</div>
		</div>
	</div><!--이벤트-->

	<div class="freedom">
	
        <div class="title_freegolf">

            <p><span>지</span>역별 자유골프 만들기</p>
            <p>고객이 직접 골프장, 호텔, 렌터카, 기타 등등을<br>만들어 보세요.</p>

        </div>
	
	
		<div class="country">
            <div><a href="freegolf?region=일본">일본 자유골프→</a></div>
            <div><a href="freegolf?region=태국">태국 자유골프→</a></div>
            <div><a href="freegolf?region=베트남">베트남 자유골프→</a></div>
            <div><a href="freegolf?region=대만">대만 자유골프→</a></div>
		</div>
		
	</div><!--자유골프-->

	<div class="notic_zon">
	
		<div class="notic">
		
			<div class="title_notic">
				<p>공지사항</p>
				<p><a href="#">+ 더보기</a></p>
			</div>

			<div class="notic_box">
			
				<div class="notic_01">
					<a href="#">
						<p>태국 입국 서류 및 pcr 검사 안내</p>
						<p>2022-05-12</p>
					</a>
				</div>

				<div class="notic_02">
					<a href="#">
						<p>[항공사 동향]항공사·면세점·급유시설까지 공항업종 大···</p>
						<p>2022-04-29</p>
					</a>
				</div>

				<div class="notic_03">
					<a href="#">
						<p>3년만에 일본 골프 상품 출시</p>
						<p>2022-03-08</p>
					</a>
				</div>

			</div><!--공지사항_box-->
		</div><!--공지사항-->
		
		<div class="call">

			<div class="number">
				<div class="korea_number">
					<img src="${pageContext.request.contextPath}/resources/img/call.png">
				</div>

				<div class="call_number">
					<p>상담전화</p>
					<p>1588-1855</p>
				</div>
			</div>

			<div class="time">
				<div class="time01">
					<p><span>평 일</span> 09:00~18:00</p>
				</div>

				<div class="time02">
					<p><span>토요일</span> 09:00~12:00</p>
				</div>

				<div class="time03">
					<p><span>일요일</span> 및 <span>공휴일</span> 휴무</p>
				</div>

			</div><!--시간-->

			<div class="visitant">
			
				<p>누적방문자수</p>
				
				<div class="visitant_number">
					<p>3,405,527</p>
					
				</div><!--숫자-->
			</div><!--누적방문자수-->

		</div><!--call-->
	</div><!--공지사항&전화번호-->
	
	
	
	<!-- 모바일 -->
	<section class="mobile">
   
	   <input type="checkbox" id="menu_m">
	
	   <header class="header_m">
	
	       <label for="menu_m" class="menu_m">
	           <img src="${pageContext.request.contextPath}/resources/img/menu_btn.png">
	       </label>
	
	       <div class="logo_m">
	           <a href="index">
	               <img src="${pageContext.request.contextPath}/resources/img/logo_mobile.png">
	           </a>
	       </div>
	
	       <div class="header_button">
	
	           <div class="search_m">
	               <a href="#">
	                   <img src="${pageContext.request.contextPath}/resources/img/search_mobile.png">
	               </a>
	           </div>
	
	
			<c:choose>
					<%-- 로그인 했을 때 --%>
					<c:when test="${sessionScope.id != null}">
			           <div class="login_m">
			               <a href="mypage_pre">
			                   <img src="${pageContext.request.contextPath}/resources/img/login_mobile.png">
			               </a>
			           </div>
					</c:when>
					
					<%-- 로그인 안했을 때 --%>
					<c:otherwise>
			           <div class="login_m">
			               <a href="login">
			                   <img src="${pageContext.request.contextPath}/resources/img/login_mobile.png">
			               </a>
			           </div>
					</c:otherwise>    
			</c:choose>
	
	
	       </div>
	
	
	       <div class="lnb_mobile">
	
	
	           <div class="gnb_mobile">
	
	               <ul>
	
	
					<c:choose>
						<%-- 로그인 했을 때 --%>
						<c:when test="${sessionScope.id != null}">
						</c:when>
						
						<%-- 로그인 안했을 때 --%>
						<c:otherwise>
							<li>
							    <a href="login">
							        <p>로그인</p>
							    </a>
							</li>
							
							<li>
							    <div></div>
							</li>
						</c:otherwise>    
					</c:choose>
				
	                  <li>
	                      <a href="#">
	                          <p>즐겨찾기</p>
	                      </a>
	                  </li>
	
	                  <li>
	                      <div></div>
	                  </li>
				
				
						<li>
						<c:choose>
							<%-- 로그인 했을 때 --%>
							<c:when test="${sessionScope.id != null}">
				                 <a href="mypage_pre">
				                     <p>예약확인</p>
				                 </a>
							</c:when>
						
							<%-- 로그인 안했을 때 --%>
							<c:otherwise>
				                <a href="login">
				                    <p>예약확인</p>
				                </a>
							</c:otherwise>
						</c:choose>
				        </li>
				        
				
						<c:choose>
							<%-- 로그인 했을 때 --%>
							<c:when test="${sessionScope.id != null}">
									<li>
									    <div></div>
									</li>
									
									<li>
									    <a href="member/signout">
									        <p>로그아웃</p>
									    </a>
									</li>
							</c:when>
							
							<%-- 로그인 안했을 때 --%>
							<c:otherwise>
							</c:otherwise>
						</c:choose>
				
				
						<c:choose>
							<%-- 로그인 했을 때 --%>
							<c:when test="${sessionScope.id != null}">
								<li>
									<div></div>
								</li>
							
								<a href="mypage_pre">
									<li>
										<p>마이페이지</p>
									</li>
								</a>
							</c:when>
						
							<%-- 로그인 안했을 때 --%>
							<c:otherwise>
							</c:otherwise>
						</c:choose>
	
	               </ul>
	
	               <label for="menu_m" id="close">
	                   <p>←</p>
	               </label>
	
	           </div>
	
	           <input type="radio" name="sub_menu" id="submenu01" checked>
	           <input type="radio" name="sub_menu" id="submenu02">
	           <input type="radio" name="sub_menu" id="submenu03">
	           <input type="radio" name="sub_menu" id="submenu04">
	           <input type="radio" name="sub_menu" id="submenu05">
	           <input type="radio" name="sub_menu" id="submenu06">
	
	
	
	           <div class="menu_mobile">
	
	               <div class="menu_left_mobile">
	
	                   <label for="submenu01">
	                       <p>일본골프</p>
	                   </label>
	
	                   <label for="submenu02">
	                       <p>태국골프</p>
	                   </label>
	
	                   <label for="submenu03">
	                       <p>베트남골프</p>
	                   </label>
	
	                   <label for="submenu04">
	                       <p>대만골프</p>
	                   </label>
	
	                   <label for="submenu05">
	                       <p>기획전/이벤트</p>
	                   </label>
	
	                   <label for="submenu06">
	                       <p>회원권/아카데미</p>
	                   </label>
	
	
	               </div><!--left-->
	
	               <div class="menu_right_mobile">
	
	                   <div class="japan_m">
	
	                       <ul>
	                           <a href="category?region=일본&city=도쿄/간도">
	                               <li>
	                                   <p>도쿄/간도</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=일본&city=오사카/간사이">
	                               <li>
	                                   <p>오사카/간사이</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=일본&city=홋카이도/삿포로">
	                               <li>
	                                   <p>홋카이도/삿포로</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=일본&city=오키나와/나하">
	                               <li>
	                                   <p>오키나와/나하</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=일본&city=후쿠오카/야마구치">
	                               <li>
	                                   <p>후쿠오카/야마구치</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=일본&city=가고시마/미야자키">
	                               <li>
	                                   <p>가고시마/미야자키</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=일본&city=구마모토/오이타">
	                               <li>
	                                   <p>구마모토/오이타</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=일본&city=나카사키/사가">
	                               <li>
	                                   <p>나카사키/사가</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=일본&city=아오모리/니카타">
	                               <li>
	                                   <p>아오모리/니카타</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=일본&city=나고야/도카이">
	                               <li>
	                                   <p>나고야/도카이</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=일본&city=오카야마/츄고크">
	                               <li>
	                                   <p>오카야마/츄고쿠</p>
	                               </li>
	                           </a>
	
	
	                           <a href="category?region=일본&city=다카마츠/마츠야마">
	                               <li>
	                                   <p>다카마츠/마츠야마</p>
	                               </li>
	                           </a>
	
	
	                       </ul>
	
	                   </div><!--일본-->
	
	                   <div class="thailand_m">
	
	                       <ul>
	
	                           <a href="category?region=태국&city=방콕/파타야">
	                               <li>
	                                   <p>방콕/파타야</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=태국&city=치앙마이/치앙라이">
	                               <li>
	                                   <p>치앙마이/치앙라이</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=태국&city=푸켓">
	                               <li>
	                                   <p>푸켓</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=태국&city=칸차나부리/아유타야">
	                               <li>
	                                   <p>칸차나부리/아유타야</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=태국&city=후아힌">
	                               <li>
	                                   <p>후아힌</p>
	                               </li>
	                           </a>
	
	           
	                       </ul>
	
	                   </div><!--태국-->
	
	                   <div class="vietnam_m">
	
	                       <ul>
	
	                           <a href="category?region=베트남&ciry=나트랑">
	                               <li>
	                                   <p>나트랑</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=베트남&ciry=푸꾸옥">
	                               <li>
	                                   <p>푸꾸옥</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=베트남&ciry=다낭">
	                               <li>
	                                   <p>다낭</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=베트남&ciry=하노이">
	                               <li>
	                                   <p>하노이</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=베트남&ciry=호치민">
	                               <li>
	                                   <p>호치민</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=베트남&ciry=달랏">
	                               <li>
	                                   <p>달랏</p>
	                               </li>
	                           </a>
	
	           
	                       </ul>
	
	                   </div><!--베트남-->
	
	                   <div class="taiwan_m">
	
	                       <ul>
	
	                           <a href="category?region=대만&city=가오슝">
	                               <li>
	                                   <p>가오슝</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=대만&city=타이중">
	                               <li>
	                                   <p>타이중</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=대만&city=타이페이">
	                               <li>
	                                   <p>타이페이</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=대만&city=신축">
	                               <li>
	                                   <p>신죽</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=대만&city=타오위안">
	                               <li>
	                                   <p>타오위안</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=대만&city=이란/화련">
	                               <li>
	                                   <p>이란/화련</p>
	                               </li>
	                           </a>
	
	           
	                       </ul>
	
	                   </div><!--타이완-->
	
	                   <div class="event_m">
	
	                       <ul>
	                           <a href="event">
	                               <li>
	                                   <p>기획전/이벤트</p>
	                               </li>
	                           </a>
	                       </ul>
	
	                   </div><!--이벤트-->
	
	                   <div class="academy_m">
	
	                       <ul>
	                           <a href="membership">
	                               <li>
	                                  <p>회원권</p>
	                               </li>
	                           </a>
	
	                           <a href="academy">
	                               <li>
	                                  <p>아카데미</p>
	                               </li>
	                           </a>
	
	                       </ul>
	
	                   </div><!--회원권-->
	
	               </div><!--right-->
	
	           </div>
	
	
	       </div><!--lnb_mobile-->
	
	   </header>
		   

        <div class="visual_m">

            <img src="${pageContext.request.contextPath}/resources/img/visual_mobile.png">

        </div><!--visual-->


        <div class="icon_m">

            <a href="category?region=일본&city=도쿄/간도">
                <div class="icon_m_01">

                    <div>
                        <img src="${pageContext.request.contextPath}/resources/img/icon04.png">
                    </div>

                    <p>일본골프</p>

                </div>
            </a>

            <a href="category?region=태국&city=방콕/파타야">
                <div class="icon_m_02">

                    <div>
                        <img src="${pageContext.request.contextPath}/resources/img/icon05.png">
                    </div>

                    <p>태국골프</p>

                </div>
            </a>

            <a href="category?region=베트남&ciry=나트랑">
                <div class="icon_m_03">

                    <div>
                        <img src="${pageContext.request.contextPath}/resources/img/icon06.png">
                    </div>

                    <p>베트남골프</p>

                </div>
            </a>

            <a href="category?region=대만&city=가오슝">
                <div class="icon_m_04">

                    <div>
                        <img src="${pageContext.request.contextPath}/resources/img/icon07.png">
                    </div>

                    <p>대만골프</p>

                </div>
            </a>

            <a href="event">
                <div class="icon_m_05">

                    <div>
                        <img src="${pageContext.request.contextPath}/resources/img/icon02.png">
                    </div>

                    <p>기획전/이벤트</p>

                </div>
            </a>

      <c:choose>
            
		<%-- 로그인 했을 때 --%>
		<c:when test="${sessionScope.id != null}">
			<a href="mypage_pre">
				<div class="icon_m_06">
					<div>
						<img src="${pageContext.request.contextPath}/resources/img/icon01.png">
					</div>
					<p>마이페이지</p>
				</div>
			</a>
		</c:when>

		<%-- 로그인 안했을 때 --%>
		<c:otherwise>
              <a href="login">
				<div class="icon_m_06">
					<div>
						<img src="${pageContext.request.contextPath}/resources/img/icon01.png">
					</div>
					<p>마이페이지</p>
				</div>
              </a>
		</c:otherwise>

      </c:choose>


            <a href="membership">
                <div class="icon_m_07">

                    <div>
                        <img src="${pageContext.request.contextPath}/resources/img/icon03.png">
                    </div>

                    <p>회원권/아카데미</p>

                </div>
            </a>


        </div><!--icon_m-->


        <div class="best_pro_ex">

            <div class="title_best_m">

                <p>7일동안 특별한 가격으로 만나는 상품!</p>

                <p><span>해외골프</span> 강력추천상품</p>

            </div>

            <div class="best_pro_m">

                <a href="#">

                    <div class="bestpro_01">
    
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/img/product01.png">
                        </div>
    
                        <div>
                            <p>인천출발></p>
                            <p>태국/치앙마이</p>
                            <p>치앙마이 아티타야 3박 5일</p>
                            <p>1,090,000원~</p>
                        </div>
    
                        <div class="bestpro_box01">
    
                            <div class="bestpro_star_01">
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/star.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/star.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/star.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/star.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/02star.png">
                                </div>
                            </div>
    
                            <div class="bestpro_review_01">
    
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/talk.png">
                                </div>
    
                                <p>203</p>
    
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/good.png">
                                </div>
    
                                <p>8.5</p>
    
                            </div>
        
                        </div>
    
                    
                    </div>
    
                </a>
    
                <a href="#">

                    <div class="bestpro_02">
    
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/img/product01.png">
                        </div>
    
                        <div>
                            <p>인천출발></p>
                            <p>태국/치앙마이</p>
                            <p>치앙마이 아티타야 3박 5일</p>
                            <p>1,090,000원~</p>
                        </div>
    
                        <div class="bestpro_box02">
    
                            <div class="bestpro_star_02">
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/star.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/star.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/star.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/star.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/02star.png">
                                </div>
                            </div>
    
                            <div class="bestpro_review_02">
    
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/talk.png">
                                </div>
    
                                <p>203</p>
    
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/good.png">
                                </div>
    
                                <p>8.5</p>
    
                            </div>
        
                        </div>
    
                    
                    </div>
    
                </a>

            </div>
        </div><!--ex-->

		<div class="popularity_m">

            <div class="title_popu_m">

                <p>많은 분들이 선택한 최고의 골프장 인기상품!</p>

                <p>지역별 <span>인기상품</span> BEST</p>

            </div>

            <input type="radio" name="popularity" id="popu01" checked>
            <input type="radio" name="popularity" id="popu02">
            <input type="radio" name="popularity" id="popu03">
            <input type="radio" name="popularity" id="popu04">
            <input type="radio" name="popularity" id="popu05">

            <div class="menu_popu_m">

                <label for="popu01">
                    <p>전체</p>
                </label>

                <label for="popu02">
                    <p>일본골프</p>
                </label>
                
                <label for="popu03">
                    <p>태국골프</p>
                </label>

                <label for="popu04">
                    <p>베트남골프</p>
                </label>

                <label for="popu05">
                    <p>대만골프</p>
                </label>

            </div>

    <div class="popu_pro_ex">

            <div class="popu_pro_m">

                <a href="#">

                <div class="popu_01">

                    <div>
                        <img src="${pageContext.request.contextPath}/resources/img/product01.png">
                    </div>

                    <div>
                        <p>인천출발></p>
                        <p>태국/치앙마이</p>
                        <p>치앙마이 아티타야 3박 5일</p>
                        <p>1,090,000원~</p>
                    </div>

                    <div class="popu_box01">

                        <div class="popu_star_01">
                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/star.png">
                            </div>
                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/star.png">
                            </div>
                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/star.png">
                            </div>
                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/star.png">
                            </div>
                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/02star.png">
                            </div>
                        </div>

                        <div class="popu_review_01">

                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/talk.png">
                            </div>

                            <p>203</p>

                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/good.png">
                            </div>

                            <p>8.5</p>

                        </div>
    
                    </div>

                
                </div>

            </a>

            <a href="#">

                <div class="popu_02">

                    <div>
                        <img src="${pageContext.request.contextPath}/resources/img/product01.png">
                    </div>

                    <div>
                        <p>인천출발></p>
                        <p>태국/치앙마이</p>
                        <p>치앙마이 아티타야 3박 5일</p>
                        <p>1,090,000원~</p>
                    </div>

                    <div class="popu_box02">

                        <div class="popu_star_02">
                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/star.png">
                            </div>
                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/star.png">
                            </div>
                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/star.png">
                            </div>
                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/star.png">
                            </div>
                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/02star.png">
                            </div>
                        </div>

                        <div class="popu_review_02">

                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/talk.png">
                            </div>

                            <p>203</p>

                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/good.png">
                            </div>

                            <p>8.5</p>

                        </div>
    
                    </div>

                
                </div>

            </a>

        </div>

    </div>

</div>

        

        <div class="eventzon_m">

            <div class="event_title_m">

                <p>7일동안 특별한 가격으로 만나는 상품!</p>
                <p><span>이벤트</span> / 기획전</p>

            </div>

            <div class="event_mobile">

                <a href="#">
                    <img src="${pageContext.request.contextPath}/resources/img/event01.png">
                </a>
    
                <a href="#">
                    <img src="${pageContext.request.contextPath}/resources/img/event02.png">
                </a>


            </div>

        </div>

        <div class="freegolf_m">

            <img src="${pageContext.request.contextPath}/resources/img/background_mobile.png">

            <div class="free_title_m">
                <p><span>지</span>역별 자유골프 만들기</p>
                <p>고객이 직접 골프장, 호텔, 렌터카, 기타 등등을<br>만들어 보세요!</p>
            </div>

            <div class="free_link_m">
				<a href="freegolf?region=일본">
				    <p>일본 자유골프</p>
				</a>
				
				<a href="freegolf?region=태국">
				    <p>태국 자유골프</p>
				</a>
				
				<a href="freegolf?region=베트남">
				    <p>베트남 자유골프</p>
				</a>
				
				<a href="freegolf?region=대만">
				    <p>대만 자유골프</p>
				</a>
            </div>

        </div>



    <section class="notic_tap">    

        <div class="notic_mobile">

            <div class="notic_txt_m">
                
                <div class="title_notic_m">

                    <p>공지사항</p>

                    <a href="#">
                        <p>더보기</p>
                    </a>

                </div>

                <div class="txt_notic_01">

                    <a href="#">
                        <p>태국 입국 서류 및 pcr 검사 안내</p>
                        <p>2022-05-12</p>
                    </a>

                </div>

                <div class="txt_notic_02">

                    <a href="#">
                        <p>[항공사 동향]항공사·면세점·급유···</p>
                        <p>2022-05-12</p>
                    </a>

                </div>

                <div class="txt_notic_03">

                    <a href="#">
                        <p>3년만에 일본 골프 상품 출시</p>
                        <p>2022-05-12</p>
                    </a>

                </div>

               
            </div>
            
        </div><!--공지사항-->

        <div class="call_box_m">

            <div class="call_num_m">

                <div class="box01_m">

                    <div>
                        <img src="${pageContext.request.contextPath}/resources/img/call.png">
                    </div>
    
                    <div>
                        <p>상담전화</p>
                        <p>1588-1855</p>
                    </div>
                    
                </div>

            </div>

            <div class="call_time_m">
                <p><span>평일</span> 09:00~18:00 <span>토요일</span> 09:00~12:00 <span>일요일 </span>및 <span>공휴일</span> 휴무</p>
            </div>

            <div class="call_time_m_mini">
                <p><span>평일</span> 09:00~18:00 <span>토요일</span> 09:00~12:00<br> <span>일요일 </span>및 <span>공휴일</span> 휴무</p>
            </div>

            <div class="visitant_m">
                <p>누적방문자수</p>
                <p>3,405,527</p>
            </div>


        </div><!--상담전화-->
    
    </section>

</body>
</html>