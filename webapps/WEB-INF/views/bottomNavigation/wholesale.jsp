<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, minimum-scale=1.0, user-scalable=no">
    <title>hallsale</title>
    <link href="${pageContext.request.contextPath}/resources/css/hallsale.css" rel="stylesheet">
</head>
<body>

   <section class="web">

        <div class="menu">

            <a href="index">
                <img src="${pageContext.request.contextPath}/resources/img/wholesale/join_logo.png">
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

        <div class="hallsale">

            <p>홀세일문의</p>

			<form action="category/wholesale" method="post" enctype="multipart/form-data">
			
            <div class="information">

                <div class="left_inf">
                    <img src="${pageContext.request.contextPath}/resources/img/wholesale/img.png">
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
                            <input type="checkbox" id="chk01" required>
                            
                        	<label for="chk01">
                            	<p id="agree_check">동의합니다.</p>
                        	</label>
                        </div>

                    </div><!-- box02 -->

                    
                </div><!-- right_inf -->
                
            </div><!-- information -->

            <p>* 필수 입력 항목입니다.</p>

            <table cellpadding="0" cellspacing="0">

                <tr>
                    <td colspan="2">
                        <p>회사명</p>
                        <input type="text" name="company" id="txt01" >
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <p>회사주소</p>
                        <input type="text" name="address" id="txt02" >
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <p>홈페이지</p>
                        <input type="text" name="web" id="txt03" >
                    </td>
                </tr>

                <tr>
                    <td>
                        <p>담당자</p>
                        <input type="text" name="manager" id="txt04" >
                    </td>

                    <td>
                        <p>부서</p>
                        <input type="text" name="department" id="txt05" >
                    </td>
                </tr>

                <tr>
                    <td>
                        <p>연락처</p>
                        <input type="text" name="contact" id="txt06" >
                    </td>

                    <td>
                        <p>핸드폰</p>
                        <input type="text" name="phone" id="txt07" >
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <p>회사소개</p>
                        <textarea name="introduce" id="txt08" ></textarea>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <p>홀세일제안</p>
                        <textarea name="contents" id="txt09" ></textarea>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">

                        <p>첨부파일</p>

						<input type="file" name="file">

<!--                    <a href="#">
                            <p>파일 선택</p>
                        </a>

                        <p>선택한 파일 없음</p> -->

                        <p>※ 이미지파일, PDF, PPT, ZIP 파일만 가능합니다. (크기 : 5Mb이하)</p>
                        
                    </td>
                </tr>

            </table>

            <input type="submit" value="문의하기" id="btn">
            
            </form>
            
        </div><!--hallsale-->
    </section>
    
    
    <!-- 모바일 -->
    <section class="mobile">

        <form action="category/wholesale" method="post" enctype="multipart/form-data">

        <div class="hall_m_top">
           
            <a href="index">
                <p>←</p>
            </a>

            <p>홀세일문의</p>
            
            <a href="index">
                <img src="${pageContext.request.contextPath}/resources/img/wholesale/home_m.png">
            </a>

        </div>

        <div class="hall_line01"></div>

        <div class="hall_img">
            <img src="${pageContext.request.contextPath}/resources/img/wholesale/img.png">
        </div>

        <div class="hall_txt_m_01">

            <div>
                <p>골프아이는 전세계 골프장과 골퍼들을 연결하는 플랫폼 서비스를 운영하고 있습니다.<br>
		                    누구나 골프아이를 통해 공급 및 판매가 가능합니다.<br>
		                    골프아이와 함께 할 공급 및 판매자는 제휴 문의를 이용해 주시기 바랍니다.</p>
            </div>

        </div>

        <div class="hall_txt_m_02">

            <p>개인정보 취급방침 동의</p>

            <div class="agree_m_01">

                <p>개인정보 수집 및 이용에 대한 안내<br>
                    - 수집항목 : 이름, 회사명, 부서명, 직책, 이메일, 전화번호, 그외 개인이 직접 등록한 문의 내용<br>
                    - 수집목적 : 문의 결과 회신<br>
                    - 이용기간 : 개인정보 수집 및 이용에 대한 목적이 달성된 후에는 해당 정보를 파기함</p>

            </div>

            <div class="agree_chk_m_01">

                <input type="checkbox" id="agree_chk_m" required>

				<label for="agree_chk_m">
	                <p>동의합니다.</p>
				</label>

            </div>

        </div>

        <div class="typing_m_01">

            <p>*필수 입력 항목입니다.</p>

            <table cellpadding="0" cellspacing="0">

                <tr>
                    <td>
                        <p>회사명</p>
                    </td>

                    <td>
                        <input type="text" id="typing01" name="company" >
                    </td>
                </tr>

                <tr>
                    <td>
                        <p>회사주소</p>
                    </td>

                    <td>
                        <input type="text" id="typing02" name="address" >
                    </td>
                </tr>

                <tr>
                    <td>
                        <p>홈페이지</p>
                    </td>

                    <td>
                        <input type="text" id="typing03" name="web" >
                    </td>
                </tr>

                <tr>
                    <td>
                        <p>담당자</p>
                    </td>

                    <td>
                        <input type="text" id="typing04" name="manager" >
                    </td>
                </tr>

                <tr>
                    <td>
                        <p>부서</p>
                    </td>

                    <td>
                        <input type="text" id="typing05" name="department" >
                    </td>
                </tr>

                <tr>
                    <td>
                        <p>연락처</p>
                    </td>

                    <td>
                        <input type="text" id="typing06" name="contact" >
                    </td>
                </tr>

                <tr>
                    <td>
                        <p>핸드폰</p>
                    </td>

                    <td>
                        <input type="text" id="typing07" name="phone" >
                    </td>
                </tr>

                <tr>
                    <td>
                        <p>회사소개</p>
                    </td>

                    <td>
                        <textarea id="typing08" name="introduce" ></textarea>
                    </td>
                </tr>

                <tr>
                    <td>
                        <p>홀세일제안</p>
                    </td>

                    <td>
                        <textarea id="typing09" name="contents" ></textarea>
                    </td>
                </tr>

                <tr>
                    <td>
                        <p>첨부파일</p>
                    </td>

                    <td>
                        <div class="file_m">

							<input type="file" name="file">
<!--                        <a href="#">
                                <p>파일선택</p>
                            </a>

                            <p>선택한 파일 없음</p> -->

                            <p>※ 이미지파일, PDF, PPT, ZIP 파일만 가능합니다. (크기 : 5Mb이하)</p>

                        </div>
                    </td>
                </tr>

            </table>

        </div>

        <input type="submit" value="문의하기" id="inquiry_m">

		</form>

    </section>
    

</body>
</html>