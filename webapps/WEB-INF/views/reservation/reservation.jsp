<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>detail03</title>
	<link href="${pageContext.request.contextPath}/resources/css/reservation.css" rel="stylesheet">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
	<script	src="${pageContext.request.contextPath}/resources/js/reservation.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
</head>
<body>
    <section>

        <div class="reservation">
            
            <div class="rout_re">

                <a href="index">
                    <img src="${pageContext.request.contextPath}/resources/img/reservation/home.png">
                </a>

                <p>></p>

                <a href="category">
                    <p>일본골프</p>
                </a>

                <p>></p>

                <a href="category">
                    <p>도쿄/간도</p>
                </a>

                <p>></p>

                <p>도쿄 이타코(水鄕) 골프 2박3일!</p>

            </div> <!--rout-->

			<form action="member/reservation" method="post" onsubmit="return agreeCheck();">
			
			<input type="hidden" name="sortation" value="패키지">
			<input type="hidden" name="region" value="${param.region}">
			<input type="hidden" name="city" value="${param.city}">
			<input type="hidden" name="product_code" value="${param.product_code}">
			<input type="hidden" name="weekday_fee" value="${param.weekday_fee}">
			<input type="hidden" name="weekend_fee" value="${param.weekend_fee}">
			<input type="hidden" name="id" value="${sessionScope.id}">
			
			<c:forEach items="${bbsList}" var="bbsList">
			<input type="hidden" name="day_park" value="${bbsList.day_park} ">
			<input type="hidden" name="day_il" value="${bbsList.day_il}">
			</c:forEach>

            <!-- <p>예약하기</p> -->

            <div class="line01"></div>

            <div class="process">

                <div>
                    <img src="${pageContext.request.contextPath}/resources/img/reservation/01rout.png">
                </div>

                <div>
                    <img src="${pageContext.request.contextPath}/resources/img/reservation/02rout.png">
                </div>

            </div><!--process-->

            <input type="button" id="left_btn">
            <input type="button" id="right_btn">
            
<!--             <input type="checkbox" id="day01_6">
            <input type="checkbox" id="day02_6">
            <input type="checkbox" id="day03_6">
            <input type="checkbox" id="day04_6">
            <input type="checkbox" id="day05_6">
            <input type="checkbox" id="day06_6">
            <input type="checkbox" id="day07_6">
            <input type="checkbox" id="day08_6">
            <input type="checkbox" id="day09_6">
            <input type="checkbox" id="day10_6">
            <input type="checkbox" id="day11_6">
            <input type="checkbox" id="day12_6">
            <input type="checkbox" id="day13_6">
            <input type="checkbox" id="day14_6">
            <input type="checkbox" id="day15_6">
            <input type="checkbox" id="day16_6">
            <input type="checkbox" id="day17_6">
            <input type="checkbox" id="day18_6">
            <input type="checkbox" id="day19_6">
            <input type="checkbox" id="day20_6">
            <input type="checkbox" id="day21_6">
            <input type="checkbox" id="day22_6">
            <input type="checkbox" id="day23_6">
            <input type="checkbox" id="day24_6">
            <input type="checkbox" id="day25_6">
            <input type="checkbox" id="day26_6">
            <input type="checkbox" id="day27_6">
            <input type="checkbox" id="day28_6">
            <input type="checkbox" id="day29_6">
            <input type="checkbox" id="day30_6">
            <input type="checkbox" id="day31_6">
            <input type="checkbox" id="day32_6">
            <input type="checkbox" id="day33_6">
            <input type="checkbox" id="day34_6">
            <input type="checkbox" id="day35_6">
            <input type="checkbox" id="day36_6">
            <input type="checkbox" id="day37_6">
            <input type="checkbox" id="day38_6">
            <input type="checkbox" id="day39_6">
            <input type="checkbox" id="day40_6">
            <input type="checkbox" id="day41_6">
            <input type="checkbox" id="day42_6">


            <input type="checkbox" id="day01_7">
            <input type="checkbox" id="day02_7">
            <input type="checkbox" id="day03_7">
            <input type="checkbox" id="day04_7">
            <input type="checkbox" id="day05_7">
            <input type="checkbox" id="day06_7">
            <input type="checkbox" id="day07_7">
            <input type="checkbox" id="day08_7">
            <input type="checkbox" id="day09_7">
            <input type="checkbox" id="day10_7">
            <input type="checkbox" id="day11_7">
            <input type="checkbox" id="day12_7">
            <input type="checkbox" id="day13_7">
            <input type="checkbox" id="day14_7">
            <input type="checkbox" id="day15_7">
            <input type="checkbox" id="day16_7">
            <input type="checkbox" id="day17_7">
            <input type="checkbox" id="day18_7">
            <input type="checkbox" id="day19_7">
            <input type="checkbox" id="day20_7">
            <input type="checkbox" id="day21_7">
            <input type="checkbox" id="day22_7">
            <input type="checkbox" id="day23_7">
            <input type="checkbox" id="day24_7">
            <input type="checkbox" id="day25_7">
            <input type="checkbox" id="day26_7">
            <input type="checkbox" id="day27_7">
            <input type="checkbox" id="day28_7">
            <input type="checkbox" id="day29_7">
            <input type="checkbox" id="day30_7">
            <input type="checkbox" id="day31_7">
            <input type="checkbox" id="day32_7">
            <input type="checkbox" id="day33_7">
            <input type="checkbox" id="day34_7">
            <input type="checkbox" id="day35_7">
            <input type="checkbox" id="day36_7">
            <input type="checkbox" id="day37_7">
            <input type="checkbox" id="day38_7">
            <input type="checkbox" id="day39_7">
            <input type="checkbox" id="day40_7">
            <input type="checkbox" id="day41_7">
            <input type="checkbox" id="day42_7"> -->
            
<%--            
            <div class="calendar">

                <div class="calendar_txt">

                    <label for="left_btn" >
						<button class="nav-btn go-next" onclick="prevCalendar()">
				    		<img src="${pageContext.request.contextPath}/resources/img/reservation/left.png">
						</button>
                    </label>

                    <p id="tbCalendarYM"></p>

                    <label for="right_btn">
                    	<button class="nav-btn go-next" onclick="nextCalendar()">
	                        <img src="${pageContext.request.contextPath}/resources/img/reservation/right.png">
                    	</button>
                    </label>

                </div>
                

                <div class="calendar_left">

<!--            	<p>2022-06</p> -->

                    <table cellpadding="0" cellspacing="0" id="calendar">

                        <tr>
                            <td>월</td>
                            <td>화</td>
                            <td>수</td>
                            <td>목</td>
                            <td>금</td>
                            <td>토</td>
                            <td>일</td>
                        </tr>


                    </table>

					<script language="javascript" type="text/javascript">
						buildCalendar();
					</script>

                </div><!--left-->

                <div class="calendar_right">

<!--                     <p>2022-07</p> -->
<!--
                    <table cellpadding="0" cellspacing="0">
                        <tr>
                            <td>월</td>
                            <td>화</td>
                            <td>수</td>
                            <td>목</td>
                            <td>금</td>
                            <td>토</td>
                            <td>일</td>
                        </tr>

                        <tr>
                            <td>
                                <label for="day36_7">
                                    <p>31</p>
                                    <p>1,099,000</p>
                                </label>
                            </td>
                            <td>
                                <label for="day37_7">
                                </label>
                            </td>
                            <td>
                                <label for="day38_7">
                                </label>
                            </td>
                            <td>
                                <label for="day39_7">
                                </label>
                            </td>
                            <td>
                                <label for="day40_7">
                                </label>
                            </td>
                            <td>
                                <label for="day41_7">
                                </label>
                            </td>
                            <td>
                                <label for="day42_7">
                                </label>
                            </td>
                        </tr> 

                    </table> -->
                </div><!--right-->

            </div><!--calendar-->
--%>
            <div class="select">

                <p>선택항목</p>

                <table cellpadding="0" cellspacing="0">

                    <tr>

                        <td>
                            <p>상품명</p>
                        </td>

                        <td>
                            <!-- <p>도쿄 이타코(水鄕) 골프 2박3일!</p> -->
                		    <input type="text" name="productName" value="${param.productName}" readonly/>
                        </td>

                        <td>
                            <p>상품가</p>
                        </td>

                        <td>
                            <!-- <p>1,090,000 원 (1인 기준)</p> -->
                            <c:if test="${param.weekday_fee != null}">
                            	<input type="text" name="product_price" value="${param.weekday_fee}" id="lowestPrice" readonly/>원 (1인 기준)
                            	
                            </c:if>
                            <c:if test="${param.weekend_fee != null}">
                            	<input type="text" name="product_price" value="${param.weekend_fee}" id="lowestPrice" readonly/>원 (1인 기준)
                            </c:if>
                        </td>
                        
                        <td>
                            <p>총 결제금액</p>
                        </td>

                    </tr>

                    <tr>
                        <td>
                            <p>출발일</p>
                        </td>

						<c:forEach items="${bbsList}" var="bbsList">
							<td>
								<p>
									<input type="text" name="departure_date" id="datepicker"
										value="${bbsList.period_start}" required>
								</p> <!--                             <p>2022-05-25</p> -->
							</td>
						</c:forEach>

						<td>
                            <p>인원</p>
                        </td>

                        <td>
                            <select id="num01" name="personnel">
                                <option value="0">선택</option>
                                <option value="2">2명</option>
                                <option value="3">3명</option>
                                <option value="4">4명</option>
                                <option value="5">5명</option>
                                <option value="6">6명</option>
                            </select>
                        </td>


                        <td rowspan="6">
                            <!-- <p>2,180,000원</p>
                            <p>(2인요금)</p> -->
                            <input type="text" name="total_price" id="total_price" readonly="readonly"/> 원
                        </td>

                    </tr>

					<c:forEach items="${bbsList}" var="bbsList">
					
                    <tr>
                        <td rowspan="4">
                            <p>옵션</p>
                        </td>

                        <td>

                            <div class="chk01">
                                <input type="checkbox" id="checkbox01">
                                <label for="checkbox01">
                                <p>추가 싱글룸 차지 / 1인(4박) </p>
                                </label>
                            </div>

                        </td>

                        <td>
                            <p>가격</p>
                        </td>

                        <td>
                            <!-- <p>90,000원</p> -->
                            <input type="text" name="option_singleRoom" id="option_singleRoom" 
                            value="${bbsList.option_singleRoom}" readonly/>원
                        </td>

                    </tr>
				
                    <tr>
                        <td>
                            <div class="chk02">
                                <input type="checkbox" id="checkbox02">
                                <label for="checkbox02">
                                <p>2인 단독차량 추가금(2인) </p>
                                </label>
                            </div>

                        </td>

                        <td>
                            <p>가격</p>
                        </td>

                        <td>
                            <!-- <p>150,000원</p> -->
                            <input type="text" name="option_addVehicle" id="option_addVehicle" 
                            value="${bbsList.option_addVehicle}" readonly/>원
                        </td>

                    </tr>

                    <tr>

                        <td>
                            <div class="chk03">
                                <input type="checkbox" id="checkbox03">
                                <label for="checkbox03">
                                <p>비지니스 업그레이드(체크필요)</p>
                                </label>
                            </div>
                        </td>

                        <td>
                            <p>가격</p>
                        </td>

                        <td>
                            <!-- <p>560,000원</p> -->
                            <input type="text" name="option_businessUpgrade" id="option_businessUpgrade" 
                            value="${bbsList.option_businessUpgrade}" readonly/>원
                        </td>

                    </tr>
                    
				</c:forEach>

                </table>

            </div><!--select-->

            <div class="information">

                <div class="information01">

                    <div class="title01_inf">

                        <p>예약자정보</p>

                        <div class="chk_inf">
							<label for="infor01">
                            <p>※ 예약자도 여행자에 포함</p>
							</label>

                            <input type="checkbox" id="infor01" class="infor01">

                        </div>

                    </div><!--title-->

                    <table cellpadding="0" cellspacing="0">

                        <tr>

                            <td>
                                <p><span>*</span> 이름</p>
                            </td>


                            <td>
                                <!-- <p>홍길동</p> -->
                                <input type="text" name="booker" id="booker" required/>
                            </td>


                            <td>
                                <p><span>*</span> 성별</p>
                            </td>

                            <td>
                                <select id="gender02" name="booker_gender">
                                    <option value="남성">남성</option>
                                    <option value="여성">여성</option>

                                </select>
                            </td>


                            <td>
                                <p><span>*</span> 이메일</p>
                            </td>

                            <td>
                                <!-- <p>an20o0@naver.com</p> -->
                                <input type="email" name="booker_email" required/>
                            </td>


                            <td>
                                <p><span>*</span> 휴대폰</p>
                            </td>


                            <td>
                                <!-- <p>010-1111-1111</p> -->
                                <input type="text" name="booker_phone" id="booker_phone" required/>
                            </td>

                        </tr>

                    </table>

                </div><!--information01-->


                <div class="information02">
   
                    <p>여행자정보1</p>

                    <table cellpadding="0" cellspacing="0">
                        <tr>
                            <td>
                                <p><span>*</span> 이름</p>
                            </td>
                            <td>
                                <!-- <p>홍길동</p> -->

                                <input type="text" name="traveler" id="traveler01" required/>

<!--                                 <input type="text" name="travelList[0].traveler" required/> -->
                            </td>
                            <td>
                                <p><span>*</span> 성별</p>
                            </td>
                            <td>
                                <select id="gender01" name="traveler_gender">
<!--                                 <select id="gender01" name="travelList[0].traveler_gender"> -->
                                    <option value="남성">남성</option>
                                    <option value="여성">여성</option>
                                </select>
                            </td>
                            <td>
                                <p>영문명</p>
                            </td>
                            <td>
                                <input type="text" size="6" maxlength="6" placeholder="성(예,HONG)" id="last_name01" 
                                 name="traveler_firstname" required>
<!--                                 <input type="text" size="6" maxlength="6" placeholder="성(예,HONG)" id="last_name01" 
                                 name="travelList[0].traveler_firstname" required> -->
                                <input type="text" size="10" maxlength="10" placeholder="성(예,GILDONG)" id="name01" 
                                 name="traveler_lastname" required>
<!--                                 <input type="text" size="10" maxlength="10" placeholder="성(예,GILDONG)" id="name01" 
                                 name="travelList[0].traveler_lastname" required> -->
                            </td>
                            <td>
                                <p>연락처</p>
                            </td>
                            <td>
                                <!-- <p>010-1111-1111</p> -->
                                
                                <input type="text" name="traveler_phone" id="traveler01_phone" required/>

<!--                                 <input type="text" name="travelList[0].traveler_phone" required/> -->
                            </td>
                        </tr>
                    </table>

                </div><!--information02-->
 
                 <div class="information03" id="travel02">
<%--   
	                <p>여행자정보02</p>
	
	                <table cellpadding="0" cellspacing="0">
	                    <tr>
	                        <td>
	                            <p><span>*</span> 이름</p>
	                        </td>
	                        <td>

	                            <p>홍길동</p>
	                            <input type="text" name="traveler" required/> 
	                            <input type="text" name="travelList[1].traveler" required/> 

	                        </td>
	
	                        <td>
	                            <p><span>*</span> 성별</p>
	                        </td>
	                        <td>
	                            <select id="gender03" name="traveler_gender">

	                            <select id="gender03" name="travelList[1].traveler_gender">

	                                <option value="남성">남성</option>
	                                <option value="여성">여성</option>
	                            </select>
	                        </td>
	                        <td>
	                            <p>영문명</p>
	                        </td>
	                        <td>
	                            <input type="text" size="6" maxlength="6" placeholder="성(예,HONG)" id="last_name01" 
	                            name="traveler_firstname" required>
	                           <input type="text" size="10" maxlength="10" placeholder="성(예,GILDONG)" id="name01" 
	                            name="traveler_lastname" required>

	                            <input type="text" size="6" maxlength="6" placeholder="성(예,HONG)" id="last_name01" 
	                            name="travelList[1].traveler_firstname" required>
	                           <input type="text" size="10" maxlength="10" placeholder="성(예,GILDONG)" id="name01" 
	                            name="travelList[1].traveler_lastname" required> -->
	                        </td>
	                        <td>
	                            <p>연락처</p>
	                        </td>
	                        <td>
	                            <p>010-1111-1111</p>
	                            <input type="text" name="traveler_phone" required />
	                            <input type="text" name="travelList[1].traveler_phone" required />

	                        </td>
	                    </tr>
	                </table>
          
               	<br/><br/>
--%>
	            </div> 
	            <!--information03-->
            

        </div><!--information-->

        <div class="notice">

            <div class="notice_left">

                <p>취소규정</p>

                <div class="cancellation">
                    <p>+ 계약금 입금 후 환불 불가능합니다.</p>
                    <p>+ 예약시 제출 서류 : 여권 사본, 백신 접종 증명서(영문본)</p>
                    <p>+ 출국시 필요서류는 담당자를 통해 전달 드릴 예정입니다.</p>
                    <p>+ 현지에서 PCR 검사가 추가 될 경우 비용은 본인 부담입니다.</p>
                    <p>+ 준비 서류 꼭 프린터해서 입국 부탁드립니다(영문)</p>
                    <p>+ 여권 유효 기간이 최소 6개월 이상 남아 있어야 합니다.</p>
                    <p>+ 숙박은 기본 2인1실 기준으로 홀수 인원 시 싱글룸 사용하셔야 합니다.</p>
                    <p>+ 라운드 미진행 시 별도 그린피 환불은 없습니다.</p>
                    <p>+ 예약 후 항공 좌석 및 호텔 숙박 가능 여부 담당자에게 재확인 부탁드립니다.</p>
                </div>

                <div class="agree01">
                	<label for="cancellation_chk">
                    <p id="ag1">동의합니다.</p>
                	</label>
                    <input type="checkbox" id="cancellation_chk">
                </div>

            </div><!--left-->


            <div class="notice_right">

                <p>개인정보 수집/이용</p>

                <div class="privacy">
                    <p>+ 계약금 입금 후 환불 불가능합니다.</p>
                    <p>+ 예약시 제출 서류 : 여권 사본, 백신 접종 증명서(영문본)</p>
                    <p>+ 출국시 필요서류는 담당자를 통해 전달 드릴 예정입니다.</p>
                    <p>+ 현지에서 PCR 검사가 추가 될 경우 비용은 본인 부담입니다.</p>
                    <p>+ 준비 서류 꼭 프린터해서 입국 부탁드립니다(영문)</p>
                    <p>+ 여권 유효 기간이 최소 6개월 이상 남아 있어야 합니다.</p>
                    <p>+ 숙박은 기본 2인1실 기준으로 홀수 인원 시 싱글룸 사용하셔야 합니다.</p>
                    <p>+ 라운드 미진행 시 별도 그린피 환불은 없습니다.</p>
                    <p>+ 예약 후 항공 좌석 및 호텔 숙박 가능 여부 담당자에게 재확인 부탁드립니다.</p>
                </div>

                <div class="agree02">
                	<label for="term_of_service">
                    	<p id="ag2">동의합니다.</p>
                	</label>
                	
                    <input type="checkbox" id="term_of_service">
                </div>


            </div><!--right-->


        </div><!--notice-->
<%-- 
        <div class="total">
            <p>총 결제 금액</p>
            <input type="text" name="totalPrice" id="totalPrice" readonly /> 원<span>(2인 요금)</span>
            <!-- <p>2,180,000원 <span>(2인 요금)</span></p> -->
        </div>
--%>

        <div class="btn">
            <input type="submit" value="예약" id="btn01">
            <input type="reset" value="취소" id="btn02">
        </div>

		</form>

        </div><!--reservation-->

    </section>
</body>
</html>