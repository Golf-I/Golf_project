<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>header</title>
	<link href="${pageContext.request.contextPath}/resources/css/header.css"	rel="stylesheet">
	
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
  	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/npm/js-cookie@2/src/js.cookie.min.js"></script>
</head>
<body>

	<input type="checkbox" id="menu_btn">

    <header class="header">

       <div class="header_top_ex">

           <div class="header_top_box">

               <div class="header_top">

                   <div class="button">
			
					<div class="favorites">
						<p>
							<a href="#">즐겨찾기</a>
						</p>
					</div><!--즐겨찾기-->
				
				
				<c:choose>
					<%-- 로그인 했을 때 --%>
					<c:when test="${sessionScope.id != null}">
						<div class="resercation">
							<p>
								<a href="member_reservation">예약확인</a>
							</p>
						</div><!--예약확인-->
					</c:when>
						
					<%-- 로그인 안했을 때 --%>
					<c:otherwise>
						<div class="resercation">
							<p>
								<a href="login">예약확인</a>
							</p>
						</div><!--예약확인-->
					</c:otherwise>
				</c:choose>
				
				<c:choose>
					<%-- 로그인 했을 때 --%>
					<c:when test="${sessionScope.id != null}">
						<div class="logout">
		                    <p>
		                        <a href="member/signout">로그아웃</a>
		                    </p>
                		</div>
					</c:when>
						
					<%-- 로그인 안했을 때 --%>
					<c:otherwise>
					</c:otherwise>
				</c:choose>
				

                </div><!--button-->

            </div><!--top-->

        </div><!--top_box-->

   	</div><!--ex-->

		<div class="header_middle">
		
			<div class="middle_top">
			
				<div class="logo">
				
					<a href="index">
						<img src="${pageContext.request.contextPath}/resources/img/logo.png">
					</a>
				</div><!--로고-->


				<div class="search">
					<div class="calendar">
						<img src="${pageContext.request.contextPath}/resources/img/calendar.png">
					</div>

					<a href="#">

					<div class="qna_button">
						<img src="${pageContext.request.contextPath}/resources/img/search_btn.png">
					</div>
					
					</a>
					
				</div><!--검색 박스-->


				<div class="call_header">
					<img src="${pageContext.request.contextPath}/resources/img/call_header.png">
				</div><!-- class="call_header" -->

				<div class="login_btn">
					<div class="login">

					<c:choose>
						<%-- 로그인 했을 때 --%>
						<c:when test="${sessionScope.id != null}">
							<a href="mypage_pre">
								<img src="${pageContext.request.contextPath}/resources/img/login.png">
							</a>
						</c:when>
							
						<%-- 로그인 안했을 때 --%>
						<c:otherwise>
							<a href="login">
								<img src="${pageContext.request.contextPath}/resources/img/login.png">
							</a>
						</c:otherwise>
					</c:choose>

					</div>


					<label for="menu_btn">
						<img src="${pageContext.request.contextPath}/resources/img/menu.png">
					</label>
					
				</div><!-- class="login_btn" -->
				
			</div><!-- class="middle_top" -->
			
			
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
			</div><!-- class="middle_bottom" -->
			
		</div><!-- header_middle -->


		<div class="lnb_ex">
		
			<div class="lnb">
			
				<ul>

                    <a href="category">
                        <li>
                            <p>일본골프</p>
                        </li>
                    </a>

                    <a href="category">
                        <li>
                            <p>태국골프</p>
                        </li>
                    </a>

                    <a href="category">
                        <li>
                            <p>베트남골프</p>
                        </li>
                    </a>

                    <a href="category">
                        <li>
                            <p>대만골프</p>
                        </li>
                    </a>

                    <a href="category">
                        <li>
                            <p>기획전/이벤트</p>
                        </li>
                    </a>

					<c:choose>

						<%-- 로그인 했을 때 --%>
						<c:when test="${sessionScope.id != null}">
	                    <a href="mypage_pre">
	                        <li>
	                            <p>마이페이지</p>
	                        </li>
	                    </a>
						</c:when>

						<%-- 로그인 안했을 때 --%>
						<c:otherwise>
	                    <a href="login">
	                        <li>
	                            <p>마이페이지</p>
	                        </li>
	                    </a>
						</c:otherwise>
					
					</c:choose>

                    <a href="membership">
                        <li>
                            <p>회원권/아카데미</p>
                        </li>
                    </a>

                </ul>
                
            </div><!--lnb-->
            
            <div class="btn_sheet">

            <ul>
                <li>
                    <a href="category">일본골프</a>
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
                        <li><a href="category">다카마츠/마츠야마</a></li>
                        </div>
                    </ul><!--일본-->
                </li><!--일본-->

                <div class="line01">
                    <div class="menu_line01"></div>
                    <div class="menu_line02"></div>
                </div>

                <li>
                    <a href="#">태국골프</a>
                    <ul>
                        <div class="sub_menu02">
                        <li><a href="category">방콕/파타야</a></li>
                        <li><a href="category">치앙마이/치앙라이</a></li>
                        <li><a href="category">푸켓</a></li>
                        <li><a href="category">칸차나부리/아유타야</a></li>
                        <li><a href="category">후아힌</a></li>
                        </div>
                    </ul><!--태국-->
                </li><!--태국-->

                <div class="line02">
                    <div class="menu_line03"></div>
                    <div class="menu_line04"></div>
                </div>

                <li>
                    <a href="#">베트남골프</a>
                    <ul>
                        <div class="sub_menu03">
                        <li><a href="category">나트랑</a></li>
                        <li><a href="category">푸꾸옥</a></li>
                        <li><a href="category">다낭</a></li>
                        <li><a href="category">하노이</a></li>
                        <li><a href="category">호치민</a></li>
                        <li><a href="category">달랏</a></li>
                        </div>
                    </ul><!--베트남-->
                </li><!--베트남-->

                <div class="line03">
                    <div class="menu_line05"></div>
                    <div class="menu_line06"></div>
                </div>

                <li>
                    <a href="#">대만골프</a>
                    <ul>
                        <div class="sub_menu04">
                        <li><a href="category">가오슝</a></li>
                        <li><a href="category">타이중</a></li>
                        <li><a href="category">타이페이</a></li>
                        <li><a href="category">신죽</a></li>
                        <li><a href="category">타오위안</a></li>
                        <li><a href="category">이란/화련</a></li>
                        </div>
                    </ul><!--대만-->
                </li><!--대만-->

                <div class="line04">
                    <div class="menu_line07"></div>
                    <div class="menu_line08"></div>
                </div>

                <li>
                    <a href="membership">회원권/아카데미</a>
                    <ul>
                        <div class="sub_menu05">
                        <li><a href="membership">회원권</a></li>
                        <li><a href="academy">아카데미</a></li>
                        </div>
                    </ul><!--회원권-->
                </li><!--회원권-->

                <div class="line05">
                    <div class="menu_line09"></div>
                    <div class="menu_line10"></div>
                </div>


                </ul>
            </div>

        </div><!--ex-->

    </header><!--header-->

</body>
</html>