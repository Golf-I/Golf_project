<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, minimum-scale=1.0, user-scalable=no">
    <title>academy_detail</title>
    <link href="${pageContext.request.contextPath}/resources/css/academy_detail.css" rel="stylesheet">
</head>
<body>

	<section class="web">

        <div class="academy_detail">

            <div class="rout_ad">

                <a href="index">
                    <img src="${pageContext.request.contextPath}/resources/img/academy/home.png">
                </a>

                <p>></p>

                <a href="academy">
                    <p>아카데미</p>
                </a>

            </div>

            <p>아카데미(전지훈련)</p>

            <div class="line01"></div>


			<c:forEach items="${academyList}" var="academyList">
			
            <div class="title_ac">
                <p><span>&lt; ${academyList.title} &gt;</span></p>
<!--                 <p><span>[베트남 > 하노이]</span> 치린스타 컨트리 클럽 CHI LINH STAR GOLF & COUNTRY CLUB </p> -->
            </div>

            <div class="detail_img">
                <a href="#">
                    <img src="${pageContext.request.contextPath}/resources/img/academy/detail_event.png">
                </a>
            </div>

            <div class="golf_club">

                <div class="golf_club_box">
    
                    <div class="club01">
    
                        <div class="golf_img01">
                            <img src="${pageContext.request.contextPath}/resources/img/academy/01golf_img.png">
                        </div><!--img-->
    
                        <div class="club_txt_01">
    
                            <p>몽고메리 링크스 골프클럽</p>
    
                            <div class="golf_hashtag01">
                                <p>#시그니처6번홀</p>
                                <p>#전략적인코스공략</p>
                                <p>#바닷바람극복</p>
                            </div>
    
                            <p><span>Montgomerie Links는 세계 최고 수준의 골프 클럽으로 콜린 몽고메리가 설계하여 골프장의 그랜드 오픈 행사에 직접 참석</span>하기도 했습니다.<br>
                            PGA 골프 아카데미 등 종합 골프 연습 시설이 완비되어 있으며, 아시아에서 유일하게 몽고메리 브랜드를 사용하는 정규 18홀 코스입니다.</p>
    
                            <div class="golf_line01"></div>
    
                            <div class="golf_detail01">
                                <p>코스규모 : 18홀 규모</p>
                                <p>전동카트 : 2인 1카트</p>
                                <p>캐디운영 : 1인 1캐디</p>
                                <p>캐디운영 : 카트인 플레이 불가</p>
                                <p>연습시설 : 드라이빙레인지</p>
                            </div>
    
                            <a href="#">
                                <p>상품 보러가기 ></p>
                            </a>
    
                        </div><!--txt-->
    
                    </div><!-- club01-->
    
                    <div class="club02">
    
                        <div class="golf_img02">
                            <img src="${pageContext.request.contextPath}/resources/img/academy/02golf_img.png">
                        </div><!--img-->
    
                        <div class="club_txt_02">
    
                            <p>호이아나 쇼어 골프클럽</p>
    
                            <div class="golf_hashtag02">
                                <p>#링크스코</p>
                                <p>#신규골프장</p>
                                <p>#여유로운티타임간격</p>
                            </div>
    
                            <p><span>한적하고 평화로운 호이안 해변과 때묻지 않은 자연지형을 배경으로 라운드를 즐길 수 있습니다.</span><br>
                            무엇보다 15분 티타임 간격으로 프라이빗하고 여유롭게 골프를 즐길 수 있는 럭셔리 골프장입니다.</p>
    
                            <div class="golf_line02"></div>
    
                            <div class="golf_detail02">
                                <p>코스규모 : 18홀 규모</p>
                                <p>전동카트 : 2인 1카트</p>
                                <p>캐디운영 : 1인 1캐디</p>
                                <p>캐디운영 : 카트인 플레이 불가</p>
                                <p>연습시설 : 드라이빙레인지,어프로치연습장,퍼팅 연습장</p>
                            </div>
    
                            <a href="#">
                                <p>상품 보러가기 ></p>
                            </a>
    
                        </div><!--txt-->
    
                    </div><!--club02-->

                </div>
            </div>

                <div class="btn_ad">

                    <a href="academy">
                        <p>이전페이지</p>
                    </a>

                    <a href="javascript:open('consulting?no=${academyList.no}&title=${academyList.title}', 
                    '상담신청', 'width=570, height=1000');">
                        <p>상담신청</p>
                    </a>

                </div>

			</c:forEach>

        </div>

    </section>
    
    <!-- 모바일 -->
    <section class="mobile">

        <div class="rout_m">
    
            <a href="../academy/academy.html">
                <p>←</p>
            </a>
    
            <p>아카데미(전지훈련)</p>
    
            <div class="rout_icon_m">
    
                <a href="../index.html">
                    <img src="img/home_m.png">
                </a>
    
                <a href="#">
                    <img src="img/login_mobile.png">
                </a>
    
            </div>
    
        </div>
    
        <div class="academy_line_01"></div>
    
        <div class="academy_title_m">
            <p><span>[베트남>하노이]</span> 치린스타 컨트리 클럽 CHI LINH STAR GOLF & COUNTRY CLUB</p>
        </div>
    
        <div class="academy_line_02">
            <div></div>
            <div></div>
        </div>
    
        <div class="detail_m">
            <a href="#">
                <img src="img/detail_event.png">
            </a>
        </div>
    
        <div class="detail_box_m">
    
            <div class="golf_m_01">
    
                    <div>
                        <img src="img/01golf_img.png">
                    </div>
    
                    <div class="txt_m_01">
    
                        <p>몽고메리 링크스 골프 클럽</p>
    
                        <div class="hastag01_m">
                            
                            <div>
                                <p>#시그니처6번홀</p>
                            </div>
    
                            <div>
                                <p>#전략적인코스공략</p>
                            </div>
    
                            <div>
                                <p>#바닷바람극복</p>
                            </div>
    
                        </div>
    
                        <p><span>Montgomerie Links는 세계 최고 수준의 골프 클럽으로 콜린 몽고메리가 설계하여 골프장의 그랜드 오픈 행사에 직접 참석</span>하기도 했습니다.</p>
    
                        <p>PGA 골프 아카데미 등 종합 골프 연습 시설이 완비되어 있으며, 아시아에서 유일하게 몽고메리 브랜드를 사용하는 정규 18홀 코스입니다.</p>
    
                        <div class="golf_line_02"></div>
    
                        <p>
                            코스규모 : 18홀 규모<br>
    
                            전동카트 : 2인 1카트<br>
    
                            캐디운영 : 1인 1캐디<br>
    
                            캐디운영 : 카트인 플레이 불가<br>
    
                            연습시설 : 드라이빙레인지
                        </p>
    
                        <a href="#">
                            <p>상품 보러 가기></p>
                        </a>
    
                    </div>
    
           </div>
    
           <div class="golf_m_02">
    
                <div>
                    <img src="img/02golf_img.png">
                </div>
    
            <div class="txt_m_02">
    
                <p>호이아나 쇼어 골프클럽</p>
    
                <div class="hastag02_m">
                    
                    <div>
                        <p>#링크스코</p>
                    </div>
    
                    <div>
                        <p>#신규골프장</p>
                    </div>
    
                    <div>
                        <p>#여유로운티타임간격</p>
                    </div>
    
                </div>
    
                <p>한적하고 평화로운 호이안 해변과 때묻지 않은 자연지형을 배경으로 라운드를 즐길 수 있습니다.</p>
    
                <p>무엇보다 15분 티타임 간격으로 프라이빗하고 여유롭게 골프를 즐길 수 있는 럭셔리 골프장입니다.</p>
    
                <div class="golf_line_01"></div>
    
                <p>
                    코스규모 : 18홀 규모<br>
    
                    전동카트 : 2인 1카트<br>
    
                    캐디운영 : 1인 1캐디<br>
    
                    캐디운영 : 카트인 플레이 불가<br>
    
                    연습시설 : 드라이빙레인지,어프로치연습장,퍼팅 연습장
                </p>
    
                <a href="#">
                    <p>상품 보러 가기></p>
                </a>
    
            </div>
    
        </div>
    
    
        </div><!--detail_box-->
    
    
        <div class="academy_m_btn">
    
            <a href="../academy/academy.html">
                <p>이전페이지</p>
            </a>
    
            <a href="../consulting/consulting.html">
                <p>상담신청</p>
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
    
    </section> <!--모바일-->

</body>
</html>