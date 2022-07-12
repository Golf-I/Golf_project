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
    <link href="${pageContext.request.contextPath}/resources/css/membership.css" rel="stylesheet">
</head>
<body>

	<section>

        <div class="membership">

            <div class="membership_left">

                <div class="menu_m">

                    <div>
                        <p>회원권/아카데미</p>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/img/member/membership/location.png">
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


            <div class="membership_right">

                <div class="rout_m">

                    <div>
                        <img src="${pageContext.request.contextPath}/resources/img/member/membership/find.png">
                    </div>

                    <p>></p>

                    <p>회원권/아카데미</p>

                    <p>></p>

                    <p>회원권</p>

                </div>

                <p>회원권</p>

                <div class="line01"></div>

                <div class="product01">

					<c:forEach items="${membershipList}" var="membershipList">
					<a href="membership_detail?no=${membershipList.no}">
						
						<div class="box01">
						    <div>
						        <p>가격</p>
						        <p><fmt:formatNumber value="${membershipList.price}" pattern="#,###" />원</p>
<!-- 						        <p>12,000,000원</p> -->
						    </div>
						    <div>
						        <img src="${pageContext.request.contextPath}/resources/img/member/membership/01academy.png">
						     </div>
						</div><!-- box01 -->
					</a>
					</c:forEach>
	
                </div>	
<%--                     <a href="#">

                        <div class="box02">

                            <div>
                                <p>가격</p>
                                <p>12,000,000원</p>
                            </div>

                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/member/membership/02academy.png">
                            </div>
                        </div>

                    </a>

                    <a href="#">

                        <div class="box03">

                            <div>
                                <p>가격</p>
                                <p>12,000,000원</p>
                            </div>

                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/member/membership/03academy.png">
                            </div>
                        </div>

                    </a> 

                </div> --%>

                <%-- <div class="product02">

                    <a href="#">

                            <div class="box04">

                                <div>
                                    <p>가격</p>
                                    <p>12,000,000원</p>
                                </div>
    
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/member/membership/01academy.png">
                                </div>
                            </div>

                    </a>

                    <a href="#">

                        <div class="box05">

                            <div>
                                <p>가격</p>
                                <p>12,000,000원</p>
                            </div>

                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/member/membership/02academy.png">
                            </div>
                        </div>

                    </a>

                    <a href="#">

                        <div class="box06">

                            <div>
                                <p>가격</p>
                                <p>12,000,000원</p>
                            </div>

                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/member/membership/03academy.png">
                            </div>
                        </div>

                    </a>

                </div>

                <div class="product03">

                    <a href="#">

                            <div class="box07">

                                <div>
                                    <p>가격</p>
                                    <p>12,000,000원</p>
                                </div>
    
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/img/member/membership/01academy.png">
                                </div>
                            </div>

                    </a>

                    <a href="#">

                        <div class="box08">

                            <div>
                                <p>가격</p>
                                <p>12,000,000원</p>
                            </div>

                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/member/membership/02academy.png">
                            </div>
                        </div>

                    </a>

                    <a href="#">

                        <div class="box09">

                            <div>
                                <p>가격</p>
                                <p>12,000,000원</p>
                            </div>

                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/member/membership/03academy.png">
                            </div>
                        </div>

                    </a>

                </div> --%>

            </div>
            
            
           	<%-- 페이징  --%>    
			<div class="num_btn">
			
				<c:if test="${pageMaker.totalCount != 1 && pageMaker.totalCount != 0}">
					<a href="membership?page=${pageMaker.startPage}"><p>&lt;&lt;</p></a>
				</c:if>
				
				<c:if test="${pageMaker.prev}">
					<a href="membership?page=${pageMaker.startPage-1}"><p>&lt;</p></a>
				</c:if>
				
				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="p">
					<a href="membership?page=${p}" style="color:red;"><p>${p}</p></a>    
				</c:forEach>
				
				<c:if test="${pageMaker.next && pageMaker.endPage>0}">
					<a href="membership?page=${pageMaker.endPage+1}"><p>&gt;</p></a>
				</c:if>

				<c:if test="${pageMaker.totalCount != 1 && pageMaker.totalCount != 0}">
					<a href="membership?page=${pageMaker.endPage}"><p>&gt;&gt;</p></a>
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
                    </a> -->
                
        </div>

    </section>

</body>
</html>