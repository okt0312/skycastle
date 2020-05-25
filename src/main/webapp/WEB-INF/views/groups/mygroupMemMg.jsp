<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>mygroupMemMg</title>

    <!-- 모달 부트스트랩-->
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <!-- 모달 부트스트랩 -->

    <style>
        /* 마이소모임 메뉴바 */
        #mygroupMenubar{
            width: 25%;
            margin-top: 100px;
            float: left;
            text-align: center;
        }
        /* 메뉴바 표 */
        #groupMenuTable{
            width: 130px;
            margin: auto;
        }
        .sky_btn1 /* 확인 버튼 */
        {
            width: 130px;
            height: 40px;
            text-align: center;
            font-size: 15px;
            font-weight: bold;
            border-radius: 5px;
            padding: 10px;
            cursor: pointer;
            background: #fdce07;
            color: #000000;
            border: 0;
        }
        .sky_btn2   /* 취소, 첨부파일 버튼 */
        {
            width: 130px;
            height: 40px;
            text-align: center;
            font-size: 15px;
            font-weight: bold;
            border-radius: 5px;
            padding: 10px;
            cursor: pointer;
            background: #333333;
            color: white;
            border: 0;
        }
        .sky_btn11 /* 확인 버튼 */
        {
            width: 100px;
            height: 30px;
            text-align: center;
            font-size: 15px;
            font-weight: bold;
            border-radius: 5px;
            cursor: pointer;
            background: #fdce07;
            color: #000000;
            border: 0;
        }
        /* 채팅버튼 */
        #chatBtnArea{
            margin-top: 50px;
        }
        /* 소모임내용 */
        #mygroupContent{
            width: 75%;
            margin-top: 50px;
            float: left;
        }
        #mygroupNoticeTable{
            margin: auto;
        }
        #mygroupNoticeTable>thead>tr{
            height: 50px;
        }
        #mygroupNoticeTable>tbody>tr{
            height: 34px;
        }

        /* 회원 목록 테이블 css */
        #mygroupMemberTable{
            width: 80%;
            height: 450px;
            text-align:left;
            align-self: center;                  
            font-size: 13px;
            border-collapse: collapse; 
            box-sizing: border-box;
            margin: auto;
        }
        .registerName{
            height:34px;
            text-align: left;
            padding-top: 5px;
            padding-bottom: 5px;
            font-weight: 400;
        }
        .registerDate{
            font-weight: 400;
            text-align: center;
        }
        .register{border-bottom:1px solid #dddddd;}
        /* .registerId:hover{
            text-decoration: underline;
            color: rgb(216, 64, 38);
            cursor: pointer;
        } */

        /* 페이징바 css */
        .paging{
            padding:19px;
            text-align:center;
        }
        .paging a{
            width:23px;
            height:23px;
            padding-top:2px;
            display:inline-block;
            vertical-align:middle;
            text-decoration: none;
            color: #333333;
        }
        .paging a:hover{text-decoration:underline;}
        .paging .btn_arr{text-decoration:none;}
        .paging .btn_arr{
            margin:0 3px;
            padding-top:0;
            border:1px solid #ddd;
            border-radius:30px;
            font-size: 9px;
            line-height: 20px;
        }
        .paging .on{
            padding-top:1px;
            height:22px;
            border-radius:30px;
            font-weight:bold;
            text-decoration: underline;
        }
        .paging .on:hover{text-decoration:none;}

        /* 모달 스타일 시작*/
        .modal-body{
            margin:10px;
        }
        /* 모달 스타일 끝*/
    </style>
</head>
<body>
    <jsp:include page="../common/menubar.jsp"/>
            <div id="mygroup">
                <div id="mygroupMenubar">
                    <h2>소모임명</h2>

                    <table id="groupMenuTable" border="1">
                        <tr>
                            <th style="width: 100px; height: 40px;">공지사항</th>
                        </tr>
                        <tr>
                            <td style="width: 100px; height: 40px; text-align: center;">캘린더</td>
                        </tr>
                    </table>

                    <div id="chatBtnArea">
                        <button class="sky_btn1">채팅</button>
                    </div>
                    <div id="option-btn" style="margin-top: 300px;">
                        <button class="sky_btn2" onclick="deleteConfirm();">소모임 나가기</button>
                    </div>
    <!--                방장은
                    <div id="option-btn" style="margin-top: 300px;">
                        <button class="sky_btn2">회원관리</button>
                    </div>
    -->
                </div>

                <div id="mygroupContent">
                    <h2>회원관리</h2>
                    <hr><br><br>
                    
                    <table id="mygroupMemberTable">
                        <thead>
                            <tr class="register">
                                <th class="registerId" style="width:20%;">아이디</th>
                                <th class="registerName" style="width:40%;">회원명</th>
                                <th class="registerDate" style="width:10%;">신청일</th>
                                <th class="registerButton" style="width:20%; text-align: center;">수락/거절</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="register">
                                <td class="registerId">userId</td><!--아이디 누르면 모달창-->
                                <td class="registerName">김신영</td>
                                <td class="registerDate">2020.05.09</td>
                                <td class="registerButton" style="text-align: center;">
                                    <button class="sky_btn11" data-toggle="modal" data-target="#enrollDetailModal">상세보기</button>
                                </td>
                            </tr>
                            <tr class="register">
                                <td class="registerId">userId</td>
                                <td class="registerName">박대광</td>
                                <td class="registerDate">2020.05.06</td>
                                <td class="registerButton" style="text-align: center;">
                                    <button class="sky_btn11" data-toggle="modal" data-target="#enrollDetailModal">상세보기</button>
                                </td>
                            </tr>
                            <tr class="register">
                                <td class="registerId" style="width:20%;">userId</td>
                                <td class="registerName">서윤정</td>
                                <td class="registerDate">2020.04.29</td>
                                <td class="registerButton" style="text-align: center;">
                                    <button class="sky_btn11" data-toggle="modal" data-target="#enrollDetailModal">상세보기</button>
                                </td>
                            </tr>
                            <tr class="register">
                                <td class="registerId" style="width:20%;">userId</td>
                                <td class="registerName">오경택</td>
                                <td class="registerDate">2020.04.25</td>
                                <td class="registerButton" style="text-align: center;">
                                    <button class="sky_btn11" data-toggle="modal" data-target="#enrollDetailModal">상세보기</button>
                                </td>
                            </tr>
                            <tr class="register">
                                <td class="registerId" style="width:20%;">userId</td>
                                <td class="registerName">이태경</td>
                                <td class="registerDate">2020.04.02</td>
                                <td class="registerButton" style="text-align: center;">
                                    <button class="sky_btn11" data-toggle="modal" data-target="#enrollDetailModal">상세보기</button>
                                </td>
                            </tr>
                            <tr class="register">
                                <td class="registerId" style="width:20%;">userId</td>
                                <td class="registerName">조연화</td>
                                <td class="registerDate">2020.03.22</td>
                                <td class="registerButton" style="text-align: center;">
                                    <button class="sky_btn11" data-toggle="modal" data-target="#enrollDetailModal">상세보기</button>
                                </td>
                            </tr>
                            <tr class="register">
                                <td class="registerId" style="width:20%;">userId</td>
                                <td class="registerName">가가가</td>
                                <td class="registerDate">2020.02.27</td>
                                <td class="registerButton" style="text-align: center;">
                                    <button class="sky_btn11" data-toggle="modal" data-target="#enrollDetailModal">상세보기</button>
                                </td>
                            </tr>
                            <tr class="register">
                                <td class="registerId" style="width:20%;">userId</td>
                                <td class="registerName">나나나</td>
                                <td class="registerDate">2020.02.22</td>
                                <td class="registerButton" style="text-align: center;">
                                    <button class="sky_btn11" data-toggle="modal" data-target="#enrollDetailModal">상세보기</button>
                                </td>
                            </tr>
                            <tr class="register">
                                <td class="registerId" style="width:20%;">userId</td>
                                <td class="registerName">다다다</td>
                                <td class="registerDate">2020.01.30</td>
                                <td class="registerButton" style="text-align: center;">
                                    <button class="sky_btn11" data-toggle="modal" data-target="#enrollDetailModal">상세보기</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    <!-- 페이징바 -->
                    <div class="paging" align="center">          
                        <a href="#" class="btn_arr prev"><span class="hide">Prev</span></a>     
                        <a href="#" class="on">1</a><!-- D : 활성화페이지일 경우 : on 처리 -->
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#">5</a>
                        <a href="#" class="btn_arr next"><span class="hide">Next</span></a>             
                    </div>
                    <br><br><br><br><br>

                    <!-- 모달 시작 -->
                    <div class="modal fade" id="enrollDetailModal"> <!-- modal별 id 변경해주세요-->
                        <div class="modal-dialog">
                            <div class="modal-content">
                        
                                <!-- Modal Header -->
                                <div class="modal-header">
                                <h4 class="modal-title" style="margin:auto;padding:0;">소모임 신청회원 관리 </h4>
                                <button type="button" class="close" data-dismiss="modal" style="margin:0;padding:0;">&times;</button>
                                </div>
                            
                                <!-- Modal body -->
                                <div class="modal-body">
                                    <table style="width: 400px;">
                                        <tr>
                                            <th style="width: 80px;">아이디</th>
                                            <td style="width: 320px;">user01</td>
                                        </tr>
                                        <tr>
                                            <th>회원명</th>
                                            <td>조연화</td>
                                        </tr>
                                        <tr>
                                            <th>신청사유</th>
                                            <td><textarea cols="40" rows="10" style="resize: none;" readonly>열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ</textarea></td>
                                            <!--서머노트쓸까?-->
                                        </tr>
                                    </table>
                                </div>
                            
                                <!-- Modal footer -->
                                <div class="modal-footer" style="margin:auto;">
                                    <!-- 하단버튼 영역-->
                                    <button type="button" class="btn btn-danger sky_btn1" style="width:200px; height:50px;">수락</button>
                                    <button type="button" class="btn btn-danger sky_btn2" data-dismiss="modal" style="width:200px; height:50px;">거절</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 모달 끝 -->
                </div>
            </div>
            
    <jsp:include page="../common/footer.jsp"/>
            
                <script>
        function deleteConfirm() {
            var result = window.confirm("소모임을 나가시겠습니까?");
            var memStatus = "";

            if(result){
                memStatus = "N";
            }else{
                memStatus = "Y";
            }
            console.log(memStatus);
        }
    </script>
</body>
</html>