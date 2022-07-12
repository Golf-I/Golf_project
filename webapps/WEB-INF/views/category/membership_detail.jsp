<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>membership</title>
    <link href="${pageContext.request.contextPath}/resources/css/membership_detail.css" rel="stylesheet">
</head>
<body>

    <section>

        <div class="membership_detail">

            <div class="route_md">

                <a href="index">
                    <img src="${pageContext.request.contextPath}/resources/img/member/membership/home.png">
                </a>

                <p>></p>

                <a href="membership">
                    <p>회원권</p>
                </a>

            </div>

            <p>골프 회원권</p>

            <div class="line01"></div>

			<c:forEach items="${membershipList}" var="membershipList">

            <div class="title_md">
            	<p><span>&lt;${membershipList.region}&gt;</span> [${membershipList.city}] ${membershipList.golfcourse}</p>
<!--            <p><span><베트남></span> [하노이] 치린스타 컨트리클럽 CHI LINH STAR GOLF & COUNTRY CLUB</p> -->
            </div>

			 <div class="golf_course">

                <p>골프장 및 회원권 정보</p>

                <table cellpadding="0" cellspacing="0">

                    <tr>

                        <td>
                            <p>골프장명</p>
                        </td>

                        <td>
                            <p>${membershipList.golfcourse}</p>
<!--                             <p>치린스타 컨트리골프</p> -->
                        </td>

                        <td>
                            <p>홀수</p>
                        </td>

                        <td>
                            <p>${membershipList.hall}홀</p>
<!--                             <p>27홀</p> -->
                        </td>


                    </tr>

                    <tr>

                        <td>
                            <p>개장일</p>
                        </td>

                        <td>
                            <p>${membershipList.open}</p>
<!--                             <p>2003-10-14</p> -->
                        </td>

                        <td>
                            <p>회원수</p>
                        </td>

                        <td>
                            <p>${membershipList.members}</p>
<!--                             <p>1200</p> -->
                        </td>


                    </tr>

                    <tr>

                        <td>
                            <p>주소</p>
                        </td>

                        <td colspan="3">

                            <div class="map">

                                <p>${membershipList.address}</p>
<!--                                 <p>Thai Hoc, Chi Linh District, Sao Do town, Hai Duong Province</p> -->

                                <a href="https://www.google.co.kr/maps/search/${membershipList.address}" target="_blank">
                                    <p>지도보기</p>
                                </a>

                            </div>

                        </td>

                    </tr>

                    <tr>

                        <td>
                            <p>회원권 종류</p>
                        </td>

                        <td>
                            <p>${membershipList.type}</p>
<!--                             <p>4인 무기명</p> -->
                        </td>

                        <td>
                            <p>회원권 가격</p>
                        </td>

                        <td>
                            <p><fmt:formatNumber value="${membershipList.price}" pattern="#,###" />원</p>
<!--                             <p>120,000,000 원</p> -->
                        </td>


                    </tr>

                    <tr>

                        <td>
                            <p>골프장 소개</p>
                        </td>

                        <td colspan="3">

                            <div class="introduce">

								<p>${membershipList.introduce}</p>
<!--                                 <p>규모는 27홀 파 72/36(7,038야드)로 코스디자인을 호주의 유명한 IGCS사에서 최고의 라운딩 조건을 만들기 위해 페어웨이의 잔디를 Wintergreen Bermuda로 짤고 그린은 Tiff Eagle잔디를 사용하였으며 
                                                                순백색 모래 벙커와 주위를 둘러싼 넓은 호수와 언덕의 아름다운 경치를 생각하였다고 합니다.</p> -->

                            </div>

                        </td>

                    </tr>

                    <tr>

                        <td>
                            <p>특징 및 특이사항</p>
                        </td>

                        <td colspan="3">
                            <p>${membershipList.uniqueness}</p>
                        </td>

                    </tr>

                    <tr>

                        <td>
                            <p>웹사이트</p>
                        </td>

                        <td colspan="3">

                            <div class="web">

                                <p>${membershipList.web}</p>
<!--                                 <p>https://chilinhgolf.com/</p> -->

                                <a href="${membershipList.web}" target="_blank">
                                    <p>바로가기</p>
                                </a>

                            </div>

                        </td>

                    </tr>


                </table>

            </div>

			</c:forEach>
			
			
            <div class="fee">

                <p>그린피 및 이용료</p>

                <table cellpadding="0" cellspacing="0">

                    <tr>

                        <td>
                            <p>구분</p>
                        </td>

                        <td>
                            <p>비회원</p>
                        </td>

                        <td>
                            <p>정회원</p>
                        </td>

                        <td>
                            <p>지정인01</p>
                        </td>

                        <td>
                            <p>지정인02</p>
                        </td>

                        <td>
                            <p>지정인03</p>
                        </td>

                        <td>
                            <p>주중정회원</p>
                        </td>

                        <td>
                            <p>주말정회원</p>
                        </td>
                    </tr>

                    <tr>

                        <td>
                            <p>주중</p>
                        </td>

                        <td>
<!--                             <p>200,000</p> -->
                        </td>

                        <td>
<!--                             <p>128,000</p> -->
                        </td>

                        <td>
<!--                             <p>158,000</p> -->
                        </td>

                        <td>
<!--                             <p>0</p> -->
                        </td>

                        <td>
<!--                             <p>0</p> -->
                        </td>

                        <td>
<!--                             <p>0</p> -->
                        </td>

                        <td>
<!--                             <p>0</p> -->
                        </td>

                    </tr>

                    <tr>

                        <td>
                            <p>토요일</p>
                        </td>

                        <td>
<!--                             <p>270,000</p> -->
                        </td>

                        <td>
<!--                             <p>168,000</p> -->
                        </td>

                        <td>
<!--                             <p>230,000</p> -->
                        </td>

                        <td>
<!--                             <p>0</p> -->
                        </td>

                        <td>
<!--                             <p>0</p> -->
                        </td>

                        <td>
<!--                             <p>0</p> -->
                        </td>

                        <td>
<!--                             <p>0</p> -->
                        </td>

                    </tr>

                    <tr>

                        <td>
                            <p>일요일/공휴일</p>
                        </td>

                        <td>
<!--                             <p>270,000</p> -->
                        </td>

                        <td>
<!--                             <p>168,000</p> -->
                        </td>

                        <td>
<!--                             <p>230,000</p> -->
                        </td>

                        <td>
<!--                             <p>0</p> -->
                        </td>

                        <td>
<!--                             <p>0</p> -->
                        </td>

                        <td>
<!--                             <p>0</p> -->
                        </td>

                        <td>
<!--                             <p>0</p> -->
                        </td>

                    </tr>

                    <tr>
                        <td>
                            <p>특이사항</p>
                        </td>

                        <td colspan="7">

                            <div>
<!--                                 <p>◈ 2022년 그린피 횟수 제안 (연, 주말 6회 / 주중 12회) 횟수 초과시 정회원 준회원 요금, 준회원 비회원 요금적용</p>
                                <p>◈ 2022년 9월 부터 그린피 조정예정</p>
                                <p>- 정회원 주중 128,000 / 주말 168,000</p>
                                <p>- 지정인 주중 158,000 / 주말 230,000</p> -->
                            </div>

                        </td>
                    </tr>

					<c:forEach items="${membershipList}" var="membershipList">
                    <tr>
                        <td>
                            <p>캐디피</p>
                        </td>
                        <td colspan="3">
                            <p><fmt:formatNumber value="${membershipList.caddyfee}" pattern="#,###" /></p>
<!--                             <p>130,000</p> -->
                        </td>
                        <td>
                            <p>카트</p>
                        </td>
                        <td colspan="3">
                            <p><fmt:formatNumber value="${membershipList.cartfee}" pattern="#,###" /></p>
<!--                             <p>100,000</p> -->
                        </td>
                    </tr>
					</c:forEach>

                </table>
            </div><!--fee-->

			<div class="btn">

                <a href="membership">
                    <p>이전페이지</p>
                </a>

				<c:forEach items="${membershipList}" var="membershipList">
				<a href="javascript:open('consulting?no=${membershipList.no}&title=${membershipList.region}+ ${membershipList.city}+ ${membershipList.golfcourse}', 
						'상담신청', 'width=570, height=1000');">
                    <p>상담신청</p>
                </a>
				</c:forEach>

            </div>

        </div><!--membership_detail-->
    </section>
    
</body>
</html>