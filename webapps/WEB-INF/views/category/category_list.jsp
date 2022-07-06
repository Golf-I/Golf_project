<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>sub</title>
<link href="${pageContext.request.contextPath}/resources/css/sub.css"
	rel="stylesheet">
</head>
<body>

	<section class="sub">
	
	<div class="japen01"> 

		<div class="japen_menu">

			<div class="japen_title">
				<p>일본골프</p>
				<div>
					<img src="${pageContext.request.contextPath}/resources/img/category/location.png">
				</div>
			</div>

			<div class="menu01">
				<a href="#">
					<p>도쿄/간도</p>
					<p>></p>
				</a>
			</div>

			<div class="menu02">
				<a href="#">
					<p>오사카/간사이</p>
					<p>></p>
				</a>
			</div>

			<div class="menu03">
				<a href="#">
					<p>오키나와/나하</p>
					<p>></p>
				</a>
			</div>

			<div class="menu04">
				<a href="#">
					<p>후쿠오카/야마구치</p>
					<p>></p>
				</a>
			</div>

			<div class="menu05">
				<a href="#">
					<p>가고시마/미야자키</p>
					<p>></p>
				</a>
			</div>

			<div class="menu06">
				<a href="#">
					<p>구마모토/오이타</p>
					<p>></p>
				</a>
			</div>

			<div class="menu07">
				<a href="#">
					<p>나카사키/사가</p>
					<p>></p>
				</a>
			</div>

			<div class="menu08">
				<a href="#">
					<p>아오모리/니카타</p>
					<p>></p>
				</a>
			</div>

			<div class="menu09">
				<a href="#">
					<p>나고야/도카이</p>
					<p>></p>
				</a>
			</div>

			<div class="menu10">
				<a href="#">
					<p>오카야마/츄고쿠</p>
					<p>></p>
				</a>
			</div>

			<div class="menu11">
				<a href="#">
					<p>다카마츠/마츠야마</p>
					<p>></p>
				</a>
			</div>

			<div class="japen_free">
				<a href="freegolf">
					<img src="${pageContext.request.contextPath}/resources/img/category/free_japen.png">
				</a>
			</div>

		</div><!--left-->

		<div class="right">

			<div class="location">
				<div>
					<img src="${pageContext.request.contextPath}/resources/img/category/find.png">
				</div>

				<p>></p>

				<p>일본골프</p>

				<p>></p>

				<p>도쿄/간도</p>

				<p>></p>

				<p>총 15개 상품</p>

			</div>

			<div class="title_box">

				<div class="right_title">
					<p>도쿄/간도</p>
				</div><!--타이틀-->

				<div class="button_menu">
					<div class="all">
						<a href="#">
							<p>전체</p>
						</a>
					</div>

					<div class="incheon">
						<a href="#">
							<p>인천출발</p>
						</a>
					</div>

					<div class="gimhae">
						<a href="#">
							<p>김해출발</p>
						</a>
					</div>

					<div class="daegu">
						<a href="#">
							<p>대구출발</p>
						</a>
					</div>

					<select>
						<option>인기순</option>
						<option>높은가격순</option>
						<option>낮은가격순</option>
					</select>
				</div>
			</div><!--title_box-->


			<div class="line"></div>

			<div class="all_box">
				<div class="product_zon01">
				
					<%-- 게시물 노출 --%>
					<c:forEach items="${bbsList}" var="bbsList">
					
					<div class="product01">
						<a href="product_detail?product_code=${bbsList.product_code}">
							<div>
								<img src="${pageContext.request.contextPath}/resources/img/category/product01.png">
							</div>

					
							<div class="product_text_01">
								<p>${bbsList.arrival} 출발 ></p>
								<p>${bbsList.city}</p>
								<p>${bbsList.productName}</p>
								<p>${bbsList.lowestPrice} ~</p>
							</div>

							<div class="review_box_01">
								<div class="star01">
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/star.png">
									</div>
									<!-- <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div>
	                                <div>
	                                    <img src="${pageContext.request.contextPath}/resources/img/category/star.png">
	                                </div> -->
									<div>
										<img src="${pageContext.request.contextPath}/resources/img/category/02star.png">
									</div>
								</div>
								<!--star-->

								<div class="review01">

									<div class="talk01">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/talk.png">
										</div>
										<p>203</p>
									</div>

									<div class="like01">
										<div>
											<img src="${pageContext.request.contextPath}/resources/img/category/good.png">
										</div>
										<p>8.5</p>
									</div>

								</div><!--review01-->
							</div> <!--review_box_01-->
						</a>
					</div><!--product_01-->
 
					</c:forEach>
					<%-- 게시물 노출 --%>

				</div> <!--zon05--> 
			</div> <!--all_box-->

				<%-- 페이징  --%>    
				<div class="number_btn">

					<a href="category?page=${pageMaker.startPage}"><p>&lt;&lt;</p></a>
					
					<c:if test="${pageMaker.prev}">
					<a href="category?page=${pageMaker.startPage-1}"><p>&lt;</p></a>
					</c:if>
					
                    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="p">
                 		<a href="category?page=${p}" style="color: red;"><p>${p}</p></a>    
                    </c:forEach>

					<c:if test="${pageMaker.next && pageMaker.endPage>0}">
					<a href="category?page=${pageMaker.endPage+1}"><p>&gt;</p></a>
					</c:if>
					
					<a href="category?page=${pageMaker.endPage}"><p>&gt;&gt;</p></a>

				</div>
				<%-- 페이징  --%>
				
				
			</div><!--right-->
		</div>
	</section>

</body>
</html>