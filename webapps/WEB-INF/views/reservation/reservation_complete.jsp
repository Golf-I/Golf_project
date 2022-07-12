<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>reservation_confirm</title>
	<link href="${pageContext.request.contextPath}/resources/css/reservation_confirm.css" rel="stylesheet">
</head>
<body>

     <section>

        <div class="reservation_confirm">

            <p>예약완료</p>

            <div class="confirm_txt">
                <div>
                    <p>상품을 예약해 주셔서 감사합니다. <br>
                        담당자 확인 후 연락 드리겠습니다.<br>
                        또한 전자결제는 예약 확정 후  마이페이지 내에 예약리스트에서<br>
                        해당 상품 전자결제하기를 진행해 주시면 됩니다.
                    </p>
                </div>
            </div>

            <input type="button" id="confirm_btn" value="확인" onclick="location.href='member_reservation';">

        </div><!--reservation_confirm-->


    </section>
    
</body>
</html>