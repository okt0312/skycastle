<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <!-- jQuery 라이브러리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- 부트스트랩에서 제공하고 있는 스타일 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <!-- 부트스트랩에서 제공하고 있는 스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <title>mygroupNoticeEnrollForm</title>
    <style>
        /**/
        #groupMenuTable{margin: auto;}
        #groupMenuTable td{width: 130px; height: 40px;
                    border-top: 1px solid; border-right: 1px solid;
                    border-left: 1px solid;
        } 


        /* 마이소모임 메뉴바 */
        #mygroupMenubar{
            width: 25%;
            margin-top: 100px;
            float: left;
            text-align: center;
        }
        /* 메뉴바 표 */
        
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
        .sky_btn11 /* 댓글달기 버튼 */
        {
            width: 100px;
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
        .sky_btn22   /* 신고 버튼 */
        {
            width: 80px;
            height: 30px;
            text-align: center;
            font-size: 15px;
            font-weight: bold;
            border-radius: 5px;

            cursor: pointer;
            background: #333333;
            color: white;
            border: 0;
        }
        /* 채팅버튼 */
        #chat-btn{
            margin-top: 50px;
        }
        /* 소모임내용 */
        #mygroupContent{
            width: 75%;
            margin-top: 100px;
            float: left;
        }

        /* 공지사항 테이블 css */
        #mygroupNoticeTable{
            width: 80%;
            height: 450px;
            text-align:left;
            align-self: center;                  
            border-collapse: collapse; 
            box-sizing: border-box;
            margin: auto;
        }
        #mainNotice{
            height:50px;
            font-size: 13px;
            color: #333333;
            border-bottom:2px solid #dddddd;
        }
        #mainNotice button{
            width:50px;
            height:25px;
            margin-right: 5px;
            border-radius: 4px;
            background:#fdce07;
            color: #333333;
            font-weight: bold;
        }
        .title{
            height:34px;
            text-align: left;
            padding-top: 5px;
            padding-bottom: 5px;
            font-size: 13px;
            font-weight: 400;
        }
        .enrollDate{
            font-size: 13px;
            font-weight: 400;
            text-align: right;
        }
        .noticeTitle{
            border-bottom:1px solid #dddddd;
        }
        #mygroupNoticeTable tr:hover{
            text-decoration: underline;
            color: rgb(216, 64, 38);
            cursor: pointer;
        }
    </style>
</head>
<body>
    <jsp:include page="../common/menubar.jsp"/>
            <div id="mygroup">
                <div id="mygroupMenubar">
                    <h2>소모임명</h2>

                    <table id="groupMenuTable" style="border-collapse:collapse;">
                        <tr>
                            <td>공지사항</td>
                        </tr>
                        <tr>
                            <td style="border-bottom: 1px solid;">캘린더</td>
                        </tr>
                    </table>

                    <div id="chat-btn">
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



                <!-- mygroupContent 영역에 콘텐츠 작성 -->
                <div id="mygroupContent">
                    <h2>공지사항</h2>
                    <hr><br><br>
                    
                        <div id="noticeTitle">
                            <input type="text" style="width: 595px;" placeholder="제목을 입력하세요">
                        </div>
                        <hr>
                        <div id="noticeContent" style="margin-top: 50px;">
                            <textarea cols="78" rows="10" placeholder="내용을 입력하세요"></textarea>
                        </div>

                        <br><br>

                        <div align="center">
                            <button class="listBtn sky_btn1">등록하기</button>
                        </div>
                        <br><br><br><br><br>
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
            //console.log(memStatus);
        }
    </script>
</body>
</html>