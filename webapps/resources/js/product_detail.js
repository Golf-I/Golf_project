/**
 * 상품 상세페이지
 */
	
	// 구글 지도 API
	function showmap() {
		var mapOptions = {
			zoom: 18,
		//	zoom: 8,
			scrollwheel: false,
		//	center: new google.maps.LatLng(-34.397, 150.644),
			center: new google.maps.LatLng(35.179826, 129.075631),
			mapTypeId: google.maps.MapTypeId.ROADMAP
		};
		var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
//		$('.mapheight').css('height', '350');
		$('.map_sheet').css('height', '500');
		$('.maps_text h3').hide();
	}
	
	
	// 후기 팝업창
    function openwindow(){
        window.open("detail_review", "_blank",
        "width=990 ,height=910 ,scrollbars=yes,resizable=no ,location=no")
    }
    
    
    // 고객평점/별점 입력 시 로그인 유도
    function login(){
    	
    	$("#text01").click(function(){

    		var loginPage = confirm("로그인 상태에서 가능합니다. 로그인 페이지로 이동합니다.");
    		
    		if(loginPage == true){
    			window.location.href="login";
    			return true;
    		}else{
    			return false;
    		}
    		
    	}); // click
    } // login
    
    
	// 카카오톡 공유하기
	function shareKakao() {
		
		// 사용할 앱의 JavaScript 키 설정
	    Kakao.init('395a1e98e230125e06d715106e0750bd');
	    
	    // 카카오링크 버튼 생성
	    Kakao.Link.createDefaultButton({
	        container: '#kakaotalk-sharing-btn', // HTML에서 작성한 ID값
	        objectType: 'feed',
	        content: {
	        title: "2021 웹진 [봄]", // 보여질 제목
	        description: "2021 웹진 [봄]", // 보여질 설명
	        imageUrl: 'http://k.kakaocdn.net/dn/Q2iNx/btqgeRgV54P/VLdBs9cvyn8BJXB3o7N8UK/kakaolink40_original.png', // thisUrl, // 콘텐츠 URL
	        link: {
//	            mobileWebUrl: 'https://developers.kakao.com',
	            mobileWebUrl: 'http://3.36.34.62:8080/Golf_project/index',
	            webUrl: 'http://3.36.34.62:8080/Golf_project/index'
//	            webUrl: 'https://developers.kakao.com'
	        } // link
	        } // content
	    });
		
		
	} // shareKakao
	
	
	// 페이스북 공유하기
	function shareFacebook() {
		
		var url = "http://www.facebook.com/sharer/sharer.php?u="+encodeURIComponent(document.URL);
		window.open(url, "", "width=486, height=286");
		
	} // shareFacebook
	
	
	// 트위터 공유하기
	function shareTwitter() {
		
	    var snsTitle = "테스트";
		var url = "http://twitter.com/share?url="+encodeURIComponent(document.URL)+"&text="+encodeURIComponent(snsTitle);
		
		 window.open(url, "tweetPop", "width=486, height=286,scrollbars=yes");
		
	} // shareTwitter
	
	
	// 밴드 공유하기
	function shareBand() {
		
		var snsTitle = "테스트";
		var url = "http://www.band.us/plugin/share?body="+encodeURIComponent(snsTitle)+"&route="+encodeURIComponent(document.URL);
		
		window.open(url, "shareBand", "width=400, height=500, resizable=yes");
		
	} // shareBand
	
	
	// 밴드 공유하기
	function shareLine() {
		
		var snsTitle = "테스트";
		var url = "http://line.me/R/msg/text/?body="+encodeURIComponent(snsTitle)+"&route="+encodeURIComponent(document.URL);
		
		window.open(url, "shareBand", "width=500, height=800, resizable=yes");
		
	} // shareLine
	
	
	// 별점/평점 등록하기
	$(document).ready(function(){
		
		var fairway; 
		var playSpeed;
		var caddy;
		var facility;
		var guide;
		
		// fairway
		$("#rate1-1").change(function(){
			if( $("#rate1-1").is(":checked") ){
				console.log("1");
				fairway = 1;
				$("#myform_p1").val(fairway);
			}
		}); 
		
		$("#rate1-2").change(function(){
			if( $("#rate1-2").is(":checked") ){
				console.log("2");
				fairway = 2;
				$("#myform_p1").val(fairway);
			}
		}); 
		
		$("#rate1-3").change(function(){
			if( $("#rate1-3").is(":checked") ){
				console.log("3");
				fairway = 3;
				$("#myform_p1").val(fairway);
			}
		}); 
		
		$("#rate1-4").change(function(){
			if( $("#rate1-4").is(":checked") ){
				console.log("4");
				fairway = 4;
				$("#myform_p1").val(fairway);
			}
		}); 
		
		$("#rate1-5").change(function(){
			if( $("#rate1-5").is(":checked") ){
				console.log("5");
				fairway = 5;
				$("#myform_p1").val(fairway);
			}
		}); 
		
		
		// playSpeed
		$("#rate2-1").change(function(){
			if( $("#rate2-1").is(":checked") ){
				console.log("1");
				playSpeed = 1;
				$("#myform_p2").val(playSpeed);
			}
		}); 
		
		$("#rate2-2").change(function(){
			if( $("#rate2-2").is(":checked") ){
				console.log("2");
				playSpeed = 2;
				$("#myform_p2").val(playSpeed);
			}
		}); 
		
		$("#rate2-3").change(function(){
			if( $("#rate2-3").is(":checked") ){
				console.log("3");
				playSpeed = 3;
				$("#myform_p2").val(playSpeed);
			}
		}); 
		
		$("#rate2-4").change(function(){
			if( $("#rate2-4").is(":checked") ){
				console.log("4");
				playSpeed = 4;
				$("#myform_p2").val(playSpeed);
			}
		}); 
		
		$("#rate2-5").change(function(){
			if( $("#rate2-5").is(":checked") ){
				console.log("5");
				playSpeed = 5;
				$("#myform_p2").val(playSpeed);
			}
		}); 
		
		
		// caddy
		$("#rate3-1").change(function(){
			if( $("#rate3-1").is(":checked") ){
				console.log("1");
				caddy = 1;
				$("#myform_p3").val(caddy);
			}
		}); 
		
		$("#rate3-2").change(function(){
			if( $("#rate3-2").is(":checked") ){
				console.log("2");
				caddy = 2;
				$("#myform_p3").val(caddy);
			}
		}); 
		
		$("#rate3-3").change(function(){
			if( $("#rate3-3").is(":checked") ){
				console.log("3");
				caddy = 3;
				$("#myform_p3").val(caddy);
			}
		}); 
		
		$("#rate3-4").change(function(){
			if( $("#rate3-4").is(":checked") ){
				console.log("4");
				caddy = 4;
				$("#myform_p3").val(caddy);
			}
		}); 
		
		$("#rate3-5").change(function(){
			if( $("#rate3-5").is(":checked") ){
				console.log("5");
				caddy = 5;
				$("#myform_p3").val(caddy);
			}
		}); 
		
		
		// facility
		$("#rate4-1").change(function(){
			if( $("#rate4-1").is(":checked") ){
				console.log("1");
				facility = 1;
				$("#myform_p4").val(facility);
			}
		}); 
		
		$("#rate4-2").change(function(){
			if( $("#rate4-2").is(":checked") ){
				console.log("2");
				facility = 2;
				$("#myform_p4").val(facility);
			}
		}); 
		
		$("#rate4-3").change(function(){
			if( $("#rate4-3").is(":checked") ){
				console.log("3");
				facility = 3;
				$("#myform_p4").val(facility);
			}
		}); 
		
		$("#rate4-4").change(function(){
			if( $("#rate4-4").is(":checked") ){
				console.log("4");
				facility = 4;
				$("#myform_p4").val(facility);
			}
		}); 
		
		$("#rate4-5").change(function(){
			if( $("#rate4-5").is(":checked") ){
				console.log("5");
				facility = 5;
				$("#myform_p4").val(facility);
			}
		}); 
		
		
		// guide
		$("#rate5-1").change(function(){
			if( $("#rate5-1").is(":checked") ){
				console.log("1");
				guide = 1;
				$("#myform_p5").val(guide);
			}
		}); 
		
		$("#rate5-2").change(function(){
			if( $("#rate5-2").is(":checked") ){
				console.log("2");
				guide = 2;
				$("#myform_p5").val(guide);
			}
		}); 
		
		$("#rate5-3").change(function(){
			if( $("#rate5-3").is(":checked") ){
				console.log("3");
				guide = 3;
				$("#myform_p5").val(guide);
			}
		}); 
		
		$("#rate5-4").change(function(){
			if( $("#rate5-4").is(":checked") ){
				console.log("4");
				guide = 4;
				$("#myform_p5").val(guide);
			}
		}); 
		
		$("#rate5-5").change(function(){
			if( $("#rate5-5").is(":checked") ){
				console.log("5");
				guide = 5;
				$("#myform_p5").val(guide);
			}
		}); 
		
	});
