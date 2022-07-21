<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, minimum-scale=1.0, user-scalable=no">
    <title>review_box</title>
    <link href="${pageContext.request.contextPath}/resources/css/review_box.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js"></script>
    <script>
    
    	var ckeditor_config = {
   			removePlugins: 'resize',
/*    			filebrowserBrowseUrl: '${pageContext.request.contextPath}/ckfinder/ckfinder.html',
    		filebrowserFlashBrowseUrl: '${pageContext.request.contextPath}/ckfinder/ckfinder.html?type=Flash',
    		filebrowserUploadUrl: '${pageContext.request.contextPath}/ckfinder/core/connector/java/connctor.java?command=QuickUpload&type=Files',
    		filebrowserImageUploadUrl: '${pageContext.request.contextPath}/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images',
    		filebrowserFlashUploadUrl: '${pageContext.request.contextPath}/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash */'
  			filebrowserUploadMethod='form', // 파일 오류났을때 alert띄워줌
  			filebrowserUploadUrl: 'category/review?type=Files',
  			filebrowserImageUploadUrl = 'category/review?type=Images';
    	};
    	
    </script>
</head>
<body>

   <section class="web">

		<form method="post" action="category/review" enctype="multipart/form-data">

        <p>상품 리뷰 등록</p>

		<input type="hidden" name="product_code" value="${param.product_code}">

        <table cellpadding="0" cellspacing="0">

            <tr>
                <td>
                    <p>제목</p>
                </td>

                <td>
                    <input type="text" name="title" id="review_w_01">
                </td>
            </tr>

            <tr>
                <td>
                    <p>작성자</p>
                </td>

                <td>
                    <input type="text" name="review_user" id="review_w_02" value="${sessionScope.id}" readonly="readonly">
                </td>
            </tr>

            <tr>
                <td>
                    <p>내용</p>
                </td>

                <td>
                    <div>
                        <div>
                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/question.png">
                            </div>

                            <p>모든 에디터에는 한글문서/오피스문서/엑셀문서 등에서 복사 붙여넣기 하시면 안됩니다.</p>
                        </div>

                        <div>
                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/question.png">
                            </div>

                            <p>꼭!! 메모장 프로그램에 붙여넣은 뒤 다시 복사하기 한 후 에디터에 내용을 넣어주세요.</p>
                        </div>

                        <div>
                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/question.png">
                            </div>

                            <p>PC 이미지 업로드 사이즈는 500px X 500px 으로 넣어주세요.
                        </div>
                        
                        <div>
                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/question.png">
                            </div>

                            <p> 이미지 파일을 입력칸에 드래그 해주세요.</p>
                        </div>
                        
                    </div>
                </td>
            </tr>
            <tr>
            	<td></td>
            	<td>
            	<textarea id="review_w_03" name="contents"></textarea>
		        <script>
		        	CKEDITOR.replace("review_w_03");
		        </script>
            	
            	</td>
            
            </tr>

        </table>

        <div class="review_btn_w">

            <input type="submit" value="등록" id="submit_w">

            <input type="reset" value="취소" id="reset_w">
            
            <input type="button" value="닫기" id="reset_w" onclick="window.close();">

        </div>

	</form>

    </section><!--web-->


	<!-- 모바일 -->
    <section class="mobile">

		<form method="post" action="category/">

        <div class="rv_m_top">
           
            <a href="index">
                <p>←</p>
            </a>

            <p>상품 리뷰 등록</p>

            <a href="index">
                <img src="${pageContext.request.contextPath}/resources/img/home_m.png">
            </a>

        </div>

        <div class="rv_line_m_01"></div>

        <table cellpadding="0" cellspacing="0">

            <tr>
                <td>
                    <p>제목</p>
                </td>

                <td>
                    <input type="text" name="title" id="review_m_01" >
                </td>
            </tr>

            <tr>
                <td>
                    <p>작성자</p>
                </td>

                <td>
                    <input type="text" name="review_user" id="review_m_02" value="${sessionScope.id}" readonly="readonly">
                </td>
            </tr>

            <tr>
                <td>
                    <p>내용</p>
                </td>

                <td>
                    <div>
                        <div>
                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/question.png">
                            </div>

                            <p>모든 에디터에는 한글문서/오피스문서/엑셀문서 등에서 복사 붙여 넣기 하시면 안됩니다.</p>
                        </div>

                        <div>
                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/question.png">
                            </div>

                            <p>꼭 메모장 프로그램에 붙여넣기 > 다시복사하기 한 후 에디터에 넣어주세요.</p>
                        </div>

                        <div>
                            <div>
                                <img src="${pageContext.request.contextPath}/resources/img/question.png">
                            </div>

                            <p>PC 이미지 업로드 사이즈는 500px X 500px 으로 넣어주세요.</p>
                        </div>
                        
                    </div>

                    <textarea id="review_m_03"></textarea>
                    <script>
                    </script>
                </td>
            </tr>


        </table>

        <div class="review_btn_m">

            <input type="submit" value="등록" id="submit_m">

            <input type="reset" value="취소" id="reset_m">

        </div>

       	</form>
        
    </section><!--모바일-->

</body>
</html>