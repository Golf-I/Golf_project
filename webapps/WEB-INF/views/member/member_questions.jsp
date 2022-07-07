<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>questions</title>
    <link href="${pageContext.request.contextPath}/resources/css/questions.css" rel="stylesheet">
</head>
<body>

   <section>

        <div class="questions">
    
            <div class="questions_left">
    
                <div class="questions_title01">
    
                    <p>마이페이지</p>
    
                    <div>
                        <img src="${pageContext.request.contextPath}/resources/img/questions/location.png">
                    </div>
    
                </div><!--title01-->
    
                <ul class="questions_menu">

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
    
    
            <div class="questions_right">

                <div class="route_qu">

                    <div>
                        <img src="${pageContext.request.contextPath}/resources/img/questions/find.png">
                    </div>

                    <p>></p>

                    <p>마이페이지</p>

                    <p>></p>

                    <p>자주묻는질문</p>

                </div><!--route-->

                <div class="questions_title02">


                    <div class="txt01">

                        <p>자주묻는질문</p>

                    </div>

                    <div class="select_box">

                        <div>

                        <select id="select_menu">

                            <option>전체</option>
                            <option>골프장</option>
                            <option>호텔</option>
                            <option>차량</option>

                        </select>

                        <input type="text" id="search_word" placeholder="검색어를 입력해주세요.">

                        <input type="button" id="search" value="검색">

                        </div>


                    </div><!--select_box-->


                </div><!--questions_title02-->

                <div class="line01"></div>

                <input type="checkbox" id="question01">
                <input type="checkbox" id="question02">
                <input type="checkbox" id="question03">
                <input type="checkbox" id="question04">
                <input type="checkbox" id="question05">
                <input type="checkbox" id="question06">
                <input type="checkbox" id="question07">
                <input type="checkbox" id="question08">
                <input type="checkbox" id="question09">
                <input type="checkbox" id="question10">
                <input type="checkbox" id="question11">
                <input type="checkbox" id="question12">

                <div class="question_box">

                    <ul>

						<c:forEach items="${bbsList}" var="bbsList">
                        <li>
                            <label for="question01" class="question01">
                                <p>Q</p>
                                
                                <p>${bbsList.title}</p>
							</label>

                            <div class="answer01">

                                <p>A</p>

                                <div>
                                    <p>${bbsList.contents}</p>
                                </div>

                            </div>

                        </li>
						</c:forEach>

                    </ul>

                </div>

           	    <%-- 페이징  --%>    
                <div class="num_chk">
<%-- 
					<a href="questions?page=${pageMaker.startPage}"><p>&lt;&lt;</p></a>
	 --%>				
					<c:if test="${pageMaker.prev}">
					<a href="questions?page=${pageMaker.startPage-1}"><p>&lt;</p></a>
					</c:if>
					
                    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="p">
                 		<a href="questions?page=${p}" style="color: red;"><p>${p}</p></a>    
                    </c:forEach>

					<c:if test="${pageMaker.next && pageMaker.endPage>0}">
					<a href="questions?page=${pageMaker.endPage+1}"><p>&gt;</p></a>
					</c:if>
<%-- 					
					<a href="questions?page=${pageMaker.endPage}"><p>&gt;&gt;</p></a>
 --%>            
                </div>
           	   <%-- 페이징  --%>

            </div><!--right-->
        
        </div>

	</section>
	
</body>
</html>