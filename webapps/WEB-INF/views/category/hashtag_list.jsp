<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, minimum-scale=1.0, user-scalable=no">
    <title>hashtag</title>
	<link href="${pageContext.request.contextPath}/resources/css/hashtag.css" rel="stylesheet">
</head>
<body>

	<section class="hashtag_box">

	<div class="home_box">
		<a href="index"> 
			<img src="${pageContext.request.contextPath}/resources/img/hashtag/home.png">
		</a>

		<p>></p>

		<p>#해시태그</p>

		<p>></p>

		<p>총 15개 상품</p>
	</div>

	<div class="hashtag_title">
		<div class="title">
			<p>#코로나무격리</p>
		</div>

		<div class="chk_btn">
			<a href="#">
				<p>전체</p>
			</a> <a href="#">
				<p>인천출발</p>
			</a> <a href="#">
				<p>김해출발</p>
			</a> <a href="#">
				<p>대구출발</p>
			</a>
			
			<select>
				<option value="best">인기순</option>
				<option value="high">높은가격순</option>
				<option value="row">낮은가격순</option>
			</select>
		</div>
	</div>
	<!--title-->

	<div class="line_bottom"></div>

	<div class="hashtag">

		<div class="hashtag_01">

			<a href="#">
			
				<div class="product01">
				
					<div>
						<img src="${pageContext.request.contextPath}/resources/img/hashtag/product01.png">
					</div>
					
					<div class="product_txt01">
						<p>인천출발 ></p>
						<p>대만/타이페이</p>
						<p>타이페이 VIP 골프 3박 4일</p>
						<p>999,000원~</p>
					</div><!--txt-->
					
					<div class="review_box01">
						<div class="star01">
							<div>
								<img src="${pageContext.request.contextPath}/resources/img/hashtag/star.png">
							</div>
							<!-- <div><img src="${pageContext.request.contextPath}/resources/img/hashtag/star.png"></div>
                            <div><img src="${pageContext.request.contextPath}/resources/img/hashtag/star.png"></div>
                            <div><img src="${pageContext.request.contextPath}/resources/img/hashtag/star.png"></div> -->
							<div>
								<img src="${pageContext.request.contextPath}/resources/img/hashtag/02star.png">
							</div>
						</div>

						<div class="grade01">
							<div class="review01">
								<div>
									<img src="${pageContext.request.contextPath}/resources/img/hashtag/talk.png">
								</div>
								<p>203</p>
							</div>

							<div class="good01">
								<div>
									<img src="${pageContext.request.contextPath}/resources/img/hashtag/good.png">
								</div>
								<p>8.5</p>
							</div>
						</div>
					</div>
				</div><!--상품01-->
			</a>
		
	</div><!--hashtag-->


		<div class="number_btn">
	
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
	
	</section><!--box-->
	
    <div class="freedom">

       <div class="title_freegolf">

           <p><span>지</span>역별 자유골프 만들기</p>
           <p>고객이 직접 골프장, 호텔, 렌터카, 기타 등등을<br>만들어 보세요.</p>

       </div>

       <div class="country">
           <div><a href="freegolf?region=일본">일본 자유골프→</a></div>
           <div><a href="freegolf?region=태국">태국 자유골프→</a></div>
           <div><a href="freegolf?region=베트남">베트남 자유골프→</a></div>
           <div><a href="freegolf?region=대만">대만 자유골프→</a></div>
       </div>
       
   </div> <!--자유골프-->
   
   
   
   <!-- 모바일 -->
   <section class="mobile">

        <div class="rout_m">

            <a href="index">
                <p>←</p>
            </a>
    
            <p>#해시태그</p>
    
            <div class="rout_icon_m">
    
                <a href="index">
                    <img src="${pageContext.request.contextPath}/resources/img/home_m.png">
                </a>
    
    			<c:choose>
					<%-- 로그인 했을 때 --%>
					<c:when test="${sessionScope.id != null}">
		                <a href="mypage_pre">
		                    <img src="${pageContext.request.contextPath}/resources/img/login_mobile.png">
		                </a>
					</c:when>
					
					<%-- 로그인 안했을 때 --%>
					<c:otherwise>
		                <a href="login">
		                    <img src="${pageContext.request.contextPath}/resources/img/login_mobile.png">
		                </a>
					</c:otherwise>    
				</c:choose>
    
            </div>

        </div>

        <div class="hastag_line_01"></div>


        <div class="hastag_title_m">
            <p>#코로나무격리</p>
        </div>

        <div class="hastag_line_m_box">
            <div></div>
            <div></div>
        </div>

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
                        <img src="${pageContext.request.contextPath}/resources/img/hashtag/product01.png">
                    </div>

                    <div class="txt01_m">

                        <div>
                            <p>인천출발 ></p>
                            <p>태국/치앙마이</p>
                            <p>타이페이 VIP 골프 3박 4일</p>
                            <p>999,000원~</p>
                        </div>

                    </div>

                    <div class="icon_m_01">

                        <div class="star_m_01">
                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/hashtag/star.png">
                            </div>
                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/hashtag/star.png">
                            </div>
                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/hashtag/star.png">
                            </div>
                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/hashtag/star.png">
                            </div>
                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/hashtag/star.png">
                            </div>
                        </div>

                        <div class="good_m_01">

                            <div>

                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/hashtag/talk.png">
                                </div>

                                <p>203</p>

                            </div>

                            <div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/hashtag/good.png">
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
                        <img src="${pageContext.request.contextPath}/resources/img/hashtag/product02.png">
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
                                <img src="${pageContext.request.contextPath}/resources/img/hashtag/star.png">
                            </div>
                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/hashtag/star.png">
                            </div>
                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/hashtag/star.png">
                            </div>
                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/hashtag/star.png">
                            </div>
                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/hashtag/star.png">
                            </div>
                        </div>

                        <div class="good_m_02">

                            <div>

                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/hashtag/talk.png">
                                </div>

                                <p>203</p>
                                
                            </div>

                            <div>
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/hashtag/good.png">
                                </div>

                                <p>8.5</p>
                            </div>

                        </div>


                    </div>

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

        <div class="freegolf_m">

            <img src="${pageContext.request.contextPath}/resources/img/background_mobile.png">

            <div class="free_title_m">
                <p><span>지</span>역별 자유골프 만들기</p>
                <p>고객이 직접 골프장, 호텔, 렌터카, 기타 등등을<br>만들어 보세요!</p>
            </div>

            <div class="free_link_m">

				<a href="freegolf?region=일본">
				    <p>일본 자유골프</p>
				</a>
				
				<a href="freegolf?region=태국">
				    <p>태국 자유골프</p>
				</a>
				
				<a href="freegolf?region=베트남">
				    <p>베트남 자유골프</p>
				</a>
				
				<a href="freegolf?region=대만">
				    <p>대만 자유골프</p>
				</a>

            </div>

        </div>

</body>
</html>