<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, minimum-scale=1.0, user-scalable=no">
    <title>consulting</title>
	<link href="${pageContext.request.contextPath}/resources/css/consulting.css" rel="stylesheet">
  	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>

    <section class="web">
    
        <div class="consulting">

            <p>상담신청</p>

			<form method="POST"	action="category/inquire" >

			<input type="hidden" value="${param.title}" name="title">

            <div class="consulting_box">

                <p>㈜골프아이는 해외 골프장과 회원권 제휴되어 더 좋은 조건으로 골프 회원권을 구입하실 수 있습니다.<br>
                	회원권에 대한 궁금한 사항이 있으시면 언제라도 문의 주시기 바랍니다.
                </p>

                <div class="agree_ex">

                    <p>개인정보 취급방침 동의</p>

                    <div class="agree">
                        <div>
                            <p>개인정보 수집 및 이용에 대한 안내</p>
                            <p>- 수집항목 : 이름, 회사명, 부서명, 직책, 이메일, 전화번호, 그외 개인이 직접 등록한 문의 내용</p>
                            <p>- 수집목적 : 문의 결과 회신</p>
                            <p>- 이용기간 : 개인정보 수집 및 이용에 대한 목적이 달성된 후에는 해당 정보를 파기함</p>
                        </div>
                    </div>

                    <div class="agree_chk">
                        	<input type="checkbox" id="agree" required>
						
						<label for="agree">
		                    <p>동의합니다.</p>
						</label>
                    </div>

                </div>

            </div><!--consulting_box-->

           	<div class="select_box">
                <p>※ 원하시는 상담 카테고리를 선택해주세요.</p>

                <select name="category" id="product" required>
                    <option value="회원권">회원권</option>
                    <option value="아카데미">아카데미</option>
                </select>

            </div>


            <div class="information">

                <div class="box_infor">

                    <p>※ 요청주신 상담일과 시간에 전화 연락 드리겠습니다.</p>

                    <div class="name">
                        <p><span>*</span> 기업명/고객명</p>
                        <input type="text" name="companyName" size="12" maxlength="12" id="name_i" required>
                    </div>

                    <div class="manager">
                        <p><span>*</span> 담당자</p>
                        <input type="text" name="manager" size="12" maxlength="12" id="manager_i" required>
                    </div>

                    <div class="phone">
                        <p><span>*</span> 연락처</p>
                        <input type="text" name="contactNumber" size="12" maxlength="12" id="phone_i" required>
                    </div>

                    <div class="day">
                        <p><span>*</span> 상담일/시간</p>
                        <input type="text" name="contactDate" size="12" maxlength="12" id="day_i" required>
                    </div>

                    <div class="contents">
                        <p><span>*</span> 상담내용</p>
                        <textarea name="content" id="contents_i" required></textarea>
                    </div>
                </div>

            </div><!--information-->
	
            <input type="submit" id="send" value="상담신청">

			</form>

        </div><!--consulting-->
        
    </section>
    
    
    
    <!-- 모바일 -->
   	<section class="mobile">

		<form method="POST"	action="category/inquire">
	
		<input type="hidden" value="${param.title}" name="title">

        <div class="consulting_m_top">

            <a href="javascript:window.close();">
                <p>←</p>
            </a>

            <p>상담신청</p>

            <a href="index">
                <img src="${pageContext.request.contextPath}/resources/img/home_m.png">
            </a>

        </div>

        <div class="consulting_m_line01"></div>

        <div class="txt_con_m_01">

            <div>
                <p>㈜골프아이는 해외 골프장과 회원권 제휴되어 더 좋은 조건으로 골프 회원권을 구입하실 수 있습니다.<br>
                	회원권에 대한 궁금한 사항이 있으시면 언제라도 문의 주시기 바랍니다.</p>
            </div>

        </div>

        <div class="agree_m_01">

            <p>개인정보 취급 방침 동의</p>


            <div class="agree_txt_m_01">

                <div>
                    <p>개인정보 수집 및 이용에 대한 안내</p>
                    <p>- 수집항목 : 이름, 회사명, 부서명, 직책, 이메일, 전화번호, 그외 개인이 직접 등록한 문의 내용</p>
                    <p>- 수집목적 : 문의 결과 회신</p>
                    <p>- 이용기간 : 개인정보 수집 및 이용에 대한 목적이 달성된 후에는 해당 정보를 파기함</p>
                </div>

            </div>

            <div class="agree_chk_m">

                <input type="checkbox" id="agree_chk_m" required>

				<label for="agree_chk_m">
	                <p>동의합니다.</p>
				</label>

            </div>

        </div>

        <div class="agree_m_02">

            <p>※ 원하시는 상담 카테고리를 선택해주세요.</p>

            <select id="select_m" name="category" required>
                <option value="회원권">회원권</option>
                <option value="아카데미">아카데미</option>
            </select>

        </div>

        <div class="agree_m_03">

            <p>※ 요청주신 상담일과 시간에 전화 연락 드리겠습니다.</p>

            <div>

                <p><span>*</span> 기업명/고객명</p>
                <input type="text" id="call_m_01" name="companyName" required>

            </div>

            <div>

                <p><span>*</span> 담당자</p>
                <input type="text" id="call_m_02" name="manager" required>

            </div>

            <div>

                <p><span>*</span> 연락처</p>
                <input type="text" id="call_m_03" name="contactNumber" required>

            </div>

            <div>

                <p><span>*</span> 상담일/시간</p>
                <input type="text" id="call_m_04" name="contactDate" required>

            </div>

            <div>

                <p><span>*</span> 상담내용</p>
                <textarea id="call_m_05" name="content" required></textarea>

            </div>

        </div>

        <input type="submit" value="상담신청 보내기" id="consulting_m_btn">

		</form>

    </section>

</body>
</html>