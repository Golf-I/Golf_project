<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>questions</title>
    <link href="${pageContext.request.contextPath}/resources/css/questions.css" rel="stylesheet">
</head>
<body>

   <section>

        <div class="questions">
    
            <div class="questions_left">
    
                <div class="questions_title01">
    
                    <p>마이페이지</p>
    
                    <div>
                        <img src="${pageContext.request.contextPath}/resources/img/questions/location.png">
                    </div>
    
                </div><!--title01-->
    
                <ul class="questions_menu">

                    <a href="mypage">
                        <li>
                            <p>프로필관리</p>
                            <p>></p>
                        </li>
                    </a>
    
                    <a href="member_reservation">
                        <li>
                            <p>예약리스트</p>
                            <p>></p>
                        </li>
                    </a>
    
                    <a href="notice">
                        <li>
                            <p>공지사항</p>
                            <p>></p>
                        </li>
                    </a>
    
                    <a href="questions">
                        <li>
                            <p>자주묻는질문</p>
                            <p>></p>
                        </li>
                    </a>
    
                </ul>
    
            </div><!--left-->
    
    
            <div class="questions_right">

                <div class="route_qu">

                    <div>
                        <img src="${pageContext.request.contextPath}/resources/img/questions/find.png">
                    </div>

                    <p>></p>

                    <p>마이페이지</p>

                    <p>></p>

                    <p>자주묻는질문</p>

                </div><!--route-->

                <div class="questions_title02">


                    <div class="txt01">

                        <p>자주묻는질문</p>

                    </div>

                    <div class="select_box">

                        <div>

                        <select id="select_menu">

                            <option>전체</option>
                            <option>골프장</option>
                            <option>호텔</option>
                            <option>차량</option>

                        </select>

                        <input type="text" id="search_word" placeholder="검색어를 입력해주세요.">

                        <input type="button" id="search" value="검색">

                        </div>


                    </div><!--select_box-->


                </div><!--questions_title02-->

                <div class="line01"></div>



                <div class="question_box">

                    <ul>

                        <li>
                            <div class="question01">
                               
                                <p>Q</p>

                                <p>베트남 5월달 요금표 입니다.</p>

                            </div>

                            <div class="answer01">

                                <p>A</p>

                                <div>
                                    <p>11월 ~3월까지는 현지 골프장 정책에 따라 출발 2주전 티오프 시간이 배정됩니다.<br>
                                    예약시 희망 티오프 시간을 알려주시면, 최대한 배정해 드리고 있습니다.<br>
                                    단, 현지 골프장 사정으로 인하여 티업시간 변경이 어려울 수 있습니다.<br>
                                    (골프장 별로 Break time이 있습니다. FA 코리아, 선밸리 1부 마지막 티오프 시간 08:30. 2부 시작 11:00 이후 )</p>
                                </div>

                            </div>

                        </li>

                        <li>
                            <div class="question02">
                               
                                <p>Q</p>

                                <p>5월 20일 베트남 하노이 썬라이즈CC 급모객</p>

                            </div>

                            <div class="answer02">

                                <p>A</p>

                                <div>
                                    <p>11월 ~3월까지는 현지 골프장 정책에 따라 출발 2주전 티오프 시간이 배정됩니다.<br>
                                    예약시 희망 티오프 시간을 알려주시면, 최대한 배정해 드리고 있습니다.<br>
                                    단, 현지 골프장 사정으로 인하여 티업시간 변경이 어려울 수 있습니다.<br>
                                    (골프장 별로 Break time이 있습니다. FA 코리아, 선밸리 1부 마지막 티오프 시간 08:30. 2부 시작 11:00 이후 )</p>
                                </div>

                            </div>

                        </li>

                        <li>
                            <div class="question03">
                               
                                <p>Q</p>

                                <p>4월 제주도 하드블럭 요금표 입니다.</p>

                            </div>

                            <div class="answer03">

                                <p>A</p>

                                <div>
                                    <p>11월 ~3월까지는 현지 골프장 정책에 따라 출발 2주전 티오프 시간이 배정됩니다.<br>
                                    예약시 희망 티오프 시간을 알려주시면, 최대한 배정해 드리고 있습니다.<br>
                                    단, 현지 골프장 사정으로 인하여 티업시간 변경이 어려울 수 있습니다.<br>
                                    (골프장 별로 Break time이 있습니다. FA 코리아, 선밸리 1부 마지막 티오프 시간 08:30. 2부 시작 11:00 이후 )</p>
                                </div>

                            </div>

                        </li>

                        <li>
                            <div class="question04">
                               
                                <p>Q</p>

                                <p>3월 필리핀 골프 하드블럭 요금표 공유합니다.</p>

                            </div>

                            <div class="answer04">

                                <p>A</p>

                                <div>
                                    <p>11월 ~3월까지는 현지 골프장 정책에 따라 출발 2주전 티오프 시간이 배정됩니다.<br>
                                    예약시 희망 티오프 시간을 알려주시면, 최대한 배정해 드리고 있습니다.<br>
                                    단, 현지 골프장 사정으로 인하여 티업시간 변경이 어려울 수 있습니다.<br>
                                    (골프장 별로 Break time이 있습니다. FA 코리아, 선밸리 1부 마지막 티오프 시간 08:30. 2부 시작 11:00 이후 )</p>
                                </div>

                            </div>

                        </li>

                        <li>
                            <div class="question05">
                               
                                <p>Q</p>

                                <p>원하는 티오프 시간을 지정할 수 있나요?</p>

                            </div>

                            <div class="answer05">

                                <p>A</p>

                                <div>
                                    <p>11월 ~3월까지는 현지 골프장 정책에 따라 출발 2주전 티오프 시간이 배정됩니다.<br>
                                    예약시 희망 티오프 시간을 알려주시면, 최대한 배정해 드리고 있습니다.<br>
                                    단, 현지 골프장 사정으로 인하여 티업시간 변경이 어려울 수 있습니다.<br>
                                    (골프장 별로 Break time이 있습니다. FA 코리아, 선밸리 1부 마지막 티오프 시간 08:30. 2부 시작 11:00 이후 )</p>
                                </div>

                            </div>

                        </li>

                        <li>
                            <div class="question06">
                               
                                <p>Q</p>

                                <p>4월 제주도 하드블럭 요금표 입니다.</p>

                            </div>

                            <div class="answer06">

                                <p>A</p>

                                <div>
                                    <p>11월 ~3월까지는 현지 골프장 정책에 따라 출발 2주전 티오프 시간이 배정됩니다.<br>
                                    예약시 희망 티오프 시간을 알려주시면, 최대한 배정해 드리고 있습니다.<br>
                                    단, 현지 골프장 사정으로 인하여 티업시간 변경이 어려울 수 있습니다.<br>
                                    (골프장 별로 Break time이 있습니다. FA 코리아, 선밸리 1부 마지막 티오프 시간 08:30. 2부 시작 11:00 이후 )</p>
                                </div>

                            </div>

                        </li>

                        <li>
                            <div class="question07">
                               
                                <p>Q</p>

                                <p>3월 필리핀 골프 하드블럭 요금표 공유합니다.</p>

                            </div>

                            <div class="answer07">

                                <p>A</p>

                                <div>
                                    <p>11월 ~3월까지는 현지 골프장 정책에 따라 출발 2주전 티오프 시간이 배정됩니다.<br>
                                    예약시 희망 티오프 시간을 알려주시면, 최대한 배정해 드리고 있습니다.<br>
                                    단, 현지 골프장 사정으로 인하여 티업시간 변경이 어려울 수 있습니다.<br>
                                    (골프장 별로 Break time이 있습니다. FA 코리아, 선밸리 1부 마지막 티오프 시간 08:30. 2부 시작 11:00 이후 )</p>
                                </div>

                            </div>

                        </li>

                        <li>
                            <div class="question08">
                               
                                <p>Q</p>

                                <p>5월 8일 제주 오라CC 급모객</p>

                            </div>

                            <div class="answer08">

                                <p>A</p>

                                <div>
                                    <p>11월 ~3월까지는 현지 골프장 정책에 따라 출발 2주전 티오프 시간이 배정됩니다.<br>
                                    예약시 희망 티오프 시간을 알려주시면, 최대한 배정해 드리고 있습니다.<br>
                                    단, 현지 골프장 사정으로 인하여 티업시간 변경이 어려울 수 있습니다.<br>
                                    (골프장 별로 Break time이 있습니다. FA 코리아, 선밸리 1부 마지막 티오프 시간 08:30. 2부 시작 11:00 이후 )</p>
                                </div>

                            </div>

                        </li>

                        <li>
                            <div class="question09">
                               
                                <p>Q</p>

                                <p>4월 제주도 하드블럭 요금표 입니다.</p>

                            </div>

                            <div class="answer09">

                                <p>A</p>

                                <div>
                                    <p>11월 ~3월까지는 현지 골프장 정책에 따라 출발 2주전 티오프 시간이 배정됩니다.<br>
                                    예약시 희망 티오프 시간을 알려주시면, 최대한 배정해 드리고 있습니다.<br>
                                    단, 현지 골프장 사정으로 인하여 티업시간 변경이 어려울 수 있습니다.<br>
                                    (골프장 별로 Break time이 있습니다. FA 코리아, 선밸리 1부 마지막 티오프 시간 08:30. 2부 시작 11:00 이후 )</p>
                                </div>

                            </div>

                        </li>

                        <li>
                            <div class="question10">
                               
                                <p>Q</p>

                                <p>3월 필리핀 골프 하드블럭 요금표 공유합니다.</p>

                            </div>

                            <div class="answer10">

                                <p>A</p>

                                <div>
                                    <p>11월 ~3월까지는 현지 골프장 정책에 따라 출발 2주전 티오프 시간이 배정됩니다.<br>
                                    예약시 희망 티오프 시간을 알려주시면, 최대한 배정해 드리고 있습니다.<br>
                                    단, 현지 골프장 사정으로 인하여 티업시간 변경이 어려울 수 있습니다.<br>
                                    (골프장 별로 Break time이 있습니다. FA 코리아, 선밸리 1부 마지막 티오프 시간 08:30. 2부 시작 11:00 이후 )</p>
                                </div>

                            </div>

                        </li>

                        <li>
                            <div class="question11">
                               
                                <p>Q</p>

                                <p>5월 8일 제주 오라CC 급모객</p>

                            </div>

                            <div class="answer11">

                                <p>A</p>

                                <div>
                                    <p>11월 ~3월까지는 현지 골프장 정책에 따라 출발 2주전 티오프 시간이 배정됩니다.<br>
                                    예약시 희망 티오프 시간을 알려주시면, 최대한 배정해 드리고 있습니다.<br>
                                    단, 현지 골프장 사정으로 인하여 티업시간 변경이 어려울 수 있습니다.<br>
                                    (골프장 별로 Break time이 있습니다. FA 코리아, 선밸리 1부 마지막 티오프 시간 08:30. 2부 시작 11:00 이후 )</p>
                                </div>

                            </div>

                        </li>

                        <li>
                            <div class="question12">
                               
                                <p>Q</p>

                                <p>3월 필리핀 골프 하드블럭 요금표 공유합니다.</p>

                            </div>

                            <div class="answer12">

                                <p>A</p>

                                <div>
                                    <p>11월 ~3월까지는 현지 골프장 정책에 따라 출발 2주전 티오프 시간이 배정됩니다.<br>
                                    예약시 희망 티오프 시간을 알려주시면, 최대한 배정해 드리고 있습니다.<br>
                                    단, 현지 골프장 사정으로 인하여 티업시간 변경이 어려울 수 있습니다.<br>
                                    (골프장 별로 Break time이 있습니다. FA 코리아, 선밸리 1부 마지막 티오프 시간 08:30. 2부 시작 11:00 이후 )</p>
                                </div>

                            </div>

                        </li>
                    
                    </ul>


                </div>

                <div class="num_chk">

                    <a href="#">
                        <p><</p>
                    </a>

                    <a href="#">
                        <p>1</p>
                    </a>

                    <a href="#">
                        <p>2</p>
                    </a>

                    <a href="#">
                        <p>3</p>
                    </a>

                    <a href="#">
                        <p>4</p>
                    </a>

                    <a href="#">
                        <p>5</p>
                    </a>

                    <a href="#">
                        <p>6</p>
                    </a>

                    <a href="#">
                        <p>7</p>
                    </a>

                    <a href="#">
                        <p>></p>
                    </a>

                </div>



            </div><!--right-->
        
        </div>

	</section>
	
</body>
</html>