<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, minimum-scale=1.0, user-scalable=no">
    <title>freegolf</title>
	<link href="${pageContext.request.contextPath}/resources/css/freegolf.css" rel="stylesheet">
</head>
<body>

 <section class="freegolf">

	<div class="japen01"> 

		<div class="japen_menu">

			<div class="japen_title">
				<p>일본골프</p>
				<div>
					<img
						src="${pageContext.request.contextPath}/resources/img/freegolf/location.png">
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
					<img src="${pageContext.request.contextPath}/resources/img/freegolf/free_japen.png">
				</a>
			</div>

		</div><!--left-->

		<div class="right">

			<div class="title">

				<div>
					<img src="${pageContext.request.contextPath}/resources/img/freegolf/find.png">
				</div>

				<p>></p>

				<select id="free_menu">
					<option>일본자유골프</option>
					<option>태국자유골프</option>
					<option>베트남자유골프</option>
					<option>대만자유골프</option>
				</select>

				<p>></p>

				<p>14개 상품</p>

			</div><!--title-->

			<div class="all_btn_box">

				<a href="#"> 전체 </a>
				
				<select id="japan_menu">
					<option>도쿄/간도</option>
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

			</div>

			<div class="product_box">

				<div class="line_free_01"></div>

				<div class="free_pro_01">

					<div class="product01">

						<div>
							<img src="${pageContext.request.contextPath}/resources/img/freegolf/product01.png">
						</div>

						<div class="pro_box_01">

							<p>일본/도쿄</p>

							<p>썬라이즈 골프장 18홀</p>


							<div class="cash01">

								<p>1,090,000원~</p>

								<a href="freegolf_detail">상세보기</a>
							</div>


						</div>

					</div><!--01-->

					<div class="product02">

						<div>
							<img src="${pageContext.request.contextPath}/resources/img/freegolf/product02.png">
						</div>

						<div class="pro_box_02">

							<p>일본/도쿄</p>

							<p>썬라이즈 골프장 18홀</p>


							<div class="cash02">

								<p>1,090,000원~</p>

								<a href="#">상세보기</a>
							</div>

						</div>

					</div><!--02-->

					<div class="product03">

						<div>
							<img src="${pageContext.request.contextPath}/resources/img/freegolf/product03.png">
						</div>

						<div class="pro_box_03">

							<p>일본/도쿄</p>

							<p>썬라이즈 골프장 18홀</p>


							<div class="cash03">

								<p>1,090,000원~</p>

								<a href="#">상세보기</a>
							</div>


						</div>

					</div><!--03-->

				</div><!--1줄-->

				<div class="free_pro_02">

					<div class="product04">

						<div>
							<img src="${pageContext.request.contextPath}/resources/img/freegolf/product01.png">
						</div>

						<div class="pro_box_04">

							<p>일본/도쿄</p>

							<p>썬라이즈 골프장 18홀</p>


							<div class="cash04">

								<p>1,090,000원~</p>

								<a href="#">상세보기</a>
							</div>


						</div>

					</div><!--04-->

					<div class="product05">

						<div>
							<img src="${pageContext.request.contextPath}/resources/img/freegolf/product02.png">
						</div>

						<div class="pro_box_05">

							<p>일본/도쿄</p>

							<p>썬라이즈 골프장 18홀</p>


							<div class="cash05">

								<p>1,090,000원~</p>

								<a href="#">상세보기</a>
							</div>


						</div>

					</div><!--05-->

					<div class="product06">

						<div>
							<img src="${pageContext.request.contextPath}/resources/img/freegolf/product03.png">
						</div>

						<div class="pro_box_06">

							<p>일본/도쿄</p>

							<p>썬라이즈 골프장 18홀</p>


							<div class="cash06">

								<p>1,090,000원~</p>

								<a href="#">상세보기</a>
							</div>


						</div>

					</div><!--06-->

				</div><!--2줄-->

				<div class="free_pro_03">

					<div class="product07">

						<div>
							<img src="${pageContext.request.contextPath}/resources/img/freegolf/product01.png">
						</div>

						<div class="pro_box_07">

							<p>일본/도쿄</p>

							<p>썬라이즈 골프장 18홀</p>


							<div class="cash07">

								<p>1,090,000원~</p>

								<a href="#">상세보기</a>
							</div>

						</div>

					</div><!--07-->

					<div class="product08">

						<div>
							<img src="${pageContext.request.contextPath}/resources/img/freegolf/product02.png">
						</div>

						<div class="pro_box_08">

							<p>일본/도쿄</p>

							<p>썬라이즈 골프장 18홀</p>


							<div class="cash08">

								<p>1,090,000원~</p>

								<a href="#">상세보기</a>
							</div>


						</div>

					</div><!--08-->

					<div class="product09">

						<div>
							<img src="${pageContext.request.contextPath}/resources/img/freegolf/product03.png">
						</div>

						<div class="pro_box_09">

							<p>일본/도쿄</p>

							<p>썬라이즈 골프장 18홀</p>


							<div class="cash09">

								<p>1,090,000원~</p>

								<a href="#">상세보기</a>
							</div>


						</div>

					</div><!--09-->

				</div><!--3줄-->

				<div class="free_pro_04">

					<div class="product10">

						<div>
							<img src="${pageContext.request.contextPath}/resources/img/freegolf/product01.png">
						</div>

						<div class="pro_box_10">

							<p>일본/도쿄</p>

							<p>썬라이즈 골프장 18홀</p>


							<div class="cash10">

								<p>1,090,000원~</p>

								<a href="#">상세보기</a>
							</div>


						</div>

					</div><!--10-->

					<div class="product11">

						<div>
							<img src="${pageContext.request.contextPath}/resources/img/freegolf/product02.png">
						</div>

						<div class="pro_box_11">

							<p>일본/도쿄</p>

							<p>썬라이즈 골프장 18홀</p>


							<div class="cash11">

								<p>1,090,000원~</p>

								<a href="#">상세보기</a>
							</div>


						</div>

					</div><!--11-->

					<div class="product12">

						<div>
							<img src="${pageContext.request.contextPath}/resources/img/freegolf/product03.png">
						</div>

						<div class="pro_box_12">

							<p>일본/도쿄</p>

							<p>썬라이즈 골프장 18홀</p>


							<div class="cash12">

								<p>1,090,000원~</p>

								<a href="#">상세보기</a>
							</div>


						</div>

					</div><!--12-->

				</div><!--4줄-->

				<div class="free_pro_05">

					<div class="product13">

						<div>
							<img src="${pageContext.request.contextPath}/resources/img/freegolf/product01.png">
						</div>

						<div class="pro_box_13">

							<p>일본/도쿄</p>

							<p>썬라이즈 골프장 18홀</p>


							<div class="cash13">

								<p>1,090,000원~</p>

								<a href="#">상세보기</a>
							</div>

						</div>

					</div><!--13-->

					<div class="product14">

						<div>
							<img src="${pageContext.request.contextPath}/resources/img/freegolf/product02.png">
						</div>

						<div class="pro_box_14">

							<p>일본/도쿄</p>

							<p>썬라이즈 골프장 18홀</p>


							<div class="cash14">

								<p>1,090,000원~</p>

								<a href="#">상세보기</a>
							</div>


						</div>

					</div><!--14-->

					<div class="product15">

						<div>
							<img src="${pageContext.request.contextPath}/resources/img/freegolf/product03.png">
						</div>

						<div class="pro_box_15">

							<p>일본/도쿄</p>

							<p>썬라이즈 골프장 18홀</p>


							<div class="cash15">

								<p>1,090,000원~</p>

								<a href="#">상세보기</a>
							</div>

						</div>

					</div><!--15-->

				</div><!--5줄-->

			</div>

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
			</div><!--btn-->


			<div class="golf_course">

				<div class="title_cour">
					<p>
						<span>골프아이</span>가 인증한 일본의 명품 골프장
					</p>
					<p>명품 골프장에서 즐기는 라운딩을 누려보세요!</p>
				</div>

				<div class="product_course">

					<a href="#">
						<div>
							<img src="${pageContext.request.contextPath}/resources/img/freegolf/01golfccourse.png">
						</div>
					</a>
					<a href="#">
						<div>
							<img src="${pageContext.request.contextPath}/resources/img/freegolf/02golfccourse.png">
						</div>
					</a>
					<a href="#">
						<div>
							<img src="${pageContext.request.contextPath}/resources/img/freegolf/03golfccourse.png">
						</div>
					</a>

				</div>

			</div>

		</div><!--right-->
		
	</section>

    <div class="freedom">

        <div class="title_freegolf">

            <p><span>지</span>역별 자유골프 만들기</p>
            <p>고객이 직접 골프장, 호텔, 렌터카, 기타 등등을<br>만들어 보세요.</p>

        </div>

        <div class="country">
            <div><a href="freegolf">일본 자유골프→</a></div>
            <div><a href="freegolf">태국 자유골프→</a></div>
            <div><a href="freegolf">베트남 자유골프→</a></div>
            <div><a href="freegolf">대만 자유골프→</a></div>
        </div>
        
    </div> <!--자유골프-->

	
	<!-- 모바일 -->
    <section class="mobile">

            <input type="checkbox" id="menu_m">
    
            <header class="header_m">
    
                <label for="menu_m" class="menu_m">
                    <img src="${pageContext.request.contextPath}/resources/img/freegolf/menu_btn.png">
                </label>
    
                <div class="rout_m">
                    <p>일본자유골프</p>
                </div>
    
                <div class="header_button">
    
                    <div class="main_m">
                        <a href="index">
                            <img src="${pageContext.request.contextPath}/resources/img/freegolf/home_m.png">
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
                                    <a href="category">
                                        <li>
                                            <p>도쿄/간도</p>
                                        </li>
                                    </a>
    
                                    <a href="#">
                                        <li>
                                            <p>오사카/간사이</p>
                                        </li>
                                    </a>
    
                                    <a href="#">
                                        <li>
                                            <p>홋카이도/삿포로</p>
                                        </li>
                                    </a>
    
                                    <a href="#">
                                        <li>
                                            <p>오키나와/나하</p>
                                        </li>
                                    </a>
    
                                    <a href="#">
                                        <li>
                                            <p>후쿠오카/야마구치</p>
                                        </li>
                                    </a>
    
                                    <a href="#">
                                        <li>
                                            <p>가고시마/미야자키</p>
                                        </li>
                                    </a>
    
                                    <a href="#">
                                        <li>
                                            <p>구마모토/오이타</p>
                                        </li>
                                    </a>
    
                                    <a href="#">
                                        <li>
                                            <p>나카사키/사가</p>
                                        </li>
                                    </a>
    
                                    <a href="#">
                                        <li>
                                            <p>아오모리/니카타</p>
                                        </li>
                                    </a>
    
                                    <a href="#">
                                        <li>
                                            <p>나고야/도카이</p>
                                        </li>
                                    </a>
    
                                    <a href="#">
                                        <li>
                                            <p>오카야마/츄고쿠</p>
                                        </li>
                                    </a>
    
    
                                    <a href="#">
                                        <li>
                                            <p>다카마츠/마츠야마</p>
                                        </li>
                                    </a>
    
    
                                </ul>
    
                            </div><!--일본-->
    
                            <div class="thailand_m">
    
                                <ul>
    
                                    <a href="#">
                                        <li>
                                            <p>방콕/파타야</p>
                                        </li>
                                    </a>
    
                                    <a href="#">
                                        <li>
                                            <p>치앙마이/치앙라이</p>
                                        </li>
                                    </a>
    
                                    <a href="#">
                                        <li>
                                            <p>푸켓</p>
                                        </li>
                                    </a>
    
                                    <a href="#">
                                        <li>
                                            <p>칸차나부리/아유타야</p>
                                        </li>
                                    </a>
    
                                    <a href="#">
                                        <li>
                                            <p>후아힌</p>
                                        </li>
                                    </a>
    
                    
                                </ul>
    
                            </div><!--태국-->
    
                            <div class="vietnam_m">
    
                                <ul>
    
                                    <a href="#">
                                        <li>
                                            <p>나트랑</p>
                                        </li>
                                    </a>
    
                                    <a href="#">
                                        <li>
                                            <p>푸꾸옥</p>
                                        </li>
                                    </a>
    
                                    <a href="#">
                                        <li>
                                            <p>다낭</p>
                                        </li>
                                    </a>
    
                                    <a href="#">
                                        <li>
                                            <p>하노이</p>
                                        </li>
                                    </a>
    
                                    <a href="#">
                                        <li>
                                            <p>호치민</p>
                                        </li>
                                    </a>
    
                                    <a href="#">
                                        <li>
                                            <p>달랏</p>
                                        </li>
                                    </a>
    
                    
                                </ul>
    
                            </div><!--베트남-->
    
                            <div class="taiwan_m">
    
                                <ul>
    
                                    <a href="#">
                                        <li>
                                            <p>가오슝</p>
                                        </li>
                                    </a>
    
                                    <a href="#">
                                        <li>
                                            <p>타이중</p>
                                        </li>
                                    </a>
    
                                    <a href="#">
                                        <li>
                                            <p>타이페이</p>
                                        </li>
                                    </a>
    
                                    <a href="#">
                                        <li>
                                            <p>신죽</p>
                                        </li>
                                    </a>
    
                                    <a href="#">
                                        <li>
                                            <p>타오위안</p>
                                        </li>
                                    </a>
    
                                    <a href="#">
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
    
            <div class="sub_line_m_01"></div>
    
            <div class="free_m_title">
                <p>일본자유골프</p>
            </div>
    
           
            <div class="sub_line_m_02">
                <div></div>
                <div></div>
            </div>
    
            <div class="select_box_m">
    
                <p>총 14개 상품</p>
    
                <div class="select_m">
    
                    <select id="select01">
                        <option>일본자유골프</option>
                        <option>태국자유골프</option>
                        <option>베트남자유골프</option>
                        <option>대만자유골프</option>
                    </select>
    
                    <select id="select02">
                        <option>전체</option>
                        <option>도쿄/간도</option>
                        <option>오사카/간사이</option>
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
    
                    
                </div>
    
            </div>
    
            <div class="sub_line_m_03"></div>
    
            <div class="product_mobile_box">
    
                <a href="#">
    
                    <div class="procuct_01_m">
    
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/img/freegolf/product01.png">
                        </div>
    
                        <div class="txt_m_01">
                            <p>일본/도쿄</p>
                            <p>썬라이즈 골프장 18홀</p>
                            <p>1,090,000원~</p>
                        </div>
    
                        <div class="freebtn_m_01">
                            <p>상세보기</p>
                        </div>
    
                    </div>
                </a>
    
                <a href="#">
                    
                    <div>
    
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/img/freegolf/product02.png">
                        </div>
    
                        <div>
                            <p>일본/도쿄</p>
                            <p>썬라이즈 골프장 18홀</p>
                            <p>1,090,000원~</p>
                        </div>
    
                        <div>
                            <p>상세보기</p>
                        </div>
    
                    </div>
                </a>
    
                <a href="#">
                    
                    <div>
    
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/img/freegolf/product03.png">
                        </div>
    
                        <div>
                            <p>일본/도쿄</p>
                            <p>썬라이즈 골프장 18홀</p>
                            <p>1,090,000원~</p>
                        </div>
    
                        <div>
                            <p>상세보기</p>
                        </div>
    
                    </div>
                </a>
    
            </div><!--product-->
    
    
            <div class="num_m_btn">
            
                <a href="#">
                    <p><</p>
                </a>
    
                <a href="#">
                    <p>1</p>
                </a>
    
                <a href="#">
                    <p>2</p>
                </a>
    
                <a href="#">
                    <p>3</p>
                </a>
    
                <a href="#">
                    <p>4</p>
                </a>
    
                <a href="#">
                    <p>5</p>
                </a>
    
                <a href="#">
                    <p>6</p>
                </a>
    
                <a href="#">
                    <p>7</p>
                </a>
    
                <a href="#">
                    <p>></p>
                </a>
            </div>
    
            <div class="golf_box_m">
    
                <div class="golf_title_m">
                    
                    <p><span>골프아이</span>가 인증한 일본의 명품 골프장</p>
                    <p>명품 골프장에서 즐기는 라운딩을 누려보세요!</p>
    
                </div>
    
                <a href="#">
                    <img src="${pageContext.request.contextPath}/resources/img/freegolf/01golfccourse.png">
                </a>
    
                <a href="#">
                    <img src="${pageContext.request.contextPath}/resources/img/freegolf/02golfccourse.png">
                </a>
    
                <a href="#">
                    <img src="${pageContext.request.contextPath}/resources/img/freegolf/03golfccourse.png">
                </a>
    
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
    
    </section><!--mobile-->


</body>
</html>