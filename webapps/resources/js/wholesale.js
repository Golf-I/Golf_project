/**
 * 상담신청 페이지 
 */

	// 유효성 검사
	function agreeCheck(){
		
		// 체크박스 필수 체크
		if( !($("#chk01").is(":checked")) ){
			$("#agree_check").attr("style", "color:#FF0000");
			return false;
		} 
			
	} // agreeCheck
