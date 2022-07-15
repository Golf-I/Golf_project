<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>detail01</title>
	<link href="${pageContext.request.contextPath}/resources/css/detail.css" rel="stylesheet">
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

                <a href="index">
                    <img src="${pageContext.request.contextPath}/resources/img/detail01/home.png">
                </a>

                <p>></p>

                <a href="category">
                    <p>일본골프</p>
                </a>

                <p>></p>

                <select required>
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

<!--           	<p>도쿄 이타코(水鄕) 골프 2박 3일!</p> -->
				<%-- 상품 내용 노출 --%>
				<c:forEach items="${bbsList}" var="bbsList">  
           		<p>${bbsList.productName}</p>
	            </c:forEach>

            </div><!--route-->
            

            <div class="title_detail">
<!--            <p>도쿄 이타코(水鄕) 골프 2박 3일!</p> -->

				<%-- 상품 내용 노출 --%>
				<c:forEach items="${bbsList}" var="bbsList">  
                <p>${bbsList.productName}</p>
                </c:forEach>

                <div class="icon_detail">
                    
                        <label class="detail_c" for="call">
                        <img src="${pageContext.request.contextPath}/resources/img/detail01/call_detail.png">
                        </label>

                        <div class="call_sheet">
                            <p>상담센터 <span>1588-1588</span></p>
                            <p>평일 09:00~18:00 / 일요일 및 공휴일 휴무</p>
                        </div>
                    
                        <label class="detail_d" for="talk">
                        <img src="${pageContext.request.contextPath}/resources/img/detail01/talk_detail.png">
                        </label>

                        <div class="talk_sheet">
                            <div><p>실시간 문의하기</p></div>
                            <div></div>
                            <div class="talk_btn">

                                <a href="#">
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/plus.png">
                                </a>

                                <input type="text" id="talk_box">

                                <input type="button" value="전송" id="talk_btn">
                            </div>
                        </div>

                        <label class="detail_l" for="link">
                        <img src="${pageContext.request.contextPath}/resources/img/detail01/link_detail.png">
                        </label>

                        <div class="link_sheet">
                            <a href="javascript:shareBand();">
                                <img src="${pageContext.request.contextPath}/resources/img/detail01/band_link.png">
                            </a>
                            <a href="javascript:shareFacebook();">
                                <img src="${pageContext.request.contextPath}/resources/img/detail01/facebook_link.png">
                            </a>
                            <a id="kakaotalk-sharing-btn" href="javascript:shareKakao();">
                                <img src="${pageContext.request.contextPath}/resources/img/detail01/kakao_link.png">
                            </a>
                            <a href="javascript:shareTwitter();">
                                <img src="${pageContext.request.contextPath}/resources/img/detail01/twiter_link.png">
                            </a>
                            <a href="javascript:shareLine();">
                                <img src="${pageContext.request.contextPath}/resources/img/detail01/line_link.png">
                            </a>
                        </div>
     
                        <label class="detail_m" for="map">
                        <img src="${pageContext.request.contextPath}/resources/img/detail01/map_detail.png">
                        </label>

                        <div class="map_sheet" id="map_canvas">
<%--                        
							<label for="map" class="close">
                            	<img src="${pageContext.request.contextPath}/resources/img/detail01/close.png">
                            </label> 
--%>
                            <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA-nO6U0dVhyavvd3rupiRq7Pvuop9pKb4&callback=showmap"></script>
                        </div>
              
                </div><!--icon-->
            </div><!--title-->


            <div class="line01"></div>

            <div class="detail_img_box">

                <div class="detail_left">

                </div>
                
                <c:forEach items="${bbsList}" var="bbsList">
                
                <div class="detail_right">

                    <div class="explanation">

                        <div class="golf">

                            <div class="golf_title">
                                <div><img src="${pageContext.request.contextPath}/resources/img/detail01/golf_icon.png"></div>
                                <p>골프장</p>
                            </div>
    
                            <div class="course"><p>${bbsList.golfCourse}</p></div>
<!--                             <div class="course"><p>센트럴CC, 뉴센트럴CC, 노스쇼어CC</p></div> -->
    
                        </div><!--골프장-->

                        <div class="hotel">

                            <div class="hotel_title">
                                <div><img src="${pageContext.request.contextPath}/resources/img/detail01/hotel_icon.png"></div>
                                <p>숙박지</p>
                            </div>
    
                            <div class="hotel_name"><p>${bbsList.hotel}</p></div>
<!--                             <div class="hotel_name"><p>후지야 호텔 (2인 1실 기준)</p></div> -->
    
                        </div><!--호텔-->

                        <div class="people">

                            <div class="people_title">
                                <div><img src="${pageContext.request.contextPath}/resources/img/detail01/man_icon.png"></div>
                                <p>최소인원</p>
                            </div>
    
                            <div class="people_num"><p>${bbsList.minimum_number_of_people}명</p></div>
<!--                             <div class="people_num"><p>4명</p></div> -->
    
                        </div><!--최소인원-->

                        <div class="region">

                            <div class="region_title">
                                <div><img src="${pageContext.request.contextPath}/resources/img/detail01/go_icon.png"></div>
                                <p>출발지역</p>
                            </div>
    
                            <div class="region_course"><p>${bbsList.arrival}</p></div>
<!--                             <div class="region_course"><p>인천공항</p></div> -->
    
                        </div><!--출발지역-->

                        <div class="arrival">

                            <div class="arrival_title">
                                <div><img src="${pageContext.request.contextPath}/resources/img/detail01/arrival_icon.png"></div>
                                <p>도착지역</p>
                            </div>
    
                            <div class="arrival_course"><p>${bbsList.depart}</p></div>
<!--                             <div class="arrival_course"><p>고쿄/나리타</p></div> -->
    
                        </div><!--도착지역-->

                        <div class="evaluation">

                            <div class="evaluation_title">
                                <div><img src="${pageContext.request.contextPath}/resources/img/detail01/good_icon.png"></div>
                                <p>상품별점</p>
                            </div>
    
                            <div class="evaluation_s">
                                <p>★★★★☆</p>

                                <p>평점 : 8.5점</p>
                            </div>

    
                        </div><!--상품별점-->

                        <div class="money">

                            <div class="money_title">
                                <div><img src="${pageContext.request.contextPath}/resources/img/detail01/money_icon.png"></div>
                                <p>상품최적가</p>
                            </div>
    
                            <div class="money_num"><p><fmt:formatNumber value="${bbsList.lowestPrice}" pattern="#,###" /> 원 ~ </p></div>
<!--                             <div class="money_num"><p>1,090,000~</p></div> -->
    
                        </div><!--골프장-->

                    </div><!--설명-->

                    <div class="img_mini">
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                    </div><!--작은 이미지-->

                </div><!--right-->
                </c:forEach>

            </div><!--img_box-->

            <input type="radio" name="menu" id="menu01" checked>
            <input type="radio" name="menu" id="menu02">
            <input type="radio" name="menu" id="menu03">

            <div class="page01">

                <div class="detail_menu01">

                    <label for="menu01">
                        <p>가격/상품정보</p>
                    </label>

                    <label for="menu02">
                        <p>상품별점/평점</p>
                    </label>

                    <label for="menu03">
                        <p>상품리뷰</p>
                    </label>

                    <div class="line_detail01"></div>

                </div><!--menu01-->

                <div class="red_text">
                    <p>※원하시는 기간 금액 옆에 예약하기를 클릭하시면 예약 페이지로 이동됩니다.</p>
                </div>
    
                <div class="reservation_zon">
                
				    <c:forEach items="${bbsList}" var="bbsList">
                    <div class="reservation">
    
                        <div class="title_res">
                            <p>${bbsList.productName}</p>
<!--                             <p>도쿄 이타코(水鄕) 골프 2박 3일!</p> -->
                        </div>
    
                        <div class="period">
                            <p>기간</p>
    
                            <div class="period01">
                                <p>${bbsList.period_start}</p>
                                <p>~</p>
                                <p>${bbsList.period_fin}</p>
                            </div>
                        </div>
    
                        <div class="day">
    
                            <p>일수</p>
    
                            <div class="day01">
                                <p>${bbsList.day_park}박${bbsList.day_il}일</p>
<!--                            <p>2박 3일</p> -->
                            </div>
    
                        </div>
    
                        <div class="lodging">
    
                            <p>숙소</p>
    
                            <div class="lodging01">
                                <p>${bbsList.hotel}</p>
<!--                                 <p>후지야호텔</p> -->
                            </div>
    
                        </div>
    
                        <div class="airline">
    
                            <p>항공</p>
    
                            <div class="airline01">
                                <p>${bbsList.airline}</p>
<!--                                 <p>에어부산</p> -->
                            </div>
    
                        </div>
    
    
                        <div class="weekday">
    
                            <p>주중요금</p>
    
                            <div class="weekday01">
    
                                <div class="txt_week01">
<!--                                     <p>1,090,000</p> -->
                                    <p><fmt:formatNumber value="${bbsList.weekday_fee}" pattern="#,###" />원</p>
                                    <a href="reservation?region=${param.region}&city=${param.city}&product_code=${param.product_code}&productName=${param.productName}&weekday_fee=${bbsList.weekday_fee}">예약하기</a>
                                </div>
    
                            </div>
                            
                        </div>
    
                        <div class="weekend">
    
                            <p>주말요금</p>
    
                            <div class="weekend01">
    
                                <div class="txt_weekend01">
<!--                                     <p>1,090,000</p> -->
                                    <p><fmt:formatNumber value="${bbsList.weekend_fee}" pattern="#,###" />원</p>
                                    <a href="reservation?region=${param.region}&city=${param.city}&product_code=${param.product_code}&productName=${param.productName}&weekend_fee=${bbsList.weekend_fee}">예약하기</a>
                                </div>
    
                            </div>
    
                        </div> 
    
                    </div><!--right-->
                    </c:forEach>

    			
                    <div class="no_reservation">
    
                       <p>예약불가 기간</p>
    
                       <div class="no_day">
                           <p>날짜</p>
<!--                       <p>2022-05-15</p>
                           <p>2022-06-15</p>  -->

						<%-- 예약불가 기간 --%>
	    				<c:forEach items="${noResList}" var="noResList">
                           <p>${noResList.day}</p>
                        </c:forEach>
	    				<%-- 예약불가 기간 --%>
	    				
                           <div></div>
                       </div>
    
                       <div class="no_txt">
	                        <p>내용</p>
	<!--                    <p>현지 독립기념일</p>
	                        <p>골프장 휴장일</p> -->
                        
                        <%-- 예약불가 기간 --%>
	    				<c:forEach items="${noResList}" var="noResList">
                        	<p>${noResList.remarks}</p>
	    				</c:forEach>
	    				<%-- 예약불가 기간 --%>
	    				
                        <div></div>
                        </div>
    
                    </div><!--no_reservation-->
    				
                </div><!--reservation_zon-->
    
    			<%-- 포함, 불포함, 주의, 기타사항 --%>
    			<c:forEach items="${bbsList}" var="bbsList">
    			
                <div class="include_box">
    
                    <div class="include_top">
    
                        <div class="include01">
    
                            <div class="include_txt01">
    
                                <div class="title_in01">
    
                                    <div><img src="${pageContext.request.contextPath}/resources/img/detail01/round.png"></div>
    
                                    <p>포함사항</p>
    
                                </div>
    
<!--                            <p>+ 왕복항공권(유류세 & TAX 포함)</p>
                                <p>+ 무제한 그린피</p>
                                <p>+ 후자야 호텔 (2인 1실)</p>
                                <p>+ 전일정 식사</p> -->
    							<p>${bbsList.include}</p>
    
    
                            </div><!--txt-->
    
                        </div><!--포함-->
    
    
                        <div class="dot01"><img src="${pageContext.request.contextPath}/resources/img/detail01/dot.png"></div><!--선-->
    
    
                        <div class="include02">
    
                            <div class="include_txt02">
    
                                <div class="title_in02">
    
                                    <div><img src="${pageContext.request.contextPath}/resources/img/detail01/X.png"></div>
    
                                    <p>불포함사항</p>
    
                                </div>
    
<!--                                 <p>+ 카트비 : 2인 1카트 500엔(18홀/1인), 1인 1카트 700엔(18홀/1인)</p>
                                <p>+ 캐디피 : 350엔(18홀/1인)</p>
                                <p>+ 캐디팁 : 2인 1캐디 150엔(18홀/1인), 1인 1캐디 300엔(18홀/1인)</p>
                                <p>+ 미팅 & 샌딩비 : $50 (1인/현장지불)</p>
                                <p>+ 세탁비(의무) : 1일 100엔(1인)</p>
                                <p>+ 코로나보험</p>
                                <p>+ 현지 PCR 추가 비용</p> -->
                                <p>${bbsList.not_include}</p>
    
                            </div><!--txt-->
                        </div><!--불포함-->
                    </div><!--top-->
    
                    <div class="include_bottom">
    
                        <div class="include03">
    
                            <div class="include_txt03">
    
                                <div class="title_in03">
    
                                    <div><img src="${pageContext.request.contextPath}/resources/img/detail01/square.png"></div>
    
                                    <p>기타사항</p>
    
                                </div>
    
<!--                                 <p>+ 계약금 입금 후 환불 불가능합니다.</p>
                                <p>+ 예약시 제출 서류 : 여권 사본, 백신 접종 증명서(영문본)</p>
                                <p>+ 출국시 필요서류는 담당자를 통해 전달 드릴 예정입니다.</p>
                                <p>+ 현지에서 PCR 검사가 추가 될 경우 비용은 본인 부담입니다.</p>
                                <p>+ 준비 서류 꼭 프린터해서 입국 부탁드립니다. (영문)</p>
                                <p>+ 여권 유효기간이 최소 6개월 이상 남아 있어야 합니다.</p>
                                <p>+ 숙박은 기본 2인 1실 기준으로 홀수 인원시 싱글룸 사용하셔야 합니다.</p>
                                <p>+ 라운드 미진행시 별도 그린피 환불은 없습니다.</p>
                                <p>+ 예약 후 항공 좌석 및 호텔 숙박 가능 여부 담당자에게 재확인 부탁드립니다.</p> -->
                                <p>${bbsList.etc}</p>
    
                            </div><!--txt-->
    
                        </div><!--포함-->
    
    
                        <div class="dot02">
                            <img src="${pageContext.request.contextPath}/resources/img/detail01/dot02.png">
                        </div><!--선-->
    
    
                        <div class="include04">
    
                            <div class="include_txt04">
    
                                <div class="title_in04">
    
                                    <div><img src="${pageContext.request.contextPath}/resources/img/detail01/triangle.png"></div>
    
                                    <p>주의사항</p>
    
                                </div>
    
<!--                                 <p>+ 본 상품은 예약과 동시에 전세기 상품이므로 계약금 입금 후 취소 불가능합니다. 계약금 환불 불가입니다.</p>
                                <p>+ 본 상품은 전세기 상품으로 취소시 패널티 1인 600,000원 제외 후 환불됩니다.</p>
                                <p>+ 본 상품은 전세기 상품으로 출국 후 PCR 검사 결과 양성시 전액 환불되지 않습니다.</p>
                                <p>+ 국제선 탑승시간 최소 2시간 전 수속 대기해주세요.</p>
                                <p>+ 아티타야 숙소에는 수영장/헬스장/식당/술집/마사지샵 등 서비스 시설이 구비되어 있습니다.</p> -->
                                <p>${bbsList.precaution}</p>
    
                            </div><!--txt-->
                        </div><!--불포함-->
                    </div><!--bottom-->
    
    
                </div><!--include_box-->
    			</c:forEach>
    			<%-- 포함, 불포함, 주의, 기타사항 --%>

    
                <div class="calendar_box">

                    <p>여행일정</p>
    
                    <div class="reference">
    
                        <div class="refernce_box">
    
                         <div class="reference_txt">
    
                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/detail01/question.png">
                            </div>
    
                            <p>참고하세요.</p>
    
                         </div>
    
                         <p>여행 일정은 계약 체결 시 예상하지 못한 부득이한 사정 등이 발생하는 경우 여행자의 사전 동의를 거쳐 변경될 수 있음을 양지하여 주시길 바랍니다.</p>
                        
                        </div>
    
                    </div><!--참고하세요-->
    
                    <div class="calender_left">
    
	    				<c:forEach items="${itiList}" var="itiList">
                        <div class="calendar_01">
    
                            <div class="one_day">
                                <!-- <p>1일차</p> -->
                                <p>${itiList.day_of_itinerary}일차</p>
                            </div>
    
                            <div class="routine01">
                                <div class="routin_box01">
                                
                                <p>${itiList.iti_contents}</p>
                                
<!--                                 <p><span>[08:00]</span> 인천 국제공항 출발 (에어부산)</p>
                                <p><span>[10:30]</span> 일본 나리타 국제공항 도착</p>
                                <p>직원 미팅 후 중식</p>
                                <p>중식 식사 후 골프장으로 이동 (약 50분 소요)</p>
                                <p>센트럴 CC 2부 18홀 라운딩</p>
                                <p>저녁 식사 후 호텔 투숙 및 휴식</p> -->
                                
                                </div>
                            </div>
    
                            <div class="food_ex_01">
    
                                <div class="food01">
    
                                    <div class="food_box01">
                                    <p>조식 : ${itiList.morning}</p>
                                    <p>중식 : ${itiList.lunch}</p>
                                    <p>석식 : ${itiList.dinner}</p>
<!--                                     <p>조식 : 불포함</p>
                                    <p>중식 : 일본라면</p>
                                    <p>석식 : 초밥 디너세트</p> -->
                                    </div>
    
                                </div>
    
                                <div class="lodging_box01">
                                    <p><span>호텔</span><%-- ${bbsList.hotel} --%></p>
<!--                                <p><span>호텔</span>후지야 호텔</p> -->
                                </div>
                            </div>
    
                        </div><!--1일차-->
	    				</c:forEach>
                    </div><!--일정 왼쪽-->
    
                   
                    <div class="calender_right">
    
                        <div class="calender_r_title">
                            <p>다른 인기상품</p>
                        </div>
    
                        <a href="#">
                            <div class="product01">
                                <div class="img_pro01">
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/product01.png">
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
                                            	<img src="${pageContext.request.contextPath}/resources/img/detail01/02star.png"
                                            	onmouseover="this.src='${pageContext.request.contextPath}/resources/img/detail01/star.png'"
                                            	onmouseout="this.src='${pageContext.request.contextPath}/resources/img/detail01/02star.png'">
                                            </div>
                                            <div>
                                            	<img src="${pageContext.request.contextPath}/resources/img/detail01/02star.png"
                                            	onmouseover="this.src='${pageContext.request.contextPath}/resources/img/detail01/star.png'"
                                            	onmouseout="this.src='${pageContext.request.contextPath}/resources/img/detail01/02star.png'">
                                            </div>
                                            <div>
                                            	<img src="${pageContext.request.contextPath}/resources/img/detail01/02star.png"
                                            	onmouseover="this.src='${pageContext.request.contextPath}/resources/img/detail01/star.png'"
                                            	onmouseout="this.src='${pageContext.request.contextPath}/resources/img/detail01/02star.png'">
                                            </div>
                                            <div>
                                            	<img src="${pageContext.request.contextPath}/resources/img/detail01/02star.png"
                                            	onmouseover="this.src='${pageContext.request.contextPath}/resources/img/detail01/star.png'"
                                            	onmouseout="this.src='${pageContext.request.contextPath}/resources/img/detail01/02star.png'">
                                            </div>
                                            <div>
                                            	<img src="${pageContext.request.contextPath}/resources/img/detail01/02star.png"
                                            	onmouseover="this.src='${pageContext.request.contextPath}/resources/img/detail01/star.png'"
                                            	onmouseout="this.src='${pageContext.request.contextPath}/resources/img/detail01/02star.png'">
                                            </div>
                                        </div>
    
                                        <div class="good_icon01">
                                            <div class="talk_r_01">
                                                <div><img src="${pageContext.request.contextPath}/resources/img/detail01/talk.png"></div>
                                                <p>203</p>
                                            </div>
    
                                            <div class="good_r_01">
                                                <div><img src="${pageContext.request.contextPath}/resources/img/detail01/good.png"></div>
                                                <p>8.5</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> <!-- product01 -->
                        </a>
    
                        <a href="#">
                        
                            <div class="product02">
                            
                                <div class="img_pro02">
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/product01.png">
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
                                            <div><img src="${pageContext.request.contextPath}/resources/img/detail01/star.png"></div>
                                            <div><img src="${pageContext.request.contextPath}/resources/img/detail01/star.png"></div>
                                            <div><img src="${pageContext.request.contextPath}/resources/img/detail01/star.png"></div>
                                            <div><img src="${pageContext.request.contextPath}/resources/img/detail01/star.png"></div>
                                            <div><img src="${pageContext.request.contextPath}/resources/img/detail01/02star.png"></div>
                                        </div>
    
                                        <div class="good_icon02">
                                            <div class="talk_r_02">
                                                <div><img src="${pageContext.request.contextPath}/resources/img/detail01/talk.png"></div>
                                                <p>203</p>
                                            </div>
    
                                            <div class="good_r_02">
                                                <div><img src="${pageContext.request.contextPath}/resources/img/detail01/good.png"></div>
                                                <p>8.5</p>
                                            </div>
                                        </div><!-- good_icon02 -->
                                    </div><!-- review02 -->
                                </div><!-- product02_ex -->
                                
							</div><!-- product02 -->
                        </a>
                        
                    </div><!--calender_right-->
    
                </div><!--calendar_box-->
    
    			 <c:forEach items="${bbsList}" var="bbsList">
    
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
                    </div><!--타이틀-->
    
                    <div class="golf_img_detail">
    
<!--                         <p>골프장명 : 센트럴 CC</p> -->
                        <p>골프장명 : ${bbsList.golfCourse}</p>
    
                        <div class="golf_img_d">
                            <div></div>
                            <div></div>
                        </div>
    
                        <div class="golf_detail_txt">
<!--                             <p>총 36홀 코스로 이루어진 센트럴 골프클럽은 일본 골프코스 디자이너로 유명한 ‘나시노가＇설계해 1974년 정식 개장한 일본의 명문 골프장입니다.<br>
                                PGA 토너먼트, 관동 오픈 챔피언십, 일본프로오픈, 프로암대회, 각종 아마추어 대회등 공식경기장소로 사랑받고 있는 수준급 토너먼트 골프코스이며, 각 코스마다 등급이 높아 라운드에 재미를 더 해주는 레이아웃이 
                                특징입니다. 
                            </p> -->
                            <p>${bbsList.golfCourse_info}</p>
                        </div>
                    </div>
    
                </div><!--golf_detail-->
    
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
                    </div><!--타이틀-->
    
                    <div class="hotel_img_detail">
    
<!--                         <p>숙박명 : 후지야 호텔</p> -->
                        <p>숙박명 : ${bbsList.hotel}</p>
    
                        <div class="hotel_img_d">
                            <div></div>
                            <div></div>
                        </div>
    
                        <div class="hotel_detail_txt">
<!--                             <p>한국인이 직접 사서 운영하고 있는 호텔 후지야!<br>
                            이타코 강변에 위치하고 있어서,한적한 분위기가 마음을 사로잡습니다. 4성급 비지니스급의 깔끔한 호텔이라고 보시면 됩니다. 코로나 이후 침체되었던 일본내 한국기업도 응원한다는 점에서 의미가 깊은곳입니다. 
                                
                            </p> -->
                            <p>${bbsList.hotel_info}</p>
                        </div>
                    </div><!-- hotel_img_detail -->
                </div><!--hotel_detail-->
				
				</c:forEach>
                
                
            </div><!--page01-->

            <div class="page02" id="page_a">

                <div class="detail_menu02">

                    <label for="menu01">
                        <p>가격/상품정보</p>
                    </label>

                    <label for="menu02">
                        <p>상품별점/평점</p>
                    </label>

                    <label for="menu03">
                        <p>상품리뷰</p>
                    </label>

                    <div class="line_detail02"></div>

                </div><!--menu02-->

            

            <div class="grade_box">

                <div class="grade01">

					<%-- 상품 별점 --%>
                    <p><span>0.0</span>/5</p>
<!--                     <p><span>8.9</span>/10</p>
 -->
                    <div class="star01">
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/img/detail01/02star_detail.png">
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/img/detail01/03star_detail.png">
                        </div>
                    </div>

                    <p>총 00명 참여</p>

                </div><!--01-->

                <div class="grade02">
                    <p>0.0</p>
                    <p>페이웨이/그린</p>
                </div>


                <div class="grade03">
                    <p>0.0</p>
                    <p>플레이 속도</p>
                </div>

                <div class="grade04">
                    <p>0.0</p>
                    <p>캐디</p>
                </div>

                <div class="grade05">
                    <p>0.0</p>
                    <p>부대시설</p>
                </div>

                <div class="grade06">
                    <p>0.0</p>
                    <p>가이드</p>
                </div>

            </div><!--평점-->

			<input type="checkbox" id="green01">
            <input type="checkbox" id="green02">
            <input type="checkbox" id="green03">
            <input type="checkbox" id="green04">
            <input type="checkbox" id="green05">

            <input type="checkbox" id="play01">
            <input type="checkbox" id="play02">
            <input type="checkbox" id="play03">
            <input type="checkbox" id="play04">
            <input type="checkbox" id="play05">

            <input type="checkbox" id="caddy01">
            <input type="checkbox" id="caddy02">
            <input type="checkbox" id="caddy03">
            <input type="checkbox" id="caddy04">
            <input type="checkbox" id="caddy05">

            <input type="checkbox" id="amenities01">
            <input type="checkbox" id="amenities02">
            <input type="checkbox" id="amenities03">
            <input type="checkbox" id="amenities04">
            <input type="checkbox" id="amenities05">

            <input type="checkbox" id="guide01">
            <input type="checkbox" id="guide02">
            <input type="checkbox" id="guide03">
            <input type="checkbox" id="guide04">
            <input type="checkbox" id="guide05">

            <div class="type01">

                <p>전체<span> 2개</span></p>

                <div class="line_type"></div>

				<form method="post" action="category/comment"> <!--  onsubmit="" --> 

				<input type="hidden" name="product_code" value="${param.product_code}">
				<input type="hidden" name="comment_user" value="${sessionScope.id}">

                <div class="type_box">

                    <p id="text01">◎ 이용한 상품에 대해 "별"을 주세요!</p>
                    <p id="text02">평가해주신 평점은 다른 고객들의 예약에 중요한 기준이 됩니다.<br>솔직 담백한 평점 부탁드립니다.</p>
                    <p id="text03">※ 도배 및 악의적인 내용들은 사전 통보 없이 삭제될 수 있습니다.</p>

                    <div class="typing">


                        <div class="grade_right01">

                            <div class="grade_box_t">

                                <div class="typing01">

                                 <p>페이웨이/그린</p>

                                 <div class="typing_st_01">

                                    
                                     <label for="green01">
                                        <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                    </label>

                                    <label for="green02">
                                        <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                    </label>

                                    <label for="green03">
                                        <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                    </label>

                                    <label for="green04">
                                        <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                    </label>

                                    <label for="green05">
                                        <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                    </label>
                                    
                                 </div><!-- typing_st_01 -->

                                 <p>0</p>
                                
                                </div><!--01-->

                                <div class="typing02">

                                    <p>플레이속도</p>
   
                                    <div class="typing_st_02">
		
									<label for="play01">
										<img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
									</label>

                                    <label for="play02">
                                        <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                    </label>

                                    <label for="play03">
                                        <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                    </label>

                                    <label for="play04">
                                        <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                    </label>

                                    <label for="play05">
                                        <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                    </label>
                                       
                                    </div>
   
                                    <p>0</p>
                                   
                                   </div><!--02-->

                                   <div class="typing03">

                                    <p>캐디</p>
   
                                    <div class="typing_st_03">
   
                                        <label for="caddy01">
                                            <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                        </label>
   
                                        <label for="caddy02">
                                            <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                        </label>
   
                                        <label for="caddy03">
                                            <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                        </label>
   
                                        <label for="caddy04">
                                            <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                        </label>
   
                                        <label for="caddy05">
                                            <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                        </label>
                                       
                                    </div>
   
                                    <p>0</p>
                                   
                                   </div><!--03-->

                                   <div class="typing04">

                                    <p>부대시설</p>
   
                                    <div class="typing_st_04">
   
                                        <label for="amenities01">
                                            <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                        </label>
   
                                        <label for="amenities02">
                                            <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                        </label>
   
                                        <label for="amenities03">
                                            <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                        </label>
   
                                        <label for="amenities04">
                                            <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                        </label>
   
                                        <label for="amenities05">
                                            <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                        </label>
                                       
                                    </div>
   
                                    <p>0</p>
                                   
                                   </div><!--04-->

                                   <div class="typing05">

                                    <p>가이드</p>
   
                                    <div class="typing_st_05">
   
                                        <label for="guide01">
                                            <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                        </label>
   
                                        <label for="guide02">
                                            <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                        </label>
   
                                        <label for="guide03">
                                            <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                        </label>
   
                                        <label for="guide04">
                                            <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                        </label>
   
                                        <label for="guide05">
                                            <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                        </label>
                                       
                                    </div>
   
                                    <p>0</p>
                                   
                                   </div><!--05-->
                                
                            </div>

                        </div><!--right-->


					<%-- 고객평점/별점 로그인 후 사용 가능 --%>					
					<c:choose>
						<c:when test="${sessionScope.id != null}">
                        	<textarea id="text01" name="comment" style="overflow:hidden;"></textarea>
						</c:when>
						<c:otherwise>
                        	<textarea id="text01" onclick="return login();" style="overflow:hidden;"></textarea>
						</c:otherwise>
					</c:choose>
					<%-- 고객평점/별점 로그인 후 사용 가능 --%>					

                    </div><!--typing-->

                    <div class="typing_btn">
						
						<%-- 고객평점/별점 로그인 후 사용 가능 --%>					
						<c:choose>
						
						<c:when test="${sessionScope.id != null}">
	                        <input type="submit" id="subnit_t" value="등록">
	                        <input type="reset" id="reset_t" value="취소">
						</c:when>
						
						<c:otherwise>
						</c:otherwise>
						
						</c:choose>
						<%-- 고객평점/별점 로그인 후 사용 가능 --%>
										
										
                    </div><!-- typing_btn -->

                </div>
                
			</form>

         </div><!--type01-->

		
    	<div class="review_box">
		
        <div class="review_01">

		<%-- 코멘트 --%>
		<c:forEach items="${commList}" var="commList">

            <div class="left_rev_01">

                <div class="grade_re_top01">

                    <div class="name_left01">
                        <p>평균 고객평점</p>
<!--                         <p>등록자 : 홍길동</p> -->
                        <p>구매자 : ${fn:substring(commList.comment_user, 0, fn:length(commList.comment_user)-12)}***</p>
                    </div><!--left-->

                    <div class="name_right01">

                        <div class="grade_re_box01">

                            <div class="grade_num01">
<!--                                 <p><span>8.9</span>5</p> -->
                                <p><span>${commList.average_score}</span>/5</p>
                            </div>

                            <div class="grade_star01">
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/02star_detail.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/03star_detail.png">
                                </div>
                            </div>

                        </div><!--grade_re_box01-->

                        <div class="bottom_txt01">
<!--                             <p>등록일 : 2022-05-01</p> -->
                            <p>등록일 : ${commList.comment_regdate}</p>
                        </div>

                    </div><!--right-->

                </div><!--top-->

                <div class="grade_re_bot01">

                    <div class="golf_grade_box01">

                        <div class="grade_g01">

                            <p>페이웨이/그린</p>

                            <div class="golf_star01">
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                            </div>

                            <p>${commList.score_fairways}</p>

                        </div><!--01-->

                        <div class="grade_g02">

                            <p>플레이 속도</p>

                            <div class="golf_star02">
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                            </div>

                            <p>${commList.score_playSpeed}</</p>

                        </div><!--02-->

                        <div class="grade_g03">

                            <p>캐디</p>

                            <div class="golf_star03">
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                            </div>

                            <p>${commList.score_caddy}</p>

                        </div><!--03-->

                        <div class="grade_g04">

                            <p>부대시설</p>

                            <div class="golf_star04">
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                            </div>

                            <p>${commList.score_facilities}</p>

                        </div><!--04-->

                        <div class="grade_g05">

                            <p>가이드</p>

                            <div class="golf_star05">
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/detail01/01star_detail.png">
                                </div>
                            </div>

                            <p>${commList.score_guide}</p>

                        </div><!--05-->

                    </div><!-- golf_grade_box01 -->
                </div><!--grade_re_bot01-->
                
            </div><!--left_rev_01-->

            <div class="right_rev_01">
                <p>※ 도배 및 악의적인 내용들은 사전 통보없이 삭제될 수 있습니다.</p>

                <div class="text02">
<!--                     <p> 조식포함 가격 생각하면 가성비 괜찮다고 생각해요. 
                    	기대 안 해서 그런지 조식도 괜찮았고 룸도 그냥 괜찮았던 것 같아요. 
                    	근처에 좋아하는 곳이 있어서 거기 방문을 위해서라도 재방문 의사 있긴 한데 방콕에 워낙 괜찮은 호텔들이 많아서 다음엔 다른 곳 이용해보고 싶어요. 
                    	그리고 지하철 타기도 편했고 바로 앞에 편의점이 있어서 편했고 특히 한국 컵라면 판매하고 있어서 좋았어요. 
                    	직원들이 영어를 엄청 잘해서 의사소통 하는 데도 문제 없었어요</p> -->
                    <p>${commList.comment}</p>

                </div>
            </div><!--right-->

	     <%-- 코멘트 --%>
		 </c:forEach>
         </div><!--review01-->

      </div><!--review_box-->
     
     
         	 <div class="number_btn">
         	 
				<%-- 페이징  --%>    
				<div class="num_btn">
<%-- 				
					<a href="product_detail?product_code=${param.product_code}&page=${pageMaker_com.startPage}#page_a"><p>&lt;&lt;</p></a>
 --%>					
					<c:if test="${pageMaker_com.prev}">
					<a href="product_detail?product_code=${param.product_code}&page=${pageMaker_com.startPage-1}#page_a"><p>&lt;</p></a>
					</c:if>
					
                    <c:forEach begin="${pageMaker_com.startPage}" end="${pageMaker_com.endPage}" var="p">
                 		<a href="product_detail?product_code=${param.product_code}&page=${p}#page_a" style="color: red;"><p>${p}</p></a>    
                    </c:forEach>

					<c:if test="${pageMaker_com.next && pageMaker_com.endPage>0}">
					<a href="product_detail?product_code=${param.product_code}&page=${pageMaker_com.endPage+1}#page_a"><p>&gt;</p></a>
					</c:if>
<%-- 					
					<a href="product_detail?product_code=${param.product_code}&page=${pageMaker_com.endPage}#page_a"><p>&gt;&gt;</p></a>
 --%>				
				</div><!-- class="num_btn" -->
				<%-- 페이징  --%>
               
            </div>


        </div><!--page02-->



        <div class="page03">

            <div class="detail_menu03">

                <label for="menu01">
                    <p>가격/상품정보</p>
                </label>

                <label for="menu02">
                    <p>상품별점/평점</p>
                </label>

                <label for="menu03">
                    <p>상품리뷰</p>
                </label>

                <div class="line_detail03"></div>

            </div><!--menu03-->

		
            <div class="review_ex">

            <p>상품리뷰</p>

            <div class="review02">

                <div class="review_box02">

                     <div class="review_left">

                        <div class="reference">

                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/detail01/question.png">
                            </div>

                            <p>참고하세요.</p>
                        </div>

                        <p>상품리뷰는 그 상품을 사용해보신 경험을 바탕으로 적어주세요 또한 골프아이는 가공된 리뷰를 사용하지 않습니다.<br>
                                               본 게시판은 상품리뷰와 관련된 게시판이므로 게시판 성격과 맞지 않는 글은 이동 또는 삭제 될 수 있습니다. 고객님들의 양해 부탁 드립니다. </p>
                     
                    </div><!--left-->

                     <a href="#">
                        <div class="review_right">
                            <p>리뷰작성</p>
                        </div>
                     </a>
                </div> <!-- review_box02 -->

            </div><!--review02-->

            
            <%-- 상품 리뷰 --%>
            <c:forEach items="${revList}" var="revList">

            <div class="member_review">

                <a href="javascript:openwindow();" >
                
                <div class="review_m_01">
                    <div class="review_top">
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/img/detail01/member.png">
                        </div>

                        <p>${revList.review_username}</p>
<!--                    <p>홍*동</p> -->

						<p>${revList.review_regdate}</p>
<!--                    <p>2022.05.20</p> -->
                    </div>
                    
						<p>${revList.review_contents}</p>
                        
               </div><!-- review_m_01 -->
               
               </a>

               <div class="line_r_01"></div>

            </div><!--member_review-->
			</c:forEach>
            <%-- 상품 리뷰 --%>
		
        <div class="number_btn02">
        
			<%-- 페이징  --%>    
			<div class="num_btn">
			
				<c:if test="${pageMaker_rev.totalCount != 1 && pageMaker_rev.totalCount != 0}">
					<a href="product_detail?product_code=${param.product_code}&page=${pageMaker_rev.startPage}"><p>&lt;&lt;</p></a>
				</c:if>
				
				<c:if test="${pageMaker_rev.prev}">
					<a href="product_detail?product_code=${param.product_code}&page=${pageMaker_rev.startPage-1}"><p>&lt;</p></a>
				</c:if>
				
				<c:forEach begin="${pageMaker_rev.startPage}" end="${pageMaker_rev.endPage}" var="p">
					<a href="product_detail?product_code=${param.product_code}&page=${p}" style="color:red;"><p>${p}</p></a>    
				</c:forEach>
				
				<c:if test="${pageMaker_rev.next && pageMaker_rev.endPage>0}">
					<a href="product_detail?product_code=${param.product_code}&page=${pageMaker_rev.endPage+1}"><p>&gt;</p></a>
				</c:if>

				<c:if test="${pageMaker_rev.totalCount != 1 && pageMaker_rev.totalCount != 0}">
					<a href="product_detail?product_code=${param.product_code}&page=${pageMaker_rev.endPage}"><p>&gt;&gt;</p></a>
				</c:if>

			</div><!-- class="num_btn" -->
			<%-- 페이징  --%>
			
        </div><!-- number_btn02 -->
        
      </div><!--review_ex-->
      
	</div>

    </div><!--detail-->

    </section>

</body>
</html>