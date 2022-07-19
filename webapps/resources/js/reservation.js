/**
 * 예약하기 페이지
 */

	// 출발일자 달력 UI
	$(function datepicker() {
		$( "#datepicker" ).datepicker({ dateFormat: 'yy-mm-dd' });
	}); // datepicker
	
	
	// 인원 체크 시 여행자정보 display
	$(document).ready(function(){
		
		// 인원 선택 시
		$("#num01").change(function(){
			
			var input = "";
			var each = $("#num01 option:selected").val();
			
			for(var i=2; i<=each; i++){
				input += "<p>여행자정보"+ i + "</p>" +
						"<table cellpadding='0' cellspacing='0'>" +
						"<tr>" +
						"<td><p><span>*</span> 이름</p></td>" +
						"<td><input type='text' name='traveler' id='traveler02' required/></td>" +
						"<td><p><span>*</span> 성별</p></td>" +
						"<td><select id='gender03' name='traveler_gender'>" +
						"<option value='남성'>남성</option>" +
		                "<option value='여성'>여성</option>" +
						"</select></td>" +
						"<td><p>영문명</p></td>" +
						"<td><input type='text' size='6' maxlength='6' placeholder='성(예,HONG)'" +
						"	id='last_name01' name='traveler_firstname'>" +
						"<input type='text' size='10' maxlength='10' placeholder='성(예,GILDONG)'" +
						"	id='name01' name='traveler_lastname'></td>" +
						"<td><p>연락처</p></td>" +
						"<td><input type='text' name='traveler_phone' id='traveler01_phone'/></td>" +
						"</tr>" +
						"</table>" +
						"<br/><br/>";
			} // for
			
			$(".information03").append(input);
			
		}); // change
		
	}); // ready
	
	
	// 예약자도 여행자에 포함 체크 시
	$(document).ready(function(){
		
		$(".infor01").click(function(){
			
			if(	$(".infor01").is(":checked") ){
				
				$.ajax({
					type: "GET",
					dataType: "text",
					data: { name:$("#booker").val(),
							gender:$("#gender02").val(),
							phone:$("#booker_phone").val() },
					success: function(data, textStatus){
						
						$("#traveler01").val($("#booker").val());
						$("#traveler01_phone").val($("#booker_phone").val());
						
						// 여성이면 여성으로 변경
						if( $("#gender02 option:selected").val() == "여성"){
							$("#gender01 option:eq(1)").prop("selected", true);
						} // if
						
					}, // success
					error: function(textStatus){
						console.log("오류가 발생했습니다." + textStatus);
					} // error
				}); // ajax
				
			} // if
			
		}); // click
		
	}); // ready
	
	
	// 총 결제 금액 계산
	$(document).ready(function(){
		
		var lowestPrice = parseInt($("#lowestPrice").val());						// 최저가
		var option_singleRoom = parseInt($("#option_singleRoom").val());			// 싱글룸 차지
		var option_addVehicle = parseInt($("#option_addVehicle").val());			// 단독차량 추가
		var option_businessUpgrade = parseInt($("#option_businessUpgrade").val());	// 비즈니스 업그레이드
		var personnel = parseInt($("#num01 option:selected").val());				// 인원
		var total = lowestPrice;													// 총계
		
		$("#total_price").val(total * personnel);
		
//		console.log(lowestPrice + " / " + option_singleRoom
//				+ " / " + option_addVehicle + " / " + option_businessUpgrade + " / "
//				+ option_businessUpgrade + " / " + personnel + " / " + total);
		
		// 추가 싱글룸 차지 선택 시
		$("#checkbox01").click(function(){
			
			if(	$("#checkbox01").is(":checked") ){
				total += option_singleRoom;
				$("#total_price").val(total);
				
			}else{
				total -= option_singleRoom;
				$("#total_price").val(total);
			}
		}); // click
		
		// 2인 단독차량 추가금 클릭 시
		$("#checkbox02").click(function(){
			
			if(	$("#checkbox02").is(":checked") ){
				total += option_addVehicle;
				$("#total_price").val(total);
				
			}else{
				total -= option_addVehicle;
				$("#total_price").val(total);
			}
		}); // click
		
		// 비즈니스 업그레이드 클릭 시 
		$("#checkbox03").click(function(){
			
			if(	$("#checkbox03").is(":checked") ){
				total += option_businessUpgrade;
				$("#total_price").val(total);
			}else{
				total -= option_businessUpgrade;
				$("#total_price").val(total);
			}
		}); // click
		
		
		// 인원 선택 시
		$("#num01").change(function(){
			personnel = $("#num01 option:selected").val();
			total = lowestPrice * personnel
			$("#total_price").val(total);
		}); // change
		
	}); // ready
	
	
	// 취소규정, 개인정부 수집/이용 필수 체크
	function agreeCheck(){
		
		if( $("#num01 option:selected").val() == 0 ){
			$("#num01").focus();
			return false;
		}
		
		if( !($("#cancellation_chk").is(":checked")) ){
			$("#ag1").attr("style", "color:#FF0000");
			return false;
		}
		
		if( !($("#term_of_service").is(":checked")) ){
			$("#ag2").attr("style", "color:#FF0000");
			return false;
		}
		
	} // agreeCheck
	
