<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, minimum-scale=1.0, user-scalable=no">
    <title>event01</title>
	<link href="${pageContext.request.contextPath}/resources/css/event01.css" rel="stylesheet">
</head>
<body>

    <section class="event_01">
	
		
        <div class="route">

            <a href="index">
                <img src="${pageContext.request.contextPath}/resources/img/event/home.png">
            </a>

            <p>></p>

            <p>이벤트/기획전</p>

            <p>></p>

            <p>총 ${total}개</p>
<!--             <p>총 15개</p> -->
        </div>


        <div class="title">
            <p>골프아이의 특별한 기획전&이벤트</p>
        </div>
        
        <div class="line01"></div>

        <div class="event_zon">

            <div class="event_box01">

        	<c:forEach items="${eventList}" var="eventList">

             <a href="event_detail?no=${eventList.no}">

                <div class="event01">

                    <div>
                        <img src="${pageContext.request.contextPath}/resources/img/event/event01.png">
                    </div>

                    <div class="txt_01">
                        
                        <p>이벤트 ></p>
                        <p>${eventList.title}</p>
                        <p>${eventList.regdate}</p>
<!--                         <p>50% 할인찬스!</p>
                        <p>#최대 24만원 할인찬스/세일홀릭</p> -->
                    </div>

                </div>

             </a>

			</c:forEach>
			
            </div><!--event_box01-->

        </div><!--event_zon-->


        <div class="number_btn">

			<c:if test="${pageMaker.totalCount != 1 && pageMaker.totalCount != 0}">
				<a href="event?page=${pageMaker.startPage}"><p>&lt;&lt;</p></a>
			</c:if>
			
			<c:if test="${pageMaker.prev}">
				<a href="event?page=${pageMaker.startPage-1}"><p>&lt;</p></a>
			</c:if>
			
			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="p">
				<a href="event?page=${p}" style="color:red;"><p>${p}</p></a>    
			</c:forEach>
			
			<c:if test="${pageMaker.next && pageMaker.endPage>0}">
				<a href="event?page=${pageMaker.endPage+1}"><p>&gt;</p></a>
			</c:if>

			<c:if test="${pageMaker.totalCount != 1 && pageMaker.totalCount != 0}">
				<a href="event?page=${pageMaker.endPage}"><p>&gt;&gt;</p></a>
			</c:if>

        </div>

    </section><!--event_01-->

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

		<input type="checkbox" id="menu_m">

	   <header class="header_m">
	
	       <label for="menu_m" class="menu_m">
	           <img src="${pageContext.request.contextPath}/resources/img/member/membership/menu_btn.png">
	       </label>
	
            <div class="rout_m">
                <p>이벤트/기획전</p>
            </div>
	
	       <div class="header_button">
	
				<div class="main_m">
					<a href="index">
						<img src="${pageContext.request.contextPath}/resources/img/home_m.png">
					</a>
				</div>
				
				<c:choose>
					<%-- 로그인 했을 때 --%>
					<c:when test="${sessionScope.id != null}">
			           <div class="login_m">
			               <a href="mypage_pre">
			                   <img src="${pageContext.request.contextPath}/resources/img/login_mobile.png">
			               </a>
			           </div>
					</c:when>
					
					<%-- 로그인 안했을 때 --%>
					<c:otherwise>
			           <div class="login_m">
			               <a href="login">
			                   <img src="${pageContext.request.contextPath}/resources/img/login_mobile.png">
			               </a>
			           </div>
					</c:otherwise>    
				</c:choose>
	
	       </div>
	
	
	       <div class="lnb_mobile">
	
	
	           <div class="gnb_mobile">
	
	               <ul>
	
	
				<c:choose>
					<%-- 로그인 했을 때 --%>
					<c:when test="${sessionScope.id != null}">
					</c:when>
					
					<%-- 로그인 안했을 때 --%>
					<c:otherwise>
						<li>
						    <a href="login">
						        <p>로그인</p>
						    </a>
						</li>
						
						<li>
						    <div></div>
						</li>
					</c:otherwise>    
				</c:choose>
				
	                  <li>
	                      <a href="#">
	                          <p>즐겨찾기</p>
	                      </a>
	                  </li>
	
	                  <li>
	                      <div></div>
	                  </li>
				
				
						<li>
				<c:choose>
					<%-- 로그인 했을 때 --%>
					<c:when test="${sessionScope.id != null}">
		                 <a href="mypage_pre">
		                     <p>예약확인</p>
		                 </a>
					</c:when>
				
					<%-- 로그인 안했을 때 --%>
					<c:otherwise>
		                <a href="login">
		                    <p>예약확인</p>
		                </a>
					</c:otherwise>
				</c:choose>
				        </li>
				        
				
				<c:choose>
					<%-- 로그인 했을 때 --%>
					<c:when test="${sessionScope.id != null}">
							<li>
							    <div></div>
							</li>
							
							<li>
							    <a href="member/signout">
							        <p>로그아웃</p>
							    </a>
							</li>
					</c:when>
					
					<%-- 로그인 안했을 때 --%>
					<c:otherwise>
					</c:otherwise>
				</c:choose>
				
				
				<c:choose>
					<%-- 로그인 했을 때 --%>
					<c:when test="${sessionScope.id != null}">
						<li>
							<div></div>
						</li>
					
						<a href="mypage_pre">
							<li>
								<p>마이페이지</p>
							</li>
						</a>
					</c:when>
				
					<%-- 로그인 안했을 때 --%>
					<c:otherwise>
					</c:otherwise>
				</c:choose>
	
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
	                           <a href="category?region=일본&city=도쿄/간도">
	                               <li>
	                                   <p>도쿄/간도</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=일본&city=오사카/간사이">
	                               <li>
	                                   <p>오사카/간사이</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=일본&city=홋카이도/삿포로">
	                               <li>
	                                   <p>홋카이도/삿포로</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=일본&city=오키나와/나하">
	                               <li>
	                                   <p>오키나와/나하</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=일본&city=후쿠오카/야마구치">
	                               <li>
	                                   <p>후쿠오카/야마구치</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=일본&city=가고시마/미야자키">
	                               <li>
	                                   <p>가고시마/미야자키</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=일본&city=구마모토/오이타">
	                               <li>
	                                   <p>구마모토/오이타</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=일본&city=나카사키/사가">
	                               <li>
	                                   <p>나카사키/사가</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=일본&city=아오모리/니카타">
	                               <li>
	                                   <p>아오모리/니카타</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=일본&city=나고야/도카이">
	                               <li>
	                                   <p>나고야/도카이</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=일본&city=오카야마/츄고크">
	                               <li>
	                                   <p>오카야마/츄고쿠</p>
	                               </li>
	                           </a>
	
	
	                           <a href="category?region=일본&city=다카마츠/마츠야마">
	                               <li>
	                                   <p>다카마츠/마츠야마</p>
	                               </li>
	                           </a>
	
	
	                       </ul>
	
	                   </div><!--일본-->
	
	                   <div class="thailand_m">
	
	                       <ul>
	
	                           <a href="category?region=태국&city=방콕/파타야">
	                               <li>
	                                   <p>방콕/파타야</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=태국&city=치앙마이/치앙라이">
	                               <li>
	                                   <p>치앙마이/치앙라이</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=태국&city=푸켓">
	                               <li>
	                                   <p>푸켓</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=태국&city=칸차나부리/아유타야">
	                               <li>
	                                   <p>칸차나부리/아유타야</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=태국&city=후아힌">
	                               <li>
	                                   <p>후아힌</p>
	                               </li>
	                           </a>
	
	           
	                       </ul>
	
	                   </div><!--태국-->
	
	                   <div class="vietnam_m">
	
	                       <ul>
	
	                           <a href="category?region=베트남&ciry=나트랑">
	                               <li>
	                                   <p>나트랑</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=베트남&ciry=푸꾸옥">
	                               <li>
	                                   <p>푸꾸옥</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=베트남&ciry=다낭">
	                               <li>
	                                   <p>다낭</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=베트남&ciry=하노이">
	                               <li>
	                                   <p>하노이</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=베트남&ciry=호치민">
	                               <li>
	                                   <p>호치민</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=베트남&ciry=달랏">
	                               <li>
	                                   <p>달랏</p>
	                               </li>
	                           </a>
	
	           
	                       </ul>
	
	                   </div><!--베트남-->
	
	                   <div class="taiwan_m">
	
	                       <ul>
	
	                           <a href="category?region=대만&city=가오슝">
	                               <li>
	                                   <p>가오슝</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=대만&city=타이중">
	                               <li>
	                                   <p>타이중</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=대만&city=타이페이">
	                               <li>
	                                   <p>타이페이</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=대만&city=신축">
	                               <li>
	                                   <p>신죽</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=대만&city=타오위안">
	                               <li>
	                                   <p>타오위안</p>
	                               </li>
	                           </a>
	
	                           <a href="category?region=대만&city=이란/화련">
	                               <li>
	                                   <p>이란/화련</p>
	                               </li>
	                           </a>
	
	           
	                       </ul>
	
	                   </div><!--타이완-->
	
	                   <div class="event_m">
	
	                       <ul>
	                           <a href="event">
	                               <li>
	                                   <p>기획전/이벤트</p>
	                               </li>
	                           </a>
	                       </ul>
	
	                   </div><!--이벤트-->
	
	                   <div class="academy_m">
	
	                       <ul>
	                           <a href="membership">
	                               <li>
	                                  <p>회원권</p>
	                               </li>
	                           </a>
	
	                           <a href="academy">
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



        <div class="event_line_m_01"></div>

        <div class="title_event_m">
            <p>골프아이의 특별한 기획전&이벤트</p>
        </div>

        <div class="line_mobile">
            <div></div>
            <div></div>
        </div>
        
        <div class="num_title_m">
            <p>총 15개</p>
        </div>

        <div class="event_box_m">

            <a href="#">

                <div class="event01_m">

                    <div>
                        <img src="${pageContext.request.contextPath}/resources/img/event/event01.png">
                    </div>

                    <div class="txt_m_01">
                        <p>이벤트 ></p>
                        <p>50% 할인찬스!</p>
                        <p>#최대 24만원 할인찬스/세일홀릭</p>
                    </div>

                </div>

            </a>

            <a href="#">

                <div class="event02_m">

                    <div>
                        <img src="${pageContext.request.contextPath}/resources/img/event/event02.png">
                    </div>

                    <div class="txt_m_02">
                        <p>기획전 ></p>
                        <p>골프아이 프로모션!</p>
                        <p>#프로모션/한 눈에 확인해보세요.</p>
                    </div>

                </div>
                
            </a>

        </div>
        
        <br/>
        
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
        
        <br/><br/>

        <div class="freegolf_m">

            <img src="${pageContext.request.contextPath}/resources/img/event/background_mobile.png">

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

    </section><!--mobile-->

</body>
</html>