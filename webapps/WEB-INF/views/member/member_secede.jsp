<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>withdrawal</title>
    <link href="${pageContext.request.contextPath}/resources/css/withdrawal.css" rel="stylesheet">
</head>
<body>

	<section>

        <div class="withdrawal">

            <p>회원탈퇴</p>

            <div class="box_wi">

                <p>회원탈퇴 전, 유의사항을 확인해 주시기 바랍니다.</p>

                <div class="txt01">

                    <div>

                        <p>- 회원탈퇴 시 회원전용 웹 서비스 이용이 불가합니다.</p>

                        <p>- 거래정보가 있는 경우, 전자상거래 등에서의 소비자 보호에 관한 
                        법률에 따라 계약 또는 청약철회에 관한 기록, 대금결제 및 재화 
                        등의 공급에 관한 기록은 5년동안 보존됩니다.</p>

                        <p>- 미사용 쿠폰은 회원탈퇴 후 사용하실 수 없습니다.</p>

                        <p>- 보유하셨던 포인트는 탈퇴와 함께 삭제되며 환불되지 않습니다.</p>

                        <p>- 회원탈퇴 후 서비스에 입력하신 상품문의 및 후기, 댓글은 삭제
                        되지 않으며, 회원정보 삭제로 인해 작성자 본인을 확인할 수 없어 
                        편집 및 삭제처리가 원천적으로 불가능 합니다.</p>

                        <p>- 상품문의 및 후기, 댓글 삭제를 원하시는 경우에는 먼저 해당 
                        게시물을 삭제하신 후 탈퇴를 신청하시기 바랍니다.</p>

                        <p>- 이미 결제가 완료된 건은 탈퇴로 취소되지 않습니다.</p>

                    </div>

                </div>

                <div class="chk_txt">
                    <input type="checkbox" id="chk01">
	
					<label for="chk01">
	                    <p>상기 회원탈퇴 시 처리사항 안내를 확인하였음에 동의합니다.</p>
					</label>

                </div>


            </div>

            <div class="password_chk">

                <p><span>${sessionScope.id}</span> 님의 정보를 안전하게 보호하기 위해 비밀번호를 
                    다시 한번 확인 합니다.</p>

                
                <div class="id">
                    <p>아이디(이메일)</p>
                    <p>an20o0@naver.com</p>
                    <input type="email" size="12" maxlength="12" id="pw01" value="${sessionScope.id}" readonly>
                </div>

                <div class="password">
                    <p>비밀번호</p>
                    <input type="password" size="12" maxlength="12" id="pw01">
                </div>
                
            </div>

           <input type="button" value="회원탈퇴" id="btn_wi">

        </div>

    </section>

</body>
</html>