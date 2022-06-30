<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>notice_detail</title>
    <link href="${pageContext.request.contextPath}/resources/css/notice_detail.css" rel="stylesheet">
</head>
<body>

    <section>

        <div class="notice_detail">

            <div class="rout_nd">

                <a href="index">
                    <img src="${pageContext.request.contextPath}/resources/img/notice/home.png">
                </a>

                <p>></p>

                <p>공지사항</p>

            </div>

            <p>공지사항</p>

            <div class="line01"></div>

            <table class="box01" cellpadding="0" cellspacing="0">


				<%-- 게시판 내용 --%>       
				<c:forEach items="${bbsList}" var="bbsList">
                <tr>
                    <td>
                        <div class="title_nd">
<!--                        <p>
                                <span><이벤트></span>&nbsp;5월 18일 방송 이벤트 당첨자 안내 (스타벅스 기프티콘)
                            </p> -->
                            <p>
                                ${bbsList.title}
                            </p>
                            <!-- <p>2021.05.01</p> -->
                            <p><fmt:formatDate value="${bbsList.date}" /></p>
                        </div>
                    </td>
                </tr>

           		<tr>
                    <td>
                        <div class="txt_box">

                            <p>${bbsList.contents}</p>
                               <!--  안녕하세요 골프아이 이벤트 담당자 입니다.<br><br>

                                골프아이의 새로운 골프 라이브 이벤트에 참여해 주신 모든 고객님들께 감사의 말씀을 드립니다.<br>
                                5월 19일 오후에 진행한 이벤트 당첨자 고지 내역 중 총 43 건의 중복 추첨 사례가 뒤늦게 발견되었습니다.<br>
                                이에, 기존 당첨자의 당첨 사실에는 변동 없이 추가로 43분을 추첨하게 되었습니다.<br><br>
                                
                                서비스 이용에 불편을 드려 대단히 죄송합니다.<br><br>
                                
                                당첨되신 분께 축하의 말씀을 전하며, 앞으로도 하나투어의 다양한 이벤트에도 많은 관심 부탁드립니다.<br><br>
                                
                                
                                [고객 참여 이벤트 당첨자 안내사항]<br>
                                ※ 경품 수령을 위한 개인 정보 기재 및 동의 여부 확인 기간은 5월 24일까지입니다. <a href="#">(개인정보 입력하러 가기 ▶)</a><br>
                                ※ 경품은 6월 초 발송 예정이며, 당사 사정에 따라 다소 지연될 수 있습니다.<br>
                                ※ 경품으로 지급된 제품은 교환 및 환불이 불가합니다.<br>
                                ※ 경품 발송은 주식회사 카카오에서 진행됩니다.<br>
                                ※ 경품 발송 이후 분실, 삭제에 대해서는 당사는 책임지지 않습니다.<br> 
                                ※ 당사는 잘못된 정보 입력으로 인한 경품 미수령 및 당첨 취소에 대해 책임지지 않습니다.<br> 
                           </p> -->
                        
<!-- 
                        <table class="box02" cellpadding="0" cellspacing="0">

                            <tr>
                                <td>
                                    <p>번호</p>
                                </td>

                                <td>
                                    <p>고객명(닉네임)</p>
                                </td>

                                <td>
                                    <p>연락처 뒤 4자리</p>
                                </td>

                                <td>
                                    <p>비고</p>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <p>1</p>
                                </td>

                                <td>
                                    <p>gpf****</p>
                                </td>

                                <td>
                                    <p></p>
                                </td>

                                <td>
                                    <p>기존 당첨자</p>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <p>2</p>
                                </td>

                                <td>
                                    <p>nature21</p>
                                </td>

                                <td>
                                    <p></p>
                                </td>

                                <td>
                                    <p>기존 당첨자</p>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <p>3</p>
                                </td>

                                <td>
                                    <p>히야</p>
                                </td>

                                <td>
                                    <p></p>
                                </td>

                                <td>
                                    <p>기존 당첨자</p>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <p>4</p>
                                </td>

                                <td>
                                    <p>스윗</p>
                                </td>

                                <td>
                                    <p></p>
                                </td>

                                <td>
                                    <p>기존 당첨자</p>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <p>5</p>
                                </td>

                                <td>
                                    <p>쌀국수</p>
                                </td>

                                <td>
                                    <p></p>
                                </td>

                                <td>
                                    <p>기존 당첨자</p>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <p>6</p>
                                </td>

                                <td>
                                    <p>신라모노그램가즈아</p>
                                </td>

                                <td>
                                    <p></p>
                                </td>

                                <td>
                                    <p>기존 당첨자</p>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <p>7</p>
                                </td>

                                <td>
                                    <p>사라</p>
                                </td>

                                <td>
                                    <p></p>
                                </td>

                                <td>
                                    <p>기존 당첨자</p>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <p>8</p>
                                </td>
                                <td>
                                    <p>man*****</p>
                                </td>
                                <td>
                                    <p></p>
                                </td>
                                <td>
                                    <p>기존 당첨자</p>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <p>9</p>
                                </td>
                                <td>
                                    <p>하나로떠나요</p>
                                </td>
                                <td>
                                    <p></p>
                                </td>
                                <td>
                                    <p>기존 당첨자</p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>10</p>
                                </td>
                                <td>
                                    <p>몽</p>
                                </td>
                                <td>
                                    <p></p>
                                </td>
                                <td>
                                    <p>기존 당첨자</p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>11</p>
                                </td>
                                <td>
                                    <p>whn908</p>
                                </td>
                                <td>
                                    <p></p>
                                </td>
                                <td>
                                    <p>기존 당첨자</p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>12</p>
                                </td>
                                <td>
                                    <p>pas*******</p>
                                </td>
                                <td>
                                    <p></p>
                                </td>
                                <td>
                                    <p>기존 당첨자</p>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <p>13</p>
                                </td>
                                <td>
                                    <p>고마워유</p>
                                </td>
                                <td>
                                    <p></p>
                                </td>
                                <td>
                                    <p>기존 당첨자</p>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <p>14</p>
                                </td>
                                <td>
                                    <p>여행행</p>
                                </td>
                                <td>
                                    <p></p>
                                </td>
                                <td>
                                    <p>기존 당첨자</p>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <p>15</p>
                                </td>
                                <td>
                                    <p>당당</p>
                                </td>
                                <td>
                                    <p></p>
                                </td>
                                <td>
                                    <p>기존 당첨자</p>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <p>16</p>
                                </td>
                                <td>
                                    <p>신라라</p>
                                </td>
                                <td>
                                    <p></p>
                                </td>
                                <td>
                                    <p>기존 당첨자</p>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <p>17</p>
                                </td>
                                <td>
                                    <p>동글이</p>
                                </td>
                                <td>
                                    <p></p>
                                </td>
                                <td>
                                    <p>기존 당첨자</p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>18</p>
                                </td>
                                <td>
                                    <p>새롭다낭</p>
                                </td>
                                <td>
                                    <p></p>
                                </td>
                                <td>
                                    <p>기존 당첨자</p>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <p>19</p>
                                </td>
                                <td>
                                    <p>sbn****</p>
                                </td>
                                <td>
                                    <p></p>
                                </td>
                                <td>
                                    <p>기존 당첨자</p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>20</p>
                                </td>
                                <td>
                                    <p>엑스레이티드빵야빵야</p>
                                </td>
                                <td>
                                    <p></p>
                                </td>
                                <td>
                                    <p>기존 당첨자</p>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <p>21</p>
                                </td>
                                <td>
                                    <p>nhi******</p>
                                </td>
                                <td>
                                    <p></p>
                                </td>
                                <td>
                                    <p>기존 당첨자</p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>22</p>
                                </td>
                                <td>
                                    <p>사랑여행</p>
                                </td>
                                <td>
                                    <p></p>
                                </td>
                                <td>
                                    <p>기존 당첨자</p>
                                </td>
                            </tr>

                        </table> 
-->

                        </div>

                    </td>
                </tr>
               </c:forEach>
           	   <%-- 게시판 내용 --%> 

            </table>

            <a href="notice">
                <div class="reset">
                    <p>목록으로</p>
                </div>
            </a>

        </div><!--notice_detail-->

    </section>

</body>
</html>