<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="${pageContext.request.contextPath}/resources/css/pr.css" rel="stylesheet">
    <script	src="${pageContext.request.contextPath}/resources/js/promotion.js"></script>
</head>
<body>
    <section>

        <div class="menu">

            <a href="index">
                <img src="${pageContext.request.contextPath}/resources/img/pr/join_logo.png">
            </a>

            <a href="company">
                <p>회사소개</p>
            </a>

            <a href="terms-of-service">
                <p>이용약관</p>
            </a>

            <a href="privacy_policy">
                <p>개인정보처리방침</p>
            </a>

            <a href="travel-terms-and-conditions">
                <p>여행약관</p>
            </a>

            <a href="store">
                <p>입점문의</p>
            </a>

            <a href="promotion">
                <p>제휴/홍보문의</p>
            </a>

            <a href="wholesale">
                <p>홀세일문의</p>
            </a>


        </div>

        <div class="pr">

            <p>제휴/홍보문의</p>

			<form action="category/promotion" method="post" enctype="multipart/form-data" onsubmit="return formCheck();"> 
			
            <div class="information">

                <div class="left_inf">
                    <img src="${pageContext.request.contextPath}/resources/img/pr/img.png">
                </div>

                <div class="right_inf">

                    <div class="box01">

                        <p>골프아이는 전세계 골프장과 골퍼들을 연결하는 플랫폼 서비스를 운영하고 있습니다.<br>
						누구나 골프아이를 통해 공급 및 판매가 가능합니다.<br>
						골프아이와 함께 할 공급 및 판매자는 제휴 문의를 이용해 주시기 바랍니다.</p>
                    
                    </div>

                    <div class="box02">

                        <p>개인정보 취급방침 동의</p>

                        <div>
                            <p>개인정보 수집 및 이용에 대한 안내<br>
                                - 수집항목 : 이름, 회사명, 부서명, 직책, 이메일, 전화번호, 그외 개인이 직접 등록한 문의 내용<br>
                                - 수집목적 : 문의 결과 회신<br>
                                - 이용기간 : 개인정보 수집 및 이용에 대한 목적이 달성된 후에는 해당 정보를 파기함
                           </p>
                        </div>

                        <div class="check">
                            <input type="checkbox" id="chk01">
                            
                        	<label for="chk01">
                            	<p id="agree_check">동의합니다.</p>
                        	</label>
                        </div>

                    </div>

                    
                </div>
                
            </div>

            <p>* 필수 입력 항목입니다.</p>

            <table cellpadding="0" cellspacing="0">

                <tr>
                    <td colspan="2">
                        <p>제안사항</p>
                        
                        <div class="proposal">

                            <div class="pro01">
                                <input type="checkbox" id="proposal01" name="suggestions" value="공동프로모션">
                                
                                <label for="proposal01">
	                                <p id="warning1" >공동프로모션 : 프로모션 및 공동 마켓팅 제안</p>
                        		</label>
                            </div>

                            <div class="pro02">
                                <input type="checkbox" id="proposal02" name="suggestions" value="협찬/광고">
                                
                                <label for="proposal02">
	                                <p id="warning2" >협찬/광고문의 : 상품 협찬 및 광고 상품 제안</p>
                        		</label>
                            </div>

                            <div class="pro03">
                                <input type="checkbox" id="proposal03" name="suggestions" value="문화/콘텐츠">
                                
								<label for="proposal03">
	                                <p id="warning3">문화/콘텐츠 제안 : 공연, 티켓 홍보, 전시회 초대 등 1300K 콘텐츠 관련 제안</p>
                        		</label>
                            </div>

                            <div class="pro04">
                                <input type="checkbox" id="proposal04" name="suggestions" value="마케팅">
                                
                                <label for="proposal04">
	                                <p id="warning4">마케팅 문의 : 제휴, 마케팅 관련 제안</p>
                        		</label>
                            </div>

                            <div class="pro05">
                                <input type="checkbox" id="proposal05" name="suggestions" value="기타">
                                
                                <label for="proposal05">
	                                <p id="warning5">기타제안</p>
                        		</label>
                            </div>


                        </div>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <p>회사명</p>
                        <input type="text" name="company" id="txt01" required>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <p>회사주소</p>
                        <input type="text" name="address" id="txt02" required>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <p>홈페이지</p>
                        <input type="text" name="web" id="txt03" required>
                    </td>
                </tr>

                <tr>
                    <td>
                        <p>담당자</p>
                        <input type="text" name="manager" id="txt04" required>
                    </td>

                    <td>
                        <p>부서</p>
                        <input type="text" name="department" id="txt05" required>
                    </td>
                </tr>

                <tr>
                    <td>
                        <p>연락처</p>
                        <input type="text" name="contact" id="txt06" required>
                    </td>

                    <td>
                        <p>핸드폰</p>
                        <input type="text" name="phone" id="txt07" required>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <p>회사소개</p>
                        <textarea name="introduce" id="txt08" required></textarea>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <p>제안내용</p>
                        <textarea name="contents" id="txt09" required></textarea>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">

                        <p>첨부파일</p>
                        
						<input type="file" name="file">
						
<!--                         <a href="#">
                            <p>파일 선택</p>
                        </a>

                        <p>선택한 파일 없음</p>
 -->                        
                        <p>※ 이미지파일, PDF, PPT, ZIP 파일만 가능합니다. (크기 : 5Mb이하)</p>
                    </td>
                </tr>

            </table>

            <input type="submit" value="문의하기" id="btn">

			</form>

        </div><!--pr-->
    </section>

</body>
</html>