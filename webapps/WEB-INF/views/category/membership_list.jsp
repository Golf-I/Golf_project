<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, minimum-scale=1.0, user-scalable=no">
    <title>membership</title>
    <link href="${pageContext.request.contextPath}/resources/css/membership.css" rel="stylesheet">
</head>
<body>

	<section class="web">

        <div class="membership">

            <div class="membership_left">

                <div class="menu_m">

                    <div>
                        <p>회원권/아카데미</p>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/img/member/membership/location.png">
                        </div>
                    </div>

                <ul>

                    <a href="membership">
                        <li>
                            <p>회원권</p>
                            <p>></p>
                        </li>
                    </a>

                    <a href="academy">
                        <li>
                            <p>아카데미</p>
                            <p>></p>
                        </li>
                    </a>

                </ul>


                </div>

            </div>


            <div class="membership_right">

                <div class="rout_m">

                    <div>
                        <img src="${pageContext.request.contextPath}/resources/img/member/membership/find.png">
                    </div>

                    <p>></p>

                    <p>회원권/아카데미</p>

                    <p>></p>

                    <p>회원권</p>

                </div>

                <p>회원권</p>

                <div class="line01"></div>

                <div class="product01">

					<c:forEach items="${membershipList}" var="membershipList">
					<a href="membership_detail?no=${membershipList.no}">
						
						<div class="box01">
						    <div>
						        <p>가격</p>
						        <p><fmt:formatNumber value="${membershipList.price}" pattern="#,###" />원</p>
<!-- 						        <p>12,000,000원</p> -->
						    </div>
						    <div>
						        <img src="${pageContext.request.contextPath}/resources/img/member/membership/01academy.png">
						     </div>
						</div><!-- box01 -->
					</a>
					</c:forEach>
	
                </div>	
<%--                     <a href="#">

                        <div class="box02">

                            <div>
                                <p>가격</p>
                                <p>12,000,000원</p>
                            </div>

                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/member/membership/02academy.png">
                            </div>
                        </div>

                    </a>

                    <a href="#">

                        <div class="box03">

                            <div>
                                <p>가격</p>
                                <p>12,000,000원</p>
                            </div>

                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/member/membership/03academy.png">
                            </div>
                        </div>

                    </a> 

                </div> --%>

                <%-- <div class="product02">

                    <a href="#">

                            <div class="box04">

                                <div>
                                    <p>가격</p>
                                    <p>12,000,000원</p>
                                </div>
    
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/member/membership/01academy.png">
                                </div>
                            </div>

                    </a>

                    <a href="#">

                        <div class="box05">

                            <div>
                                <p>가격</p>
                                <p>12,000,000원</p>
                            </div>

                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/member/membership/02academy.png">
                            </div>
                        </div>

                    </a>

                    <a href="#">

                        <div class="box06">

                            <div>
                                <p>가격</p>
                                <p>12,000,000원</p>
                            </div>

                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/member/membership/03academy.png">
                            </div>
                        </div>

                    </a>

                </div>

                <div class="product03">

                    <a href="#">

                            <div class="box07">

                                <div>
                                    <p>가격</p>
                                    <p>12,000,000원</p>
                                </div>
    
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/member/membership/01academy.png">
                                </div>
                            </div>

                    </a>

                    <a href="#">

                        <div class="box08">

                            <div>
                                <p>가격</p>
                                <p>12,000,000원</p>
                            </div>

                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/member/membership/02academy.png">
                            </div>
                        </div>

                    </a>

                    <a href="#">

                        <div class="box09">

                            <div>
                                <p>가격</p>
                                <p>12,000,000원</p>
                            </div>

                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/member/membership/03academy.png">
                            </div>
                        </div>

                    </a>

                </div> --%>

            </div>
            
            
           	<%-- 페이징  --%>    
			<div class="num_btn">
			
				<c:if test="${pageMaker.totalCount != 1 && pageMaker.totalCount != 0}">
					<a href="membership?page=${pageMaker.startPage}"><p>&lt;&lt;</p></a>
				</c:if>
				
				<c:if test="${pageMaker.prev}">
					<a href="membership?page=${pageMaker.startPage-1}"><p>&lt;</p></a>
				</c:if>
				
				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="p">
					<a href="membership?page=${p}" style="color:red;"><p>${p}</p></a>    
				</c:forEach>
				
				<c:if test="${pageMaker.next && pageMaker.endPage>0}">
					<a href="membership?page=${pageMaker.endPage+1}"><p>&gt;</p></a>
				</c:if>

				<c:if test="${pageMaker.totalCount != 1 && pageMaker.totalCount != 0}">
					<a href="membership?page=${pageMaker.endPage}"><p>&gt;&gt;</p></a>
				</c:if>

			</div><!-- class="num_btn" -->
			<%-- 페이징  --%>
                
<!--                     <a href="#">
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
                    </a> -->
                
        </div>

    </section>
    
    
    <!-- 모바일 -->
   	<section class="mobile">

        <input type="checkbox" id="menu_m">

        <header class="header_m">

            <label for="menu_m" class="menu_m">
                <img src="img/menu_btn.png">
            </label>

            <div class="rout_mobile">
                <p>회원권</p>
            </div>

            <div class="header_button">

                <div class="main_m">
                    <a href="../index.html">
                        <img src="img/home_m.png">
                    </a>
                </div>

                <div class="login_m">
                    <a href="#">
                        <img src="img/login_mobile.png">
                    </a>
                </div>

            </div>


            <div class="lnb_mobile">


                <div class="gnb_mobile">

                    <ul>

                        <li>
                            <a href="../login/login.html">
                                <p>로그인</p>
                            </a>
                        </li>

                        <li>
                            <div></div>
                        </li>

                        <li>
                            <a href="#">
                                <p>즐겨찾기</p>
                            </a>
                        </li>

                        <li>
                            <div></div>
                        </li>

                        <li>
                            <a href="#">
                                <p>예약확인</p>
                            </a>
                        </li>

                        <li>
                            <div></div>
                        </li>

                        <li>
                            <a href="#">
                                <p>마이페이지</p>
                            </a>
                        </li>

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
                                <a href="../sub/sub.html">
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
                                <a href="../event01/event01.html">
                                    <li>
                                        <p>기획전/이벤트</p>
                                    </li>
                                </a>
                            </ul>

                        </div><!--이벤트-->

                        <div class="academy_m">

                            <ul>
                                <a href="membership.html">
                                    <li>
                                            <p>회원권</p>
                                    </li>
                                </a>

                                <a href="../academy/academy.html">
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

        <div class="member_line_m_01"></div>

        <div class="member_menu_m">

            <a href="../academy/academy.html">
                <p>아카데미</p>
            </a>

            <a href="membership.html">
                <p>회원권</p>
            </a>

        </div>

        <div class="membership_title_m">
            <p>회원권</p>
        </div>

        <div class="member_line_m_02">
            <div></div>
            <div></div>
        </div>


        <div class="member_box_m">

            <a href="#">

                <div>
                    <p>가격</p>
                    <p>12,000,000원</p>
                </div>

                <div>
                    <img src="img/01academy.png">
                </div>

            </a>

            <a href="#">

                <div>
                    <p>가격</p>
                    <p>12,000,000원</p>
                </div>

                <div>
                    <img src="img/02academy.png">
                </div>

            </a>

            <a href="#">

                <div>
                    <p>가격</p>
                    <p>12,000,000원</p>
                </div>

                <div>
                    <img src="img/03academy.png">
                </div>

            </a>

            <a href="#">

                <div>
                    <p>가격</p>
                    <p>12,000,000원</p>
                </div>

                <div>
                    <img src="img/01academy.png">
                </div>

            </a>

            <a href="#">

                <div>
                    <p>가격</p>
                    <p>12,000,000원</p>
                </div>

                <div>
                    <img src="img/02academy.png">
                </div>

            </a>

            <a href="#">

                <div>
                    <p>가격</p>
                    <p>12,000,000원</p>
                </div>

                <div>
                    <img src="img/03academy.png">
                </div>

            </a>

            <a href="#">

                <div>
                    <p>가격</p>
                    <p>12,000,000원</p>
                </div>

                <div>
                    <img src="img/01academy.png">
                </div>

            </a>

            <a href="#">

                <div>
                    <p>가격</p>
                    <p>12,000,000원</p>
                </div>

                <div>
                    <img src="img/02academy.png">
                </div>

            </a>

            <a href="#">

                <div>
                    <p>가격</p>
                    <p>12,000,000원</p>
                </div>

                <div>
                    <img src="img/03academy.png">
                </div>

            </a>

            <a href="#">

                <div>
                    <p>가격</p>
                    <p>12,000,000원</p>
                </div>

                <div>
                    <img src="img/01academy.png">
                </div>

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

        <footer class="footer_m">

            <div class="footer_top_m">

                <div class="sns_m">

                    <a href="#">
                        <img src="img/kakao.png">
                    </a>

                    <a href="#">
                        <img src="img/naver.png">
                    </a>

                    <a href="#">
                        <img src="img/facebook.png">
                    </a>

                    <a href="#">
                        <img src="img/band.png">
                    </a>


                </div>

            </div>

            <div class="footer_mid_m">
                
                <ul>
                    
                    <a href="../company/company.html">
                        <li>
                            <p>회사소개</p>
                        </li>
                    </a>


                    <a href="../agreement/agreement.html">
                        <li>
                            <p>이용약관</p>
                        </li>
                    </a>

                    <a href="../travel/travel.html">
                        <li>
                            <p>여행약관</p>
                        </li>
                    </a>
    
                    <a href="../privacy_policy/privacy_policy.html">
                        <li>
                            <p>개인정보처리방침</p>
                        </li>
                    </a>

    
                    <a href="../email/email.html">
                        <li>
                            <p>이메일무단수집거부</p>
                        </li>
                    </a>

    
                    <a href="../hallsale/hallsale.html">
                        <li>
                            <p>홀세일문의</p>
                        </li>
                    </a>
                    

                    <a href="../pr/pr.html">
                        <li>
                            <p>제휴/홍보문의</p>
                        </li>
                    </a>

                    <a href="../store_inquiry/store_inquiry.html">
                        <li>
                            <p>입점문의</p>
                        </li>
                    </a>

                </ul>

            </div>


            <div class="footer_line_m_02"></div>

            <div class="footer_bottom_ex_m">

                <div class="footer_bottom_m">

                    <p>골프아이</p>

                    <p>서울시 종로구 디지털로 26길 72,2층</p>

                    <div class="footer_box01">

                    <p>사업자번호 : 211-87-15370</p>

                    <a href="#">
                        <p>사업자정보확인 ></p>
                    </a>

                    </div>

                    <p>통신판매업신고번호 : 2019-서울구로-0734</p>

                    <div class="footer_box02">

                        <p>대표이사 : 홍길동 개인정보보호책임자 : 홍길동</p>

                        <a href="#">
                            <p>E-MAIL 문의 ></p>
                        </a>

                    </div>

                    <p>copyright 1300k.com.ALL RIGHTS RESERVED. 상품 사진을 포함한 모든 콘텐츠는 저작권법 
                    제 98조에 의거해 보호를 받고 있습니다.</p>

                </div>

                <a href="#">
                    <p>골프아이 <span>APP</span> 다운받기</p>
                </a>

            </div>

        </footer>

       
    </section><!--mobile-->

</body>
</html>