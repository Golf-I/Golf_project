<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>confirmation</title>
    <link href="${pageContext.request.contextPath}/resources/css/confirmation.css" rel="stylesheet">
    <script	src="${pageContext.request.contextPath}/resources/js/member_confirmationLetter.js"></script>
</head>
<body>

	    <section>

        <input type="checkbox" id="link">

        <div class="confirmation_box">

            <div class="title_top">

                <p>확정서</p>

                <div class="icon">

                    <label for="link">
                        <img src="${pageContext.request.contextPath}/resources/img/member/mypage/confirmationLetter/link.png">
                    </label>

                    <div class="link_sheet">
                        <a href="javascript:shareBand();">
                            <img src="${pageContext.request.contextPath}/resources/img/member/mypage/confirmationLetter/band_link.png"
                            alt="밴드 공유 보내기 버튼">
                        </a>
                        <a href="javascript:shareFacebook();">
                            <img src="${pageContext.request.contextPath}/resources/img/member/mypage/confirmationLetter/facebook_link.png"
                            alt="페이스북 공유 보내기 버튼">
                        </a>
                        <a id="kakaotalk-sharing-btn" href="javascript:shareKakao();">
                            <img src="${pageContext.request.contextPath}/resources/img/member/mypage/confirmationLetter/kakao_link.png"
                            alt="카카오톡 공유 보내기 버튼">
                        </a>
                        <a href="javascript:shareTwitter();">
                            <img src="${pageContext.request.contextPath}/resources/img/member/mypage/confirmationLetter/twiter_link.png"
                            alt="트위터 공유 보내기 버튼">
                        </a>
                        <a href="javascript:shareLine();">
                            <img src="${pageContext.request.contextPath}/resources/img/member/mypage/confirmationLetter/line_link.png"
                            alt="밴드 공유 보내기 버튼">
                        </a>
                    </div>


                    <a href="javascript:self.print();">
                        <img src="${pageContext.request.contextPath}/resources/img/member/mypage/confirmationLetter/print.png">
                    </a>

                </div>

            </div><!--top-->

            <div class="con_box">


                <table class="box01" cellpadding="0" cellspacing="0">

					<c:forEach items="${reserList}" var="reserList">
                    
                    <tr>
                        <td>
                            <p>상품명</p>
                        </td>

                        <td colspan="5">
                            <p>${reserList.productName}</p>
<!--                             <p>도쿄 이타코(水鄕) 골프 2박3일!</p> -->
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <p>지역</p>
                        </td>

                        <td>
                            <p>${reserList.region}</p>
                        </td>

                        <td>
                            <p>유형</p>
                        </td>

                        <td>
                            <p>${reserList.sortation}</p>
                        </td>

                        <td>
                            <p>예약인원</p>
                        </td>

                        <td>
                            <p>${reserList.personnel}</p>
                        </td>

                    </tr>

                    <tr>
                        <td>
                            <p>출발일</p>
                        </td>

                        <td>
                            <p>${reserList.departure_date}</p>
                        </td>

                        <td>
                            <p>도착일</p>
                        </td>

                        <td>
                            <p>${reserList.arrival_date}</p>
                        </td>

                        <td>
                            <p>박수</p>
                        </td>

                        <td>
                            <p>${reserList.day_park}</p>
                        </td>

                    </tr>
                    
                    </c:forEach>

                    <tr>
                    	<c:forEach items="${reserList}" var="reserList">
                    	
                        <td>
                            <p>예약자명</p>
                        </td>

                        <td>
                            <p>${reserList.booker}</p>
                        </td>

                        <td>
                            <p>휴대폰</p>
                        </td>

                        <td>
                            <p>${reserList.booker_phone}</p>
                        </td>
						
						</c:forEach>

						<c:forEach items="${pdList}" var="pdList">

                        <td>
                            <p>항공스케줄</p>
                        </td>

                        <td>
                            <p>${pdList.airline}</p>
                        </td>
                        
						</c:forEach>
                    </tr>

					<c:forEach items="${pdList}" var="pdList">

                    <tr>
                        <td>
                            <p>호텔</p>
                        </td>

                        <td colspan="5">
                            <p>${pdList.hotel}</p>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <p>포함사항</p>
                        </td>

                        <td colspan="5">
                            <div>
<!--                                 <p>왕복항공권(유류세 & TAX 포함), 무제한 그린피, 후지야 호텔 (2인1실), 전일정 식사</p> -->
                                <p>${pdList.include}</p>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <p>불포함사항</p>
                        </td>

                        <td colspan="5">
                            <div>
<!--                                 <p>카트비 : 2인1카트 500엔(18홀/1인), 1인1카트 700엔(18홀/1인), 캐디피 : 350엔(18홀/1인)</p>
                                <p>캐디팁 : 2인1캐디 150엔(18홀/1인), 1인1캐디 300엔(18홀/1인), + 미팅&샌딩비 : $50(1인/현장지불), 세탁비(의무) : 1일 100엔(1인)</p>
                                <p>코로나보험, 현지 PCR 추가 비용</p> -->
                                <p>${pdList.not_include}</p>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <p>주의사항</p>
                        </td>

                        <td colspan="5">
                            <div>
<!--                                <p>+ 계약금 입금 후 환불 불가능합니다.</p>
                               <p>+ 예약시 제출 서류 : 여권 사본, 백신 접종 증명서(영문본)</p>
                               <p>+ 출국시 필요서류는 담당자를 통해 전달 드릴 예정입니다.</p>
                               <p>+ 현지에서 PCR 검사가 추가 될 경우 비용은 본인 부담입니다.</p>
                               <p>+ 준비 서류 꼭 프린터해서 입국 부탁드립니다(영문)</p>
                               <p>+ 여권 유효 기간이 최소 6개월 이상 남아 있어야 합니다.</p>
                               <p>+ 숙박은 기본 2인1실 기준으로 홀수 인원 시 싱글룸 사용하셔야 합니다.</p>
                               <p>+ 라운드 미진행 시 별도 그린피 환불은 없습니다.</p>
                               <p>+ 예약 후 항공 좌석 및 호텔 숙박 가능 여부 담당자에게 재확인 부탁드립니다.</p> -->
                               <p>${pdList.precaution}</p>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <p>기타사항</p>
                        </td>

                        <td colspan="5">
                            <div>
<!--                                <p>+ 본 상품은 예약과 동시에 전세기 상품이므로 계약금 입금 후 취소 불가능합니다. 계약금 환불 불가입니다.</p>
                               <p>+ 본 상품은 전세기 상품으로 취소시 패널티 1인 600,000원 제외 후 환불됩니다.</p>
                               <p>+ 본 상품은 전세기 상품으로 출국 후 PCR검사 결과 양성시 전액 환불 되지 않습니다.</p>
                               <p>+ 국제선 탑승시간 최소 2시간 전 수속 대기해주세요.</p>
                               <p>+ 아티타야 숙소에는 수영장/헬스장/식당/술집/마사지샵 등 서비스 시설이 구비되어 있습니다.</p> -->
                               <p>${pdList.etc}</p>
                            </div>
                        </td>
                    </tr>

					</c:forEach>

                </table><!--box01-->


                <div class="box02">

                    <p>옵션사항</p>

                    <table cellpadding="0" cellspacing="0">

                        <tr>
                            <td colspan="6">
                                <div>
                                    <p>+ 추가 싱글룸 차지 / 1인(4박)</p>
                                    <p>+ 2인 단독차량 추가금(2인) </p>
                                    <p>+ 비지니스 업그레이드(체크필요)</p>
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <p>가이드</p>
                            </td>

                            <td>
                                <p></p>
                            </td>

                            <td>
                                <p>연락처</p>
                            </td>

                            <td>
                                <p></p>
                            </td>

                            <td>
                                <p>미팅보드명</p>
                            </td>

                            <td>
                                <p></p>
                            </td>

                        </tr>
                    </table>

                </div><!--box02-->

                <div class="calendar">

                    <p>일정표</p>

					<c:forEach items="${itiList}" var="itiList">
                    
                    <table class="day_01" cellpadding="0" cellspacing="0">
		
                        <tr>
                            <td rowspan="2">
                                <p>${itiList.day_of_itinerary}일차</p>
<!--                                 <p>1일차</p> -->
                            </td>
                            <td rowspan="2">

                                <div class="paln01">
<!--                                     <p><span>[08:00]</span> 인천 국제공항 출발 (에어부산)</p>
                                    <p><span>[10:30]</span> 일본 나리타 국제공항 도착</p>
                                    <p>직원미팅 후 중식</p>
                                    <p>중식식사 후 골프장으로 이동 (약 50분 소요)</p>
                                    <p>센트럴CC 2부 18홀 라운딩</p>
                                    <p>저녁식사 후 호텔 투숙 및 휴식</p> -->
                                    <p>${itiList.iti_contents}</p>
                                </div>
                            </td>
                            <td>
                                <div class="food01">
                                    <p>조식 : ${itiList.morning}</p>
                                    <p>중식 : ${itiList.lunch}</p>
                                    <p>석식 : ${itiList.dinner}</p>
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <div class="hotel01">
                                    <p>호텔</p>
                                    
                                    <c:forEach items="${pdList}" var="pdList">
                                    <p>${pdList.hotel}</p>
<!--                                     <p>후지아호텔</p> -->
                                    </c:forEach>
                                    
                                </div>
                            </td>
                        </tr>
                    </table> <!--day01-->

                   	</c:forEach>

                </div> <!--calendar-->

                <div class="traveler">

                    <p>여행자목록</p>

                    <table cellpadding="0" cellspacing="0">

                        <tr>
                            <td>
                                <p>여행자명</p>
                            </td>
                            <td>
                                <p>성별</p>
                            </td>
                            <td>
                                <p>영문명</p>
                            </td>
                            <td>
                                <p>휴대폰</p>
                            </td>
                        </tr>


						<c:forEach items="${traList}" var="traList">
						
                        <tr>
                            <td>
                                <p>${traList.traveler}</p>
<!--                                 <p>홍길동</p> -->
                            </td>
                            <td>
                                <p>${traList.traveler_gender}</p>
<!--                                 <p>남성</p> -->
                            </td>
                            <td>
                                <p>${traList.traveler_firstname} / ${traList.traveler_lastname}</p>
<!--                                 <p>Hong / Gil-dong</p> -->
                            </td>
                            <td>
                                <p>${traList.traveler_phone}</p>
<!--                                 <p>010-1111-1111</p> -->
                            </td>
                        </tr>

						</c:forEach>

                    </table>
                    
                </div><!--traveler-->

            </div><!--con_box-->

            <div class="btn_bot">

                <a href="javascript:self.print();">
                    <p>인쇄하기</p>
                </a>

                <a href="javascript:self.close();">
                    <p>닫기</p>
                </a>

            </div>

        </div><!--confirmation_box-->

    </section>

</body>
</html>