<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>reservation_list</title>
    <link href="${pageContext.request.contextPath}/resources/css/reservation_list.css" rel="stylesheet">
</head>
<body>
    <section>

        <div class="list">


            <div class="list_left">

                <div class="list_title01">

                    <p>마이페이지</p>
    
                    <div>
                        <img src="${pageContext.request.contextPath}/resources/img/reservation/location.png">
                    </div>
    
                </div><!--title01-->
    
                <ul class="list_menu">

                    <a href="mypage">
                        <li>
                            <p>프로필관리</p>
                            <p>></p>
                        </li>
                    </a>
    
                    <a href="member_reservation">
                        <li>
                            <p>예약리스트</p>
                            <p>></p>
                        </li>
                    </a>
    
                    <a href="notice">
                        <li>
                            <p>공지사항</p>
                            <p>></p>
                        </li>
                    </a>
    
                    <a href="questions">
                        <li>
                            <p>자주묻는질문</p>
                            <p>></p>
                        </li>
                    </a>
    
                </ul>

            </div><!--left-->


            <div class="list_right">

                <div class="rout_list">

                    <div>
                        <img src="${pageContext.request.contextPath}/resources/img/reservation/find.png">
                    </div>

                    <p>></p>

                    <p>마이페이지</p>

                    <p>></p>

                    <p>예약리스트</p>

                </div>

                <p>예약리스트</p>

                <div class="line01"></div>

                <div class="personal">

                    <div class="pers_left">

                        <div class="profile">
                            
                            <div class="icon">

                            </div>

                            <div class="name">

                                <p>골프치기 좋은 날이에요!</p>
                                <p><span>${sessionScope.id}</span>님</p>

                            </div>

                        </div>

                    </div>

                    <div class="line02"></div>

                    <div class="pers_right">

                        <div class="txt02">
                            <p>※ 회원 가입하고 다양한 골프정보와 기획전/이벤트 소식을<br>받아 보실 수 있습니다.</p>
                            <p>계좌정보 : 111-111-111111 신한은행</p>
                            <p>예금주 : 골프아이㈜</p>
                        </div>

                    </div>

                </div><!--personal-->

                <div class="rolling">

                    <div class="rolling_box">

                        <p>공지사항 : 구정 설날을 위한 특별 기획전 오픈</p>

                        <div class="txt_btn">

                            <a href="#">
                                <img src="${pageContext.request.contextPath}/resources/img/reservation/01btn.png">
                            </a>

                            <a href="#">
                                <img src="${pageContext.request.contextPath}/resources/img/reservation/02btn.png">
                            </a>

                        </div>

                    </div>

                </div>


                <div class="product">

        			<c:forEach var="reserList" items="${reserList}">

                    <div class="product01_ex">
					
                        <p>예약일 : ${reserList.regDate}</p>
<!--                         <p>예약일 : 2022.05.16</p> -->
            
                            <div class="product01">
            
                            <a href="#">
<!--                             <a href="#"> -->
            
                                <div class="left_pro01">
            
                                    <div>
                                        <img src="${pageContext.request.contextPath}/resources/img/reservation/product01.png">
                                    </div>
            
                                    <div class="mib_pro01">
            
                                        <div class="txt_box01">
            
                                            <p>이용일 : ${reserList.departure_date}</p>
<!--                                             <p>이용일 : 2022.05.16</p> -->
            
                                            <div class="country01">
            
            								<c:choose>
            								
	            								<c:when test="${reserList.sortation == '패키지'}">
	                                                <p>패키지</p>
	            								</c:when>
	            								
	            								<c:otherwise>
	                                                <p>자유골프</p>
	            								</c:otherwise>
            
            								</c:choose>
            								
                                                <p>${reserList.city}</p>
<!--                                                 <p>일본/도쿄</p> -->
            
                                            </div>
            
            
                                            <div class="golf01">
            
                                                <p>${reserList.productName}</p>
<!--                                                 <p>썬라이즈 골프장 18홀</p> -->
            
                                                <p><fmt:formatNumber value="${reserList.total_price}" pattern="#,###" /> 원</p>
<!--                                                 <p>1,090,000 원~</p> -->
            
                                            </div>
            
                                        </div>
            
                                    </div> <!--txt-->
            
            
                                </div><!--left-->
                            </a>
            
                                <div class="right_pro01">
            
                                    <div class="right_box01">
            
                                        <a href="product_detail?region=${reserList.region}&city=${reserList.city}&product_code=${reserList.product_code}&productName=${reserList.productName}">
                                            <p>상세조회</p>
                                        </a>
            
                                        <a href="javascript:open('?idx=${reserList.idx}', '결제하기', 'width=1200, height=1000')">
                                            <p>결제하기</p>
                                        </a>
            
                                        <a href="javascript:open('member_confirmation?product_code=${reserList.product_code}&idx=${reserList.idx}', '확정서', 'width=1200, height=1000');">
                                            <p>확정서</p>
                                        </a>
            
                                    </div>
            
                              </div><!--right-->
            
                    </div><!--01-->

					</c:forEach>
                    
                </div>
            
<%--                
					<div class="product02_ex">
            
                        <p>예약일 : 2022.05.16</p>
            
                        
                            <div class="product02">
            
                                
                            <a href="#">
            
                                <div class="left_pro02">
            
                                    <div>
                                        <img src="${pageContext.request.contextPath}/resources/img/reservation/product02.png">
                                    </div>
            
                                    <div class="mib_pro02">
            
                                        <div class="txt_box02">
            
                                            <p>이용일 : 2022.05.16</p>
            
                                            <div class="country02">
            
                                                <p>패키지</p>
            
                                                <p>대구출발 ></p>
            
                                                <p>일본/북해도</p>
            
                                            </div>
            
            
                                            <div class="golf02">
            
                                                <p>루스츠 골프리조트  4박 6일</p>
                                                
                                                <p>1,590,000 원~</p>
            
                                            </div>
            
                                        </div>
            
                                    </div> <!--txt-->
            
            
                                </div><!--left-->
                            </a>
            
                                <div class="right_pro02">
            
                                    <div class="right_box02">
            
                                        <a href="#">
                                            <p>상세조회</p>
                                        </a>
            
                                        <a href="#">
                                            <p>결제하기</p>
                                        </a>
            
                                        <a href="#">
                                            <p>확정서</p>
                                        </a>
            
                                    </div>
            
                                </div><!--right-->
            
                            </div><!--02-->
            
                    </div>
            
                    <div class="product03_ex">
            
                        <p>예약일 : 2022.05.16</p>
            
                        
                            <div class="product03">
            
                                
                            <a href="#">
            
                                <div class="left_pro03">
            
                                    <div>
                                        <img src="${pageContext.request.contextPath}/resources/img/reservation/product03.png">
                                    </div>
            
                                    <div class="mib_pro03">
            
                                        <div class="txt_box03">
            
                                            <p>이용일 : 2022.05.16</p>
            
                                            <div class="country03">
            
                                                <p>패키지</p>
            
                                                <p>김해출발></p>
            
                                                <p>베트남/다낭</p>
            
                                            </div>
            
            
                                            <div class="golf03">
            
                                                <p>다낭 명품 3색골프 3박 5일</p>
                                                
                                                <p>1,290,000 원~</p>
            
                                            </div>
            
                                        </div>
            
                                    </div> <!--txt-->
            
            
                                </div><!--left-->
                            </a>
            
                                <div class="right_pro03">
            
                                    <div class="right_box03">
            
                                        <a href="#">
                                            <p>상세조회</p>
                                        </a>
            
                                        <a href="#">
                                            <p>결제하기</p>
                                        </a>
            
                                        <a href="#">
                                            <p>확정서</p>
                                        </a>
            
                                    </div>
            
                                </div><!--right-->
            
                            </div><!--03-->
            
                    </div> --%>
            
            
                </div>

            </div><!--right-->
        </div><!--list-->
        
    </section>

</body>
</html>