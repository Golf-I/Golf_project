<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>mypage</title>
    <link href="${pageContext.request.contextPath}/resources/css/mypage.css" rel="stylesheet">
</head>
<body>

   <section>

    <div class="mypage">

        <div class="mypage_left">

            <div class="mypage_title01">

                <p>마이페이지</p>

                <div>
                    <img src="${pageContext.request.contextPath}/resources/img/member/mypage/location.png">
                </div>

            </div><!--title01-->

            <ul class="mypage_menu">
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


        <div class="mypage_right">

            <div class="mypage_rout">
                <div>
                    <img src="${pageContext.request.contextPath}/resources/img/member/mypage/find.png">
                </div>
                <p>></p>
                <p>마이페이지</p>
                <p>></p>
                <p>프로필관리</p>
            </div>

			
            <p>내 프로필 관리</p>

			<form method="post" action="member/memInfoUpdate">

            <div class="line01"></div>
		
            <input type="radio" name="gender" id="man">

            <input type="radio" name="gender" id="woman">
				
			<c:choose>
			<%-- 남성일 때  --%>
             	<c:when test="${mvo.gender == 'male'}">
	            	<input type="radio" name="gender" id="man" value="male" checked>
	   	        	<input type="radio" name="gender" id="woman" value="female">
             	</c:when>
	              
			<%-- 여성일 때 --%>
            	<c:otherwise>
	            	<input type="radio" name="gender" id="man" value="male" >
	   	        	<input type="radio" name="gender" id="woman" value="female" checked>
            	</c:otherwise>
           </c:choose>

	

            <div class="profile_box">

                <table cellpadding="0" cellspacing="0">

                    <tr>
                        <td>아이디</td>
                        <td>
                            <div class="id">
                                <!-- <p>an20o0@naver.com</p> -->
                                <input type="text" value="${sessionScope.id}" name="id" readonly />
                                <!-- <a href="#">변경하기</a> -->
                            </div>
                        </td>
                        <td>생년월일 </td>
                        <td>
                        
                            <div class="birthday">
                                <!-- <input type="text" id="birthday01" size="4" maxlength="4" readonly> -->
                                <p id="yyyy"><fmt:formatDate value="${mvo.birth}" pattern="yyyy" />년</p>
                                <!-- <input type="text" id="birthday02" size="2" maxlength="2"> -->
                                <p id="MM"><fmt:formatDate value="${mvo.birth}" pattern="MM" />월</p>
                                <!-- <input type="text" id="birthday03" size="2" maxlength="2"> -->
                                <p id="dd"><fmt:formatDate value="${mvo.birth}" pattern="dd" />일</p>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td>이름</td>
                        <td>
                            <div class="name">
                                <input type="text" value="${mvo.name}" id="name_box" name="name" readonly>
                                <%-- <p>&nbsp; ${mvo.name}　</p> --%>
                                <p>※ 개명하셨다면 이름을 변경해주세요.</p>
                                <a href="mypage_name">변경하기</a>
<!--                            <a href="javascript:open('mypage_name');">변경하기</a> -->
                            </div>
                        </td>
                        <td>성별</td>
                        <td>
                            <div class="gender">
                                <label for="male">
                                    <p>남자</p>
                                </label>

                                <label for="female">
                                    <p>여자</p>
                                </label>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td>휴대폰</td>
                        <td>
                            <div class="phone">
                                <%-- <p> &nbsp; ${mvo.phone}</p> --%>
                                <input type="text" value="${mvo.phone}" name="phone" readonly>
                                <a href="mypage_phone">변경하기</a>
<!--                            <a href="javascript:open('mypage_phone');">변경하기</a> -->
                            </div>
                        </td>
                        <td colspan="2"></td>
                    </tr>

                    <tr>
                        <td>비밀번호변경</td>
                        <td>
                            <div class="password">
                                <div class="password01">
                                    <p>현재 비밀번호</p>
                                    <input type="password" size="12" maxlength="12" id="pw01" name="pw" required>
                                </div>

                                <div class="password02">
                                    <p>새 비밀번호</p>
                                    <input type="password" size="12" maxlength="12" id="pw02" name="newPw" required>
                                </div>

                                <div class="password03">
                                    <p>비밀번호 다시 입력</p>
                                    <input type="password" size="12" maxlength="12" id="pw03" name="pwcheck" required>
                                </div>
                            </div>
                        </td>
                        <td>캐릭터</td>
                        <td>
                            <div class="character">
                                <div></div>
                                <a href="#">변경하기</a>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td>수신설정</td>
                        <td colspan="3">

                            <div class="reception">

                                <div class="reception01">
                                    <p>마케팅 및 이벤트 목적의 개인정보 수집 및 이용 동의함 22.01.16 /</p>
                                    <a href="javascript:open('mypage_info');">&nbsp;전문보기 ></a>
                                </div>

                                <div class="reception02">
                                    <p>광고성 정보 수신 철회함 22.01.15
                                    (
	                                    <label for="sms">
		                                    <input type="checkbox" id="sms" name="sms"> SMS, 
	                                    </label>

                                    <c:choose>
                                    	<c:when test="${mvo.mms == 'on'}">
		                                    <label for="mms">
		                                    	<input type="checkbox" id="mms" name="mms" checked> MMS, 
		                                    </label>
                                    	</c:when>
                                    
                                    	<c:otherwise>
		                                    <label for="mms">
		                                    	<input type="checkbox" id="mms" name="mms"> MMS, 
		                                    </label>
                                    	</c:otherwise>
                                    </c:choose>
                                    
	
	                                <c:choose>
                                    	<c:when test="${mvo.mail == 'on'}">
		                                    <label for="email">
		                                    	<input type="checkbox" id="email" name="mail" checked> 이메일, 
	                                    	</label>
                                    	</c:when>
                                    
                                    	<c:otherwise>
		                                    <label for="email">
			                                    <input type="checkbox" id="email" name="mail"> 이메일, 
		                                    </label>
                                    	</c:otherwise>
                                    </c:choose>
                                       
	                                 
	                               <c:choose>
                                    	<c:when test="${mvo.push == 'on'}">
											<label for="push">
			                                    <input type="checkbox" id="push" name="push" checked> 푸시알림 ) 
		                                    </label>
                                    	</c:when>
                                    
                                    	<c:otherwise>
		                                    <label for="push">
			                                    <input type="checkbox" id="push" name="push" > 푸시알림 ) 
		                                    </label>
                                    	</c:otherwise>
                                   </c:choose>    
                                    

                                    / </p>
                                    
                                    <a href="javascript:open('mypage_ad');">&nbsp;전문보기 ></a>
                                </div>

                            </div>

                        </td>                        
                    </tr>

                </table>

                
                <div class="button">

                <input type="submit" value="변경" id="reservation">
                <input type="reset" value="취소" id="cancellation">
<!--                 <a href="javascript:open('mypage_secede');"><p>회원탈퇴</p></a> -->
                <a href="mypage_secede"><p>회원탈퇴</p></a>

                </div>


            </div>

            <div class="golf_course">

                <div class="course_title">
                    <p><span>골프아이</span>가 인증한 일본의 명품 골프장</p>
                    <p>명품 골프장에서 즐거운 라운딩을 누려보세요!</p>
                </div>

                <a href="#">
                    <img src="${pageContext.request.contextPath}/resources/img/member/mypage/01golfccourse.png">
                </a>

                <a href="#">
                    <img src="${pageContext.request.contextPath}/resources/img/member/mypage/02golfccourse.png">
                </a>

                <a href="#">
                    <img src="${pageContext.request.contextPath}/resources/img/member/mypage/03golfccourse.png">
                </a>

            </div>

		</form>

    </div>

    </section>

</body>
</html>