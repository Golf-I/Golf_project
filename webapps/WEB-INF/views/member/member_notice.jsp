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

                </table>

           	    <%-- 페이징  --%>    
                <div class="num_btn">
				
					<a href="notice?page=${pageMaker.startPage}"><p>&lt;&lt;</p></a>
					
                    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="p">
                   		<a href="notice?page=${p}"><p>${p}</p></a>    
                    </c:forEach>
					
					<a href="notice?page=${pageMaker.endPage}"><p>&gt;&gt;</p></a>

                </div><!-- class="num_btn" -->
           	   <%-- 페이징  --%>

            </div><!--right-->

        </div><!--notic-->

    </section>

</body>
</html>