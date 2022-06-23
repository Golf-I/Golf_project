<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>advertisement_agree</title>
    <link href="${pageContext.request.contextPath}/resources/css/advertisement_agree.css" rel="stylesheet">
</head>
<body>

	<section>

        <div class="advertisement_agree">

            <p>광고성 정보 수신 동의</p>

            <div class="box01">

                <p>[선택] 광고성 정보 수신 동의에 대한 약관</p>

                <div class="box02">

                    <div class="txt01">
                        <p><span>${sessionScope.id}</span>은 회원님이 수집 및 이용에 동의한 개인
                            정보를 이용하여 SMS, MMS, 이메일,푸시 알림 등 다양한 전자적 
                            전송 매체를 통해 오전 8시부터 오후 9시까지 개인 맞춤형 광고 및 
                            정보를 전송할 수 있습니다.<br>
                            본 동의는 거부하실 수 있으나, 거부 시 이벤트 및 프로모션 안내를 
                            받아보실 수 없습니다.</p>
                    </div>

                    <div class="txt02">
                        <p>광고성 정보수신의 변경은</p>
                    </div>

                    <div class="txt03">
                        <p>1) <span>골프아이</span> 고객센터(1577-000, help@naver.com)로 요청</p>
                        <p>2) <span>SMS, MMS, 이메일, 푸쉬</span> : 웹 브라우저에서 마이페이지> 
                            프로필관리 확인/수정에서 변경할수 있습니다.</p>
                    </div>

                </div>

            </div>

            <input type="button" id="close" value="닫기" onclick="javascript:window.close();">

        </div><!--advertisement_agree-->

    </section>

</body>
</html>