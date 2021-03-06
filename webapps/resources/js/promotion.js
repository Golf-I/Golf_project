/**
 * 상담신청 페이지 
 */

	// 유효성 검사
	function formCheck(){
	
			// 체크박스 필수 체크
//			if( !($("#chk01").is(":checked")) ){
//				$("#agree_check").attr("style", "color:#FF0000");
//				return false;
//			} 

			// 제안사항 필수 선택
			if( !($("#proposal01").is(":checked")) && !($("#proposal02").is(":checked")) && 
				!($("#proposal03").is(":checked")) && !($("#proposal04").is(":checked")) &&
				!($("#proposal05").is(":checked"))){
				
				$("#warning1").attr("style", "color:#FF0000");
				$("#warning2").attr("style", "color:#FF0000");
				$("#warning3").attr("style", "color:#FF0000");
				$("#warning4").attr("style", "color:#FF0000");
				$("#warning5").attr("style", "color:#FF0000");
				return false;
			} 
			
	} // formCheck 
	
	
	// 모바일 유효성 검사
	function formCheck_m(){
		
		// 제안사항 필수 선택
		if( !($(".proposal06").is(":checked")) && !($(".proposal07").is(":checked")) && 
				!($(".proposal08").is(":checked")) && !($(".proposal09").is(":checked")) &&
				!($(".proposal10").is(":checked"))){
			
			$("#warning6").attr("style", "color:#FF0000");
			$("#warning7").attr("style", "color:#FF0000");
			$("#warning8").attr("style", "color:#FF0000");
			$("#warning9").attr("style", "color:#FF0000");
			$("#warning10").attr("style", "color:#FF0000");
			return false;
		} 
		
	} // formCheck_m 