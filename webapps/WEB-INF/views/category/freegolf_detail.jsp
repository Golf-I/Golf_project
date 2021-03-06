<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>freegolf</title>
	<link href="${pageContext.request.contextPath}/resources/css/freegolf_detail.css" rel="stylesheet">
	<script	src="${pageContext.request.contextPath}/resources/js/reservation.js"></script>
</head>
<body>

	<input type="checkbox" id="call">
	<input type="checkbox" id="talk"> 
	<input type="checkbox" id="link">
	<input type="checkbox" id="map">

	<section class="freegolf_detail_box">
        
        <div class="freegolf_detail">

            <div class="route">

                <a href="index">
                    <img src="${pageContext.request.contextPath}/resources/img/freegolf//home.png">
                </a>

                <p>></p>

                <p>일본골프</p>

                <p>></p>

                <select>
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

                <p>도쿄 이타코(水鄕) 골프 2박 3일!</p>

            </div><!--route-->

            <div class="title_detail">
                <p>도쿄 이타코(水鄕) 골프 2박 3일!</p>

                <div class="icon_detail">
                    
                        <label class="detail_c" for="call">
                        <img src="${pageContext.request.contextPath}/resources/img/freegolf/call_detail.png">
                        </label>

                        <div class="call_sheet">
                            <p>상담센터 <span>1588-1588</span></p>
                            <p>평일 09:00~18:00 / 일요일 및 공휴일 휴무</p>
                        </div>
                    
                        <label class="detail_d" for="talk">
                        <img src="${pageContext.request.contextPath}/resources/img/freegolf/talk_detail.png">
                        </label>

                        <div class="talk_sheet">
                            <div><p>실시간 문의하기</p></div>
                            <div></div>
                            <div class="talk_btn">

                                <a href="#">
                                    <img src="${pageContext.request.contextPath}/resources/img/freegolf/plus.png">
                                </a>

                                <input type="text" id="talk_box">

                                <input type="button" value="전송" id="talk_btn">
                            </div>
                        </div>

                        <label class="detail_l" for="link">
                        <img src="${pageContext.request.contextPath}/resources/img/freegolf/link_detail.png">
                        </label>

                        <div class="link_sheet">
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/resources/img/freegolf/band_link.png">
                            </a>
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/resources/img/freegolf/facebook_link.png">
                            </a>
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/resources/img/freegolf/kakao_link.png">
                            </a>
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/resources/img/freegolf/twiter_link.png">
                            </a>
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/resources/img/freegolf/line_link.png">
                            </a>
                        </div>
     
                        <label class="detail_m" for="map">
                        <img src="${pageContext.request.contextPath}/resources/img/freegolf/map_detail.png">
                        </label>

                        <div class="map_sheet">
                            <label for="map" class="close"><img src="${pageContext.request.contextPath}/resources/img/freegolf/close.png"></label>
                        </div>
              
                </div><!--icon-->
            </div><!--title-->

            <div class="line01"></div>

            <div class="img_box">

                <div class="big_img">

                </div>

                <div class="mini_img_box">

                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                </div>

            </div><!--img_box-->

            <input type="button" id="calendar_btn">
            <input type="button" id="right_cal">
            <input type="button" id="left_cal">

            <div class="calendar">

                <div class="calendar_left">

                    <div class="calendar_day">

                        <div class="top_cal">
                            <label for="left_cal">
                                <img src="${pageContext.request.contextPath}/resources/img/freegolf/left.png">
                            </label>

                            <p>2022-05</p>

                            <label for="right_cal">
                                <img src="${pageContext.request.contextPath}/resources/img/freegolf/right.png">
                            </label>
                        </div>

                    </div>

                    <table class="calendar_box" cellpadding="0" cellspacing="0">
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
                                <a href="#">
                                    <p>01</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                            <td>
                                <a href="#">
                                    <p>02</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                            <td>
                                <a href="#">
                                    <p>03</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                            <td>
                                <a href="#">
                                    <p>04</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                            <td>
                                <a href="#">
                                    <p>05</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                            <td>
                                <a href="#">
                                    <p>06</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                            <td>
                                <a href="#">
                                    <p>07</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <a href="#">
                                    <p>08</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                            <td>
                                <a href="#">
                                    <p>09</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                            <td>
                                <a href="#">
                                    <p>10</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                            <td>
                                <a href="#">
                                    <p>11</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                            <td>
                                <a href="#">
                                    <p>12</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                            <td>
                                <a href="#">
                                    <p>13</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                            <td>
                                <a href="#">
                                    <p>14</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <a href="#">
                                    <p>15</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                            <td>
                                <a href="#">
                                    <p>16</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                            <td>
                                <a href="#">
                                    <p>17</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                            <td>
                                <a href="#">
                                    <p>18</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                            <td>
                                <a href="#">
                                    <p>19</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                            <td>
                                <a href="#">
                                    <p>20</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                            <td>
                                <a href="#">
                                    <p>21</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <a href="#">
                                    <p>22</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                            <td>
                                <a href="#">
                                    <p>23</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                            <td>
                                <a href="#">
                                    <p>24</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                            <td>
                                <a href="#">
                                    <p>25</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                            <td>
                                <a href="#">
                                    <p>26</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                            <td>
                                <a href="#">
                                    <p>27</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                            <td>
                                <a href="#">
                                    <p>28</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <a href="#">
                                    <p>29</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                            <td>
                                <a href="#">
                                    <p>30</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                            <td>
                                <a href="#">
                                    <p>31</p>
                                    <p>1,099,000</p>
                                </a>
                            </td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>

                    </table>
                </div><!--left-->



                <div class="calendar_right">
<%--
                    <div class="calendar_right_title">
                        <div>
                            <p>※ 이용일 추가하기</p>
                            <label for="calendar_btn">추가</label>
                        </div>
                    </div>
--%>


                    <table class="calender_top" cellpadding="0" cellspacing="0">

                        <tr>
                            <td>골프장</td>
                            <td>홍길동</td>
                            <td>가격(1인기준)</td>
                            <td>90,000</td>
                        </tr>

                        <tr>
                            <td>이용일</td>
                            <td>2022-05-25</td>
                            <td>인원</td>
                            <td>
                                <select id="calender_sel">
                                    <option>2명</option>
                                    <option>4명</option>
                                    <option>6명</option>
                                </select>
                            </td>
                        </tr>

                    </table>
                     
                    <table class="calender_bot" cellpadding="0" cellspacing="0">
                        <tr>
                            <td colspan="4">요금정보</td>
                        </tr>

                        <tr>
                            <td>카트비</td>
                            <td colspan="3">
                                <p>2인1카트] ($20/18홀/1인) ($30/27홀/1인), 홀수인원 예약시 싱글카트비용 추가됩니다.
                                - 현지지불</p>
                            </td>
                        </tr>

                        <tr>
                            <td>캐디피</td>
                            <td colspan="3">
                                <p>캐디피 포함</p>
                            </td>
                        </tr>


                        <tr>
                            <td>캐디팁</td>

                            <td colspan="3">
                                <p>$14 / 18홀 기준 / 1인 요금</p>
                            </td>
                        </tr>
                        
                        <tr>
                            <td>기타</td>
                            <td colspan="3">
                                <p>클럽렌타비용 1일 $20</p>
                            </td>
                        </tr>

                    </table>
                </div><!--right-->

            </div><!--calendar-->

            <div class="line02"></div>

            <div class="travel_plans">

                <div class="travel_plans_title">
                    <p>여행일정</p>
                    <p>※  옵션 예약은 하지 않습니다.</p>
                    <input type="checkbox" id="travel_plan">
                </div>

                <div class="left_travel">

                    <table cellpadding="0" cellspacing="0">
                        <tr>
                            <td>호텔명</td>
                            <td>등급</td>
                            <td>요금(1박기준)</td>
                            <td>선택</td>
                        </tr>
                    </table>


                    <div class="scroll_01">

                        <table cellpadding="0" cellspacing="0">
                            <tr>
                                <td>임페리얼 japan (구 소호텔)</td>
                                <td>★★★★☆</td>
                                <td>180,000</td>
                                <td> <a href="#">선택</a></td>
                            </tr>

                           
                            <tr>
                                <td>가나무라 호텔</td>
                                <td>★★★☆☆</td>
                                <td>120,000</td>
                                <td> <a href="#">선택</a></td>
                            </tr>

                            <tr>
                                <td>이노시키 호텔</td>
                                <td>★★★☆☆</td>
                                <td>90,000</td>
                                <td> <a href="#">선택</a></td>
                            </tr>

                            <tr>
                                <td>소호텔</td>
                                <td>★★★★☆</td>
                                <td>160,000</td>
                                <td> <a href="#">선택</a></td>
                            </tr>

                            <tr>
                                <td>펠리시 기노야</td>
                                <td>★★★☆☆</td>
                                <td>100,000</td>
                                <td> <a href="#">선택</a></td>
                            </tr>

                            <tr>
                                <td>메리어트 호텔</td>
                                <td>★★★☆☆</td>
                                <td>300,000</td>
                                <td> <a href="#">선택</a></td>
                            </tr>

                            <tr>
                                <td>가나무라 호텔</td>
                                <td>★★★★★</td>
                                <td>120,000</td>
                                <td> 
                                    <a href="#">
                                        선택
                                    </a>
                                </td>
                            </tr>

                            <tr>
                                <td>가나무라 호텔</td>
                                <td>★★★☆☆</td>
                                <td>120,000</td>
                                <td> 
                                    <a href="#">
                                        선택
                                    </a>
                                </td>
                            </tr>

                        </table>

                    </div>
                    
                </div><!--left-->

                <input type="button" id="chk_day_01">
                <input type="button" id="chk_day_02">

                <div class="right_travel">

                     <div class="chk_in">
                        <table cellpadding="0" cellspacing="0">
                            <tr>
                                <td>체크인</td>
                                <td>
                                    <div class="chk_in_day01">
                                        <p>2022-05-25</p>
                                    </div>

                                    <label for="chk_day_01">
                                        <img src="${pageContext.request.contextPath}/resources/img/freegolf/day.png">
                                    </label>
                                </td>
                            
                                <td>체크아웃</td>
                                <td>
                                    <div class="chk_in_day02">
                                        <p>2022-05-27</p>
                                    </div>

                                    <label for="chk_day_02">
                                        <img src="${pageContext.request.contextPath}/resources/img/freegolf/day.png">
                                    </label>
                                </td>
                            </tr>

                            <tr>
                                <td>호텔명</td>
                                <td>소호텔</td>
                                <td>가격(1박기준)</td>
                                <td>90,000원</td>
                            </tr>

                            <tr>
                                <td>박수</td>
                                <td>2박</td>
                                <td>객실수</td>
                                <td>
                                    <select id="hotel_chk">
                                        <option>1개</option>
                                        <option>2개</option>
                                        <option>3개</option>
                                        <option>4개</option>
                                        <option>5개</option>
                                        <option>6개</option>
                                    </select>
                                </td>
                            </tr>

                        </table>
                     </div><!--chk_in-->

                     <div class="facilities">

                        <table cellpadding="0" cellspacing="0">
                            <tr>
                                <td>편의시설</td>
                            </tr>

                            <tr>
                                <td>
                                
                            <div class="facil_top">

                                <div class="facil01">
                                    <div>
                                        <img src="${pageContext.request.contextPath}/resources/img/freegolf/employee.png">
                                    </div>
                                    <p>한국인스텝</p>
                                </div>

                                <div class="facil02">
                                    <div>
                                        <img src="${pageContext.request.contextPath}/resources/img/freegolf/wifi.png">
                                    </div>
                                    <p>와이파이(로비)</p>
                                </div>

                                <div class="facil03">
                                    <div>
                                        <img src="${pageContext.request.contextPath}/resources/img/freegolf/wifi.png">
                                    </div>
                                    <p>와이파이(룸)</p>
                                </div>

                                <div class="facil04">
                                    <div>
                                        <img src="${pageContext.request.contextPath}/resources/img/freegolf/employee.png">
                                    </div>
                                    <p>한국인스텝</p>
                                </div>

                            </div>

                            <div class="facil_bot">

                                <div class="facil05">
                                    <div>
                                        <img src="${pageContext.request.contextPath}/resources/img/freegolf/bus.png">
                                    </div>
                                    <p>공항 셔틀버스</p>
                                </div>

                                <div class="facil06">
                                    <div>
                                        <img src="${pageContext.request.contextPath}/resources/img/freegolf/pool.png">
                                    </div>
                                    <p>수영장</p>
                                </div>

                                <div class="facil07">
                                    <div>
                                        <img src="${pageContext.request.contextPath}/resources/img/freegolf/health.png">
                                    </div>
                                    <p>피트니스센터</p>
                                </div>

                                <div class="facil08">
                                    <div>
                                        <img src="${pageContext.request.contextPath}/resources/img/freegolf/bus.png">
                                    </div>
                                    <p>공항 셔틀버스</p>
                                </div>

                            </div>

                                </td>
                            </tr>
                        </table>
                     </div>

                </div><!--right-->
                 
            </div><!--여행일정-->

            <div class="line03"></div>

            <div class="option_zon">

                <div class="option_title">
                    <p>옵션사항</p>
                </div>

                <div class="option_left">

                    <table cellpadding="0" cellspacing="0">
                        <tr>
                            <td>옵션</td>
                            <td>가격</td>
                            <td>선택</td>
                        </tr>
                    </table>


                    <div class="scroll_02">

                        <table cellpadding="0" cellspacing="0">
                            <tr>
                                <td>나리타공항 ↔ 골프장 송영서비스 (1인 기준)</td>
                                <td>180,000</td>
                                <td> <a href="#">선택</a></td>
                            </tr>

                           
                            <tr>
                                <td>도쿄 반나절 투어 (1인 기준)</td>
                                <td>120,000</td>
                                <td> <a href="#">선택</a></td>
                            </tr>

                            <tr>
                                <td>1일 렌터카 (Sienta GPS 또는 동급)</td>
                                <td>90,000</td>
                                <td> <a href="#">선택</a></td>
                            </tr>

                            <tr>
                                <td>디즈인렌드 입장권 (1인 기준)</td>
                                <td>160,000</td>
                                <td> <a href="#">선택</a></td>
                            </tr>

                        </table>

                    </div>
                    
                </div><!--left-->

                <input type="button" id="plus_opt">
                <input type="button" id="opt_left">
                <input type="button" id="opt_right">

                <div class="option_right">

                    <table cellpadding="0" cellspacing="0" class="opt_top">

                        <tr>
                            <td>옵션내용</td>
                        </tr>

                        <tr> 
                            <td>
                            <div class="opt_txt">
                                <p><span>Time 렌터카 차량 : Toyota Sienta GPS </span><br>
                                    6인승 픽업장소는 도쿄 나리타 공항 (Tokyo Narita Airport) 터미널 안 <br>
                                    도난보험, 자차보험 가입, GPS 다국어 지원</p>
                            </div>
                            </td>
                        </tr>

                    </table>
<%-- 
                    <div class="opt_plus">
                        <p>※ 이용일 추가하기</p>

                        <label for="plus_opt">
                            <p>추가</p>
                        </label>
                    </div>
--%>

                    <table class="opt_bot" cellpadding="0" cellspacing="0">
                        <tr>
                            <td>이용일</td>
                            <td colspan="2">
                                <div class="opt_chk_left">
                                    <div>
                                        <p>2022-05-25</p>
                                    </div>

                                    <label for="opt_left">
                                        <img src="${pageContext.request.contextPath}/resources/img/freegolf/day.png">
                                    </label>
                                </div>

                                <p>~</p>

                                <div class="opt_chk_right">
                                    <div>
                                        <p>2022-05-27</p>
                                    </div>

                                    <label for="opt_right">
                                        <img src="${pageContext.request.contextPath}/resources/img/freegolf/day.png">
                                    </label>
                                </div>
                            </td>
                            <td>2박 3일</td>
                        </tr>
                        <tr>
                            <td>포함사항</td>
                            <td colspan="3">1일 렌터카 (Sienta GPS 또는 동급)</td>
                        </tr>
                        <tr>
                            <td>가격</td>
                            <td>90,000원</td>
                            <td>인원/수량</td>
                            <td>
                                <select id="opt_num">
                                    <option>1대</option>
                                    <option>2대</option>
                                    <option>3대</option>
                                    <option>4대</option>
                                    <option>5대</option>
                                </select>
                            </td>
                        </tr>
                    </table>
                </div>
            
            </div><!--옵션사항-->


            <div class="reservation">

                <div class="title_re">
                    <div class="line_box_re01">
                        <div class="line_re01"></div>
                        <div class="line_re02"></div>
                        <div class="line_re03"></div>
                    </div>

                    <p>선택한 예약항목</p>

                    <div class="line_box_re02">
                        <div class="line_re04"></div>
                        <div class="line_re05"></div>
                        <div class="line_re06"></div>
                    </div>
                </div><!--title-->

                <table class="top_re" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>골프장명</td>
                        <td>썬라이즈 골프장 18홀</td>
                        <td>이용일</td>
                        <td>2022-05-25</td>
                        <td>인원</td>
                        <td>2명</td>
                        <td>총가격</td>
                        <td>180,000원</td>
                    </tr>
                </table>

                <table class="mid_re" cellpadding="0" cellspacing="0">

                    <tr>
                        <td>호텔명</td>
                        <td>썬라이즈 골프장 18홀</td>
                        <td>체크인</td>
                        <td>2022-05-25</td>
                        <td>체크아웃</td>
                        <td>2022-05-27</td>
                        <td>박수</td>
                        <td>180,000원</td>
                    </tr>

                    <tr>
                        <td>객실수</td>
                        <td>1개</td>
                        <td>총가격</td>
                        <td>180,000원</td>
                        <td colspan="4"></td>
                    </tr>

                </table>

                <table class="bot_re" cellpadding="0" cellspacing="0">

                    <tr>
                        <td>이용일</td>
                        <td>2022-05-25 ~ 2022-05-27</td>
                        <td>이용기간</td>
                        <td>2박 3일</td>
                        <td>인원/수량</td>
                        <td>1대</td>
                        <td>총가격</td>
                        <td>270,000원</td>
                    </tr>

                    <tr>
                        <td>옵션내용</td>
                        <td colspan="3">
                            <div>
                                <p>Time 렌터카 차량 : Toyota Sienta GPS</p>
                                <p>6인승 픽업장소는 도쿄 나리타 공항 (Tokyo Narita Airport) 터미널 안</p>
                                <p>도난보험, 자차보험 가입, GPS 다국어 지원</p>
                            </div>
                        </td>
                        <td>포함사항</td>
                        <td colspan="3">
                            <p>1일 렌터카 (Sienta GPS 또는 동급)</p>
                        </td>
                    </tr>

                </table>

            </div><!--예약하기-->
            
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

                    <p>골프장명 : 센트럴 CC</p>

                    <div class="golf_img_d">
                        <div></div>
                        <div></div>
                    </div>

                    <div class="golf_detail_txt">
                        <p>총 36홀 코스로 이루어진 센트럴 골프클럽은 일본 골프코스 디자이너로 유명한 ‘나시노가＇설계해 1974년 정식 개장한 일본의 명문 골프장입니다.<br>
                            PGA 토너먼트, 관동 오픈 챔피언십, 일본프로오픈, 프로암대회, 각종 아마추어 대회등 공식경기장소로 사랑받고 있는 수준급 토너먼트 골프코스이며, 각 코스마다 등급이 높아 라운드에 재미를 더 해주는 레이아웃이 
                            특징입니다. 
                        </p>
                    </div>
                </div>

            </div><!--골프장 정보-->

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

                    <p>숙박명 : 후지야 호텔</p>

                    <div class="hotel_img_d">
                        <div></div>
                        <div></div>
                    </div>

                    <div class="hotel_detail_txt">
                        <p>한국인이 직접 사서 운영하고 있는 호텔 후지야!<br>
                        이타코 강변에 위치하고 있어서,한적한 분위기가 마음을 사로잡습니다. 4성급 비지니스급의 깔끔한 호텔이라고 보시면 됩니다. 코로나 이후 침체되었던 일본내 한국기업도 응원한다는 점에서 의미가 깊은곳입니다.   
                        </p>
                    </div>
                </div>

            </div><!--호텔 정보-->

            <div class="option_detail">

                <div class="option_title_d">
                <div class="line_box05">
                    <div class="option_line09"></div>
                    <div class="option_line10"></div>
                </div>

                <p>옵션정보</p>

                <div class="line_box06">
                    <div class="option_line11"></div>
                    <div class="option_line12"></div>
                </div>
                </div><!--타이틀-->

                <div class="option_img_detail">

                    <p>옵션명 : time 렌터카 차량 : Toyota Sienta GPS</p>

                    <div class="option_img_d">
                        <div></div>
                        <div></div>
                    </div>

                    <div class="option_detail_txt">
                        <p>
                            Time 렌터카 차량 : Toyota Sienta GPS<br>
                            6인승 픽업장소는 도쿄 나리타 공항 (Tokyo Narita Airport) 터미널 안 도난보험, 자차보험 가입, GPS 다국어 지원
                             
                        </p>
                    </div>
                </div>

            </div><!--옵션 정보-->

            <div class="usage_amount">

                <p>총 이용금액</p>

                <table class="amount01" cellpadding="0" cellspacing="0">

                    <tr>
                        <td>골프장 요금</td>
                        <td>숙박요금</td>
                        <td>숙박요금</td>
                        <td>옵션 02</td>
                        <td>최종이용금액</td>
                    </tr>

                    <tr>
                        <td>180,000</td>
                        <td>180,000</td>
                        <td>270,000</td>
                        <td>0</th>
                        <td>630,000</td>
                    </tr>

                </table>

                <div class="amount_icon01">
                    <img src="${pageContext.request.contextPath}/resources/img/freegolf/02plus.png">
                </div>

                <div class="amount_icon02">
                    <img src="${pageContext.request.contextPath}/resources/img/freegolf/02plus.png">
                </div>

                <div class="amount_icon03">
                    <img src="${pageContext.request.contextPath}/resources/img/freegolf/02plus.png">
                </div>

                <div class="amount_icon04">
                    <img src="${pageContext.request.contextPath}/resources/img/freegolf/ikor.png">
                </div>

            </div><!--총 이용금액-->

            <div class="booker01">

                <div class="booker_tit01">
                    <p>예약자정보</p>
                    <p>※ 예약자도 여행자에 포함</p>
                    <input type="checkbox" id="booker">
                </div>

                <table class="booker_table01" cellpadding="0" cellspacing="0">

                    <tr>
                        <td><span>*</span> 이름</td>
                        <td>홍길동</td>
                        <td><span>*</span> 성별</td>
                        <td>
                            <select id="gender">
                                <option>선택</option>
                                <option>남</option>
                                <option>여</option>
                            </select>
                        </td>
                        <td><span>*</span> 이메일</td>
                        <td>an20o0@naver.com</td>
                        <td><span>*</span> 휴대폰</td>
                        <td>010-1111-1111</td>
                    </tr>

                </table>

            </div><!--01-->

            <div class="booker_line01"></div>

            <div class="booker02">

                <div class="booker_tit02">
                    <p>예약자정보 01</p>
                </div>

                <table class="booker_table02" cellpadding="0" cellspacing="0">

                    <tr>
                        <td><span>*</span> 이름</td>
                        <td>홍길동</th>
                        <td><span>*</span> 성별</td>
                        <td>
                            <select id="gender">
                                <option>선택</option>
                                <option>남</option>
                                <option>여</option>
                            </select>
                        </td>
                        <td><span>*</span> 이메일</td>
                        <td>an20o0@naver.com</td>
                        <td><span>*</span> 휴대폰</td>
                        <td>010-1111-1111</td>
                    </tr>

                </table>

            </div><!--02-->

            <div class="booker03">

                <div class="booker_tit03">
                    <p>예약자정보 02</p>
                </div>

                <table class="booker_table03" cellpadding="0" cellspacing="0">

                    <tr>
                        <td><span>*</span> 이름</td>
                        <td>홍길동</th>
                        <td><span>*</span> 성별</td>
                        <td>
                            <select id="gender">
                                <option>선택</option>
                                <option>남</option>
                                <option>여</option>
                            </select>
                        </td>
                        <td><span>*</span> 이메일</td>
                        <td>an20o0@naver.com</td>
                        <td><span>*</span> 휴대폰</td>
                        <td>010-1111-1111</td>
                    </tr>

                </table>

            </div><!--03-->

            <div class="booker_line02"></div>

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
                        <p>+ 예약 후 항공 좌석 및 호텔 숙박 가능 여부 담당자에게 재확인 부탁
                            드립니다.</p>
                    </div>

                    <div class="agree01">
                        <p>동의합니다.</p>
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
                        <p>동의합니다.</p>
                        <input type="checkbox" id="cancellation_chk">
                    </div>


                </div><!--right-->


            </div><!--notice-->
<%-- 
            <div class="total">
                <p>총 결제 금액</p>
                <p>640,000원 <span>(2인 요금)</span></p>
            </div>
--%>

            <div class="btn">
                <input type="submit" value="예약" id="btn01">
                <input type="submit" value="취소" id="btn02">
            </div>



        </div><!--detail-->

    </section><!--detail_box-->

</body>
</html>