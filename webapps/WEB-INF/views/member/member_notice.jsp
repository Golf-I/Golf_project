<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>notice</title>
    <link href="${pageContext.request.contextPath}/resources/css/notice.css" rel="stylesheet">
</head>
<body>

     <section>

        <div class="notic">

            <div class="notic_left">
                <ul>
                    <li>
                        <p>마이페이지</p>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/img/notice/location.png">
                        </div>
                    </li>

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

            <div class="notic_right">

                <div class="notic_rout">

                    <div>
                        <img src="${pageContext.request.contextPath}/resources/img/notice/find.png">
                    </div>

                    <p>></p>

                    <p>마이페이지</p>

                    <p>></p>

                    <p>공지사항</p>

                </div>

                <p>공지사항</p>

                <div class="line01"></div>

                <table cellpadding="0" cellspacing="0">

                    <tr>

                        <td>
                            <p>번호</p>
                        </td>

                        <td>
                            <p>구분</p>
                        </td>

                        <td>
                            <p>제목</p>
                        </td>

                        <td>
                            <p>등록일</p>
                        </td>

                    </tr>
	
			
            	   <%-- 게시판 내용 --%>       
                   <c:forEach items="${bbsList}" var="bbsList">
                    <tr>
	                    <td>
	                        <p><a href="notice_detail?no=${bbsList.no}&title=${bbsList.title}">${bbsList.no}</a></p>
	                    </td>
	                    <td>
	                        <p>${bbsList.category}</p>
	                    </td>
	                    <td>
	                        <a href="notice_detail">
	                            <p><a href="notice_detail?no=${bbsList.no}&title=${bbsList.title}">${bbsList.title}</a></p>
	                        </a>
	                    </td>
	                    <td>
	                        <p><fmt:formatDate value="${bbsList.date}" /></p>
	                    </td>
                   </tr>
                   </c:forEach>
            	   <%-- 게시판 내용 --%>       
<!--
                    <tr>
                        
                        <td>
                            <p>14</p>
                        </td>

                        <td>
                            <p>일반</p>
                        </td>

            
                        <td>
                            <a href="#">
                                <p>5월 20일 베트남 하노이 썬라이즈CC 급모객</p>
                            </a>
                        </td>

                        <td>
                            <p>2021.05.01</p>
                        </td>


                    </tr>

                    <tr>
                        
                        <td>
                            <p>13</p>
                        </td>

                        <td>
                            <p>이벤트</p>
                        </td>

            
                        <td>
                            <a href="#">
                                <p>4월 제주도 하드블럭 요금표 입니다.</p>
                            </a>
                        </td>

                        <td>
                            <p>2021.05.01</p>
                        </td>


                    </tr>

                    <tr>
                        
                        <td>
                            <p>12</p>
                        </td>

                        <td>
                            <p>기획전</p>
                        </td>

            
                        <td>
                            <a href="#">
                                <p>3월 필리핀 골프 하드블럭 요금표 공유합니다.</p>
                            </a>
                        </td>

                        <td>
                            <p>2021.05.01</p>
                        </td>


                    </tr>

                    <tr>
                        
                        <td>
                            <p>11</p>
                        </td>

                        <td>
                            <p>기타</p>
                        </td>

            
                        <td>
                            <a href="#">
                                <p>5월 8일 제주 오라CC 급모객</p>
                            </a>
                        </td>

                        <td>
                            <p>2021.05.01</p>
                        </td>


                    </tr>

                    <tr>
                        
                        <td>
                            <p>10</p>
                        </td>

                        <td>
                            <p>서비스</p>
                        </td>

            
                        <td>
                            <a href="#">
                                <p>4월 제주도 하드블럭 요금표 입니다.</p>
                            </a>
                        </td>

                        <td>
                            <p>2021.05.01</p>
                        </td>


                    </tr>

                    <tr>
                        
                        <td>
                            <p>09</p>
                        </td>

                        <td>
                            <p>일반</p>
                        </td>

            
                        <td>
                            <a href="#">
                                <p>3월 필리핀 골프 하드블럭 요금표 공유합니다.</p>
                            </a>
                        </td>

                        <td>
                            <p>2021.05.01</p>
                        </td>


                    </tr>

                    <tr>
                        
                        <td>
                            <p>08</p>
                        </td>

                        <td>
                            <p>이벤트</p>
                        </td>

            
                        <td>
                            <a href="#">
                                <p>5월 8일 제주 오라CC 급모객</p>
                            </a>
                        </td>

                        <td>
                            <p>2021.05.01</p>
                        </td>


                    </tr>

                    <tr>
                        
                        <td>
                            <p>07</p>
                        </td>

                        <td>
                            <p>기획전</p>
                        </td>

            
                        <td>
                            <a href="#">
                                <p>4월 제주도 하드블럭 요금표 입니다.</p>
                            </a>
                        </td>

                        <td>
                            <p>2021.05.01</p>
                        </td>


                    </tr>

                    <tr>
                        
                        <td>
                            <p>06</p>
                        </td>

                        <td>
                            <p>기타</p>
                        </td>

            
                        <td>
                            <a href="#">
                                <p>3월 필리핀 골프 하드블럭 요금표 공유합니다.</p>
                            </a>
                        </td>

                        <td>
                            <p>2021.05.01</p>
                        </td>


                    </tr>

                    <tr>
                        
                        <td>
                            <p>05</p>
                        </td>

                        <td>
                            <p>서비스</p>
                        </td>

            
                        <td>
                            <a href="#">
                                <p>5월 8일 제주 오라CC 급모객</p>
                            </a>
                        </td>

                        <td>
                            <p>2021.05.01</p>
                        </td>


                    </tr>

                    <tr>
                        
                        <td>
                            <p>04</p>
                        </td>

                        <td>
                            <p>일반</p>
                        </td>

            
                        <td>
                            <a href="#">
                                <p>4월 제주도 하드블럭 요금표 입니다.</p>
                            </a>
                        </td>

                        <td>
                            <p>2021.05.01</p>
                        </td>


                    </tr>

                    <tr>
                        
                        <td>
                            <p>03</p>
                        </td>

                        <td>
                            <p>이벤트</p>
                        </td>

            
                        <td>
                            <a href="#">
                                <p>3월 필리핀 골프 하드블럭 요금표 공유합니다.</p>
                            </a>
                        </td>

                        <td>
                            <p>2021.05.01</p>
                        </td>


                    </tr>

                    <tr>
                        
                        <td>
                            <p>02</p>
                        </td>

                        <td>
                            <p>기획전</p>
                        </td>

            
                        <td>
                            <a href="#">
                                <p>5월 8일 제주 오라CC 급모객</p>
                            </a>
                        </td>

                        <td>
                            <p>2021.05.01</p>
                        </td>


                    </tr>

                    <tr>
                        
                        <td>
                            <p>01</p>
                        </td>

                        <td>
                            <p>기타</p>
                        </td>

            
                        <td>
                            <a href="#">
                                <p>3월 필리핀 골프 하드블럭 요금표 공유합니다.</p>
                            </a>
                        </td>

                        <td>
                            <p>2021.05.01</p>
                        </td>


                    </tr> -->


                </table>

                <div class="num_btn">

					<c:if test="${paging.startPage != 1 }">
						<a href="notice?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}"><p>&lt;</p></a>
					</c:if>
					
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
						<c:choose>
							<c:when test="${p == paging.nowPage }">
								<b>${p }</b>
							</c:when>
							<c:when test="${p != paging.nowPage }">
								<a href="notice?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
							</c:when>
						</c:choose>
					</c:forEach>
					
					<c:if test="${paging.endPage != paging.lastPage}">
						<a href="notice?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
					</c:if>

<!--                
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
-->

                </div><!-- class="num_btn" -->

            </div><!--right-->

        </div><!--notic-->

    </section>

</body>
</html>