<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, minimum-scale=1.0, user-scalable=no">
    <title>privacy</title>
    <link href="${pageContext.request.contextPath}/resources/css/privacy.css" rel="stylesheet">
</head>
<body>

	<section class="web">

        <div class="privacy">

            <p>광고성 개인정보 수집</p>

            <div class="box01">

                <p>[선택] 광고성 목적의 개인정보 수집 및 이용 동의</p>


                    <table cellpadding="0" cellspacing="0">

                        <tr>
                            <td>수집항목</td>
                            <td>수집목적</td>
                            <td>보유기간</td>
                        </tr>

                        <tr>
                            <td>
                                <p>서비스 이용기록, 결제기록, 휴대전화번호, 이메일, 본인확인정보 (이름, 생년월일, 성별, 통신사명, 휴대전화번호, 동일인식별정도 (CI), 중복가입확인정보 (DI), 내/외국인정보), 접속IP정보, 쿠키 등의 광고식별자</p>
                            </td>

                            <td>
                                <p>(맞춤형) 광고 및 마케팅 참여기회 제공</p>
                            </td>

                            <td>
                                <p>동의철회 또는 회원 탈퇴시 지체없이 파기</p>
                            </td>
                        </tr>
                        
                    </table>

                    <div class="txt01">

                        <p>※ 동의를 거부할 수 있으며, 동의를 거부하셔도 서비스를 이용하실 수 있습니다.</p>
                    
                    </div>

            </div><!--box01-->

            <input type="button" id="btn_pr" value="확인" onclick="window.close();">
            
        </div>

    </section>
    
    
    <!-- 모바일 -->
    <section class="mobile">

        <div class="privacy_m_box01">

            <p>광고성 개인정보 수집</p>

            <div class="privacy_line_m"></div>

            <p>[선택] 광고성 목적의 개인정보 수집 및 이용동의</p>

            <div class="privacy_m_box02">

                <p>수집항목</p>

                <div class="under_m_01"></div>

                <p>서비스 이용기록, 결제기록, 휴대전화번호, 이메일, 본인확인정보 (이름, 생년월일, 성별, 통신사명, 휴대전화번호, 동일인식별정도 (CI), 중복가입확인정보 (DI), 내/외국인정보), 접속IP정보, 쿠키 등의 광고식별자</p>
                
            </div>

            <div class="privacy_m_box03">

                <p>수집목적</p>

                <div class="under_m_02"></div>

                <p>(맞춤형) 광고 및 마케팅 참여기회 제공</p>
                
            </div>

            <div class="privacy_m_box04">

                <p>보유기간</p>

                <div class="under_m_03"></div>

                <p>동의철회 또는 회원 탈퇴시 지체없이 파기</p>
                
            </div>

            <p>※ 동의를 거부할 수 있으며, 동의를 거부하셔도 서비스를 이용하실 수 있습니다.</p>

            <input type="button" value="확인" id="privacy_m_btn" onclick="window.close();">
            
        </div>

    </section>
    
</body>
</html>