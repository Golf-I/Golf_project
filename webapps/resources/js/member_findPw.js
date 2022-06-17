/**
 * 비밀번호 찾기 페이지
 */


	// 비밀번호 찾기 방법 둘 중 하나만 체크
	$(document).ready(function(){
		
		// 이메일 주소를 체크했을 때 등록된 휴대폰 해제
		$("#findpw_email").click(function(){
			$("#findpw_phone").prop("checked", false);
		}); // click
		
		// 등록된 휴대폰을 체크했을 때 등록된 휴대폰 해제
		$("#findpw_phone").click(function(){
			$("#findpw_email").prop("checked", false);
		}); // click
		
	}); // ready
	
	
	
	// 비밀번호 찾기 방법 필수 선택
	function checkbox_check(){
		if( $("#email").val() != ""	&& $("#name").val() != "" ){
			
			if( !($("#findpw_email").is(":checked")) && !($("#findpw_phone").is(":checked"))  ){
				$("#checkbox_email").val("E-mail(이메일)주소").css("color", "#FF0000");
				$("#checkbox_phone").val("등록된 휴대폰").css("color", "#FF0000");
				return false;
			}
			
		} // if
	}; // checkbox_check
	
