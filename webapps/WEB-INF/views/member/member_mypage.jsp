<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	                <a href="#">
	                    <li>
	                        <p>프로필관리</p>
	                        <p>></p>
	                    </li>
	                </a>
	
	                <a href="#">
	                    <li>
	                        <p>예약리스트</p>
	                        <p>></p>
	                    </li>
	                </a>
	
	                <a href="#">
	                    <li>
	                        <p>공지사항</p>
	                        <p>></p>
	                    </li>
	                </a>
	
	                <a href="#">
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
	
	            <div class="line01"></div>
	
	            <input type="button" id="man">
	            <input type="button" id="woman">
	
	            <div class="profile_box">
	
	                <table cellpadding="0" cellspacing="0">
	
	                    <tr>
	                        <td>아이디</td>
	                        <td>
	                            <div class="id">
	                                <p>an20o0@naver.com</p>
	                                <a href="#">변경하기</a>
	                            </div>
	                        </td>
	                        <td>생년월일</td>
	                        <td>
	                            <div class="birthday">
	                                <p>　</p>
	                                <p>년</p>
	                                <p>　</p>
	                                <p>월</p>
	                                <p>　</p>
	                                <p>일</p>
	                            </div>
	                        </td>
	                    </tr>
	
	                    <tr>
	                        <td>이름</td>
	                        <td>
	                            <div class="name">
	                                <p>　</p>
	                                <p>※ 개명하셨다면? 이름변경을 해 주세요.</p>
	                                <a href="#">변경하기</a>
	                            </div>
	                        </td>
	                        <td>성별</td>
	                        <td>
	                            <div class="gender">
	                                <label for="man">
	                                    <p>남자</p>
	                                </label>
	
	                                <label for="woman">
	                                    <p>여자</p>
	                                </label>
	                            </div>
	                        </td>
	                    </tr>
	
	                    <tr>
	                        <td>휴대폰</td>
	                        <td>
	                            <div class="phone">
	                                <p>　</p>
	                                <a href="#">변경하기</a>
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
	                                    <input type="password" size="12" maxlength="12" id="pw01">
	                                </div>
	
	                                <div class="password02">
	                                    <p>새 비밀번호</p>
	                                    <input type="password" size="12" maxlength="12" id="pw02">
	                                </div>
	
	                                <div class="password03">
	                                    <p>비밀번호 다시 입력</p>
	                                    <input type="password" size="12" maxlength="12" id="pw03">
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
	                                    <a href="#">&nbsp;전문보기 ></a>
	                                </div>
	
	                                <div class="reception02">
	                                    <p>광고성 정보 수신 철회함 22.01.15
	                                    ( <input type="checkbox" id="sns"> SMS, <input type="checkbox" id="mms"> MMS, <input type="checkbox" id="email"> 이메일, <input type="checkbox" id="push"> 푸시알림 ) / </p>
	                                    
	                                    <a href="#">&nbsp;전문보기 ></a>
	                                </div>
	
	                            </div>
	
	                        </td>                        
	                    </tr>
	
	                </table>
	
	                
	                <div class="button">
	
	                <input type="submit" value="변경" id="reservation">
	                <input type="reset" value="취소" id="cancellation">
	                <a href="#" id="delete_account"><p>회원탈퇴</p></a>
	
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
	
	        </div><!--right-->
	
	    </div>

    </section>

</body>
</html>