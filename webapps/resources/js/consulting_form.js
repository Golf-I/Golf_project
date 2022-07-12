/**
 * 상담신청 페이지 
 */

	// 유효성 검사
	function formCheck(){
		
		// 체크박스 필수 체크
		if( !($("#agree").is(":checked")) ){
			$("#agree_check").attr("style", "color:#FF0000");
			return false;
		} 

		// select 필수 선택
		if( $("#product").val() == "" ){
			$("#product").focus();
			return false;
		}
		
	}		
