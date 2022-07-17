<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, minimum-scale=1.0, user-scalable=no">
    <title>sub</title>
	<link href="${pageContext.request.contextPath}/resources/css/sub.css" rel="stylesheet">
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
				<a href="category?region=japan&city=도쿄/간도">
					<p>도쿄/간도</p>
					<p>></p>
				</a>
			</div>

			<div class="menu02">
				<a href="category?region=japan&city=오사카/간사이">
					<p>오사카/간사이</p>
					<p>></p>
				</a>
			</div>

			<div class="menu03">
				<a href="category?region=japan&city=오키나와/나하">
					<p>오키나와/나하</p>
					<p>></p>
				</a>
			</div>

			<div class="menu04">
				<a href="category?region=japan&city=후쿠오카/야마구치">
					<p>후쿠오카/야마구치</p>
					<p>></p>
				</a>
			</div>

			<div class="menu05">
				<a href="category?region=japan&city=가고시마/미야자키">
					<p>가고시마/미야자키</p>
					<p>></p>
				</a>
			</div>

			<div class="menu06">
				<a href="category?region=japan&city=구마모토/오이타">
					<p>구마모토/오이타</p>
					<p>></p>
				</a>
			</div>

			<div class="menu07">
				<a href="category?region=japan&city=나카사키/사가">
					<p>나카사키/사가</p>
					<p>></p>
				</a>
			</div>

			<div class="menu08">
				<a href="category?region=japan&city=아오모리/니카타">
					<p>아오모리/니카타</p>
					<p>></p>
				</a>
			</div>

			<div class="menu09">
				<a href="category?region=japan&city=나고야/도카이">
					<p>나고야/도카이</p>
					<p>></p>
				</a>
			</div>

			<div class="menu10">
				<a href="category?region=japan&city=오카야마/츄고쿠">
					<p>오카야마/츄고쿠</p>
					<p>></p>
				</a>
			</div>

			<div class="menu11">
				<a href="category?region=japan&city=다카마츠/마츠야마">
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

<!-- 				<p>총 15개 상품</p> -->
				<p>총 ${total}개</p>

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
					<c:forEach items="${image}" var="image" varStatus="status">
					<div class="product01">

						<a href="product_detail?region=${param.region}&city=${param.city}&
						product_code=${bbsList[status.index].product_code}&productName=${bbsList[status.index].productName}">

						<div>
							<img src="data:image/png;base64,${image}" style="width:320px;">
<%-- 						<img src="${pageContext.request.contextPath}/resources/img/category/product01.png"> --%>
						</div>

					
							<div class="product_text_01">
								<p>${bbsList[status.index].arrival} 출발 ></p>
								<p>${bbsList[status.index].city}</p>
								<p>${bbsList[status.index].productName}</p>
								<p><fmt:formatNumber value="${bbsList[status.index].lowestPrice}" pattern="#,###" />원 ~ </p>
							</div>
						</a>
						
					</div><!--product_01-->
					</c:forEach>
					<%-- 게시물 노출 --%>
 

				</div> <!--zon05--> 
			</div> <!--all_box-->

				<%-- 페이징  --%>    
				<div class="number_btn">
<%-- 
					<a href="category?page=${pageMaker.startPage}"><p>&lt;&lt;</p></a>
 --%>					
					<c:if test="${pageMaker.prev}">
					<a href="category?page=${pageMaker.startPage-1}"><p>&lt;</p></a>
					</c:if>
					
                    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="p">
                 		<a href="category?page=${p}" style="color: red;"><p>${p}</p></a>    
                    </c:forEach>

					<c:if test="${pageMaker.next && pageMaker.endPage>0}">
					<a href="category?page=${pageMaker.endPage+1}"><p>&gt;</p></a>
					</c:if>
<%-- 					
					<a href="category?page=${pageMaker.endPage}"><p>&gt;&gt;</p></a>
 --%>
				</div>
				<%-- 페이징  --%>
				
				
			</div><!--right-->
		</div>
	</section>
	
	
	
	
	
	<!-- 모바일 -->
	<section class="mobile">
	
	    <input type="checkbox" id="menu_m">
	
	    <header class="header_m">
	
	        <label for="menu_m" class="menu_m">
	            <img src="${pageContext.request.contextPath}/resources/img/category/menu_btn.png">
	        </label>
	
	        <div class="rout_m">
	            <p>도쿄/간토</p>
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
	                            <a href="#">
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
	
	    <div class="sub_menu_m">
	
	        <ul>
	            <a href="#">
	                <li>
	                    <p>도쿄/간토</p>
	                </li>
	            </a>
	
	            <a href="#">
	                <li>
	                    <p>오사카/간사이</p>
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
	                    <p>구가모토/오이타</p>
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
	                    <p>오키야마/츄고쿠</p>
	                </li>
	            </a>
	
	            <a href="#">
	                <li>
	                    <p>다카마츠/마츠야마</p>
	                </li>
	            </a>
	
	         
	            <li></li>
	            
	        </ul>
	
	    </div>
	
	    <div class="sub_line_m_02"></div>
	
	    <div class="select_box_m">
	
	        <p>총 15개 상품</p>
	
	        <div class="select_m">
	
	            <select id="select01">
	                <option>인기순</option>
	                <option>낮은 가격순</option>
	                <option>높은 가격순</option>
	            </select>
	
	            <select id="select02">
	                <option>전체</option>
	                <option>인천출발</option>
	                <option>김해출발</option>
	                <option>대구출발</option>
	            </select>
	        </div>
	
	    </div>
	
	    <div class="sub_line_m_03"></div>
	
	
	    <div class="product_m_box01">
	
	        <a href="#">
	
	            <div>
	
	                <div>
	                    <img src="${pageContext.request.contextPath}/resources/img/category/product01.png">
	                </div>
	
	                <div class="txt01_m">
	
	                    <div>
	                        <p>인천출발 ></p>
	                        <p>태국/치앙마이</p>
	                        <p>치앙마이 아티타야 3박 5일</p>
	                        <p>1,090,000원~</p>
	                    </div>
	
	                </div>
	
	                <div class="icon_m_01">
	
	                    <div class="star_m_01">
	                        <div>
	                            <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                        </div>
	                        <div>
	                            <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                        </div>
	                        <div>
	                            <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                        </div>
	                        <div>
	                            <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                        </div>
	                        <div>
	                            <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                        </div>
	                    </div>
	
	                    <div class="good_m_01">
	
	                        <div>
	
	                            <div>
	                                <img src="${pageContext.request.contextPath}/resources/img/category/talk.png">
	                            </div>
	
	                            <p>203</p>
	
	                        </div>
	
	                        <div>
	                            <div>
	                                <img src="${pageContext.request.contextPath}/resources/img/category/good.png">
	                            </div>
	
	                            <p>8.5</p>
	                        </div>
	
	                    </div>
	
	
	                </div>
	
	            </div>
	        </a>
	
	        <a href="#">
	
	            <div>
	
	                <div>
	                    <img src="${pageContext.request.contextPath}/resources/img/category/product01.png">
	                </div>
	
	                <div class="txt02_m">
	
	                    <div>
	                        <p>인천출발 ></p>
	                        <p>태국/치앙마이</p>
	                        <p>치앙마이 아티타야 3박 5일</p>
	                        <p>1,090,000원~</p>
	                    </div>
	
	                </div>
	
	                <div class="icon_m_02">
	
	                    <div class="star_m_02">
	                        <div>
	                            <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                        </div>
	                        <div>
	                            <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                        </div>
	                        <div>
	                            <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                        </div>
	                        <div>
	                            <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                        </div>
	                        <div>
	                            <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                        </div>
	                    </div>
	
	                    <div class="good_m_02">
	
	                        <div>
	
	                            <div>
	                                <img src="${pageContext.request.contextPath}/resources/img/category/talk.png">
	                            </div>
	
	                            <p>203</p>
	                            
	                        </div>
	
	                        <div>
	                            <div>
	                                <img src="${pageContext.request.contextPath}/resources/img/category/good.png">
	                            </div>
	
	                            <p>8.5</p>
	                        </div>
	
	                    </div>
	
	
	                </div>
	
	            </div>
	        </a>
	
	    </div>
	
	
	    <div class="banner_m">
	        <a href="freegolf">
	            <img src="${pageContext.request.contextPath}/resources/img/category/freebanner_m.png">
	        </a>
	    </div>
	
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
	
	   
	</section><!--mobile-->

</body>
</html>