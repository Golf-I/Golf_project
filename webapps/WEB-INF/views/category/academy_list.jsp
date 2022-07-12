<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>academy</title>
    <link href="${pageContext.request.contextPath}/resources/css/academy.css" rel="stylesheet">
</head>
<body>

	<section>

        <div class="academy">

            <div class="academy_left">

                <div class="menu_a">

                    <div>
                        <p>회원권/아카데미</p>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/img/academy/location.png">
                        </div>
                    </div>

                <ul>

                    <a href="membership">
                        <li>
                            <p>회원권</p>
                            <p>></p>
                        </li>
                    </a>

                    <a href="academy">
                        <li>
                            <p>아카데미</p>
                            <p>></p>
                        </li>
                    </a>

                </ul>


                </div>

            </div>


            <div class="academy_right">

                <div class="rout_a">

                    <div>
                        <img src="${pageContext.request.contextPath}/resources/img/academy/find.png">
                    </div>

                    <p>></p>

                    <p>회원권/아카데미</p>

                    <p>></p>

                    <p>아카데미</p>

                </div>

                <p>아카데미(전지훈련)</p>

                <div class="line01"></div>

                
                <div class="product01">

	                <c:forEach items="${academyList}" var="academyList">
                    <a href="academy_detail?no=${academyList.no}">
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/img/academy/01academy.png">
                        </div>
                    </a>
	                </c:forEach>

                </div>

                
                
<%--                     <a href="#">
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/img/academy/02academy.png">
                        </div>
                    </a>

                    <a href="#">
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/img/academy/03academy.png">
                        </div>
                    </a> --%>


                <%-- <div class="product02">

                    <a href="#">
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/img/academy/01academy.png">
                        </div>
                    </a>

                    <a href="#">
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/img/academy/02academy.png">
                        </div>
                    </a>

                    <a href="#">
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/img/academy/03academy.png">
                        </div>
                    </a>

                </div>

                <div class="product03">

                    <a href="#">
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/img/academy/01academy.png">
                        </div>
                    </a>

                    <a href="#">
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/img/academy/02academy.png">
                        </div>
                    </a>

                    <a href="#">
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/img/academy/03academy.png">
                        </div>
                    </a>

                </div> --%>

            </div>
            

           	<%-- 페이징  --%>    
			<div class="num_btn">
			
				<c:if test="${pageMaker.totalCount != 1 && pageMaker.totalCount != 0}">
					<a href="academy?page=${pageMaker.startPage}"><p>&lt;&lt;</p></a>
				</c:if>
				
				<c:if test="${pageMaker.prev}">
					<a href="academy?page=${pageMaker.startPage-1}"><p>&lt;</p></a>
				</c:if>
				
				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="p">
					<a href="academy?page=${p}" style="color:red;"><p>${p}</p></a>    
				</c:forEach>
				
				<c:if test="${pageMaker.next && pageMaker.endPage>0}">
					<a href="academy?page=${pageMaker.endPage+1}"><p>&gt;</p></a>
				</c:if>

				<c:if test="${pageMaker.totalCount != 1 && pageMaker.totalCount != 0}">
					<a href="academy?page=${pageMaker.endPage}"><p>&gt;&gt;</p></a>
				</c:if>

			</div><!-- class="num_btn" -->
			<%-- 페이징  --%>


<!--                     <a href="#">
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
                    
                </div> -->

        </div><!--academy-->

    </section>

</body>
</html>