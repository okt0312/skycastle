<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mygroupNoticeList</title>
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
	#mygroupNoticeTable{
	    margin: auto;
	}
	#mygroupNoticeTable>thead>tr{
	    height: 50px;
	}
	#mygroupNoticeTable>tbody>tr{
	    height: 34px;
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

        <div id="mygroupContent">
            <h2>공지사항</h2>
            <hr><br><br>
            
            <table id="mygroupNoticeTable">
                <tbody>
                    <tr class="noticeTitle">
                        <td class="title">등급별 혜택 안내</td>
                        <td class="enrollDate">2020.05.09</td>
                    </tr>
                    <tr class="noticeTitle">
                        <td class="title">소모임 이용에 관한 안내 사항</td>
                        <td class="enrollDate">2020.05.06</td>
                    </tr>
                    <tr class="noticeTitle">
                        <td class="title">부적절한 용어나 언행 사용, 회원에 대한 모욕 및 비방 등에 관한 신고 방법</td>
                        <td class="enrollDate">2020.04.29</td>
                    </tr>
                    <tr class="noticeTitle">
                        <td class="title">공간 운영 방침 안내</td>
                        <td class="enrollDate">2020.04.25</td>
                    </tr>
                    <tr class="noticeTitle">
                        <td class="title">소모임 개설에 관한 안내</td>
                        <td class="enrollDate">2020.04.02</td>
                    </tr>
                    <tr class="noticeTitle">
                        <td class="title">회원 등급제 시행 안내</td>
                        <td class="enrollDate">2020.03.22</td>
                    </tr>
                    <tr class="noticeTitle">
                        <td class="title">스터디 및 모임 공간 예약 시 주의사항</td>
                        <td class="enrollDate">2020.02.27</td>
                        
                    </tr>
                    <tr class="noticeTitle">
                        <td class="title">결제 및 환불 안내</td>
                        <td class="enrollDate">2020.02.22</td>
                    </tr>
                    <tr class="noticeTitle">
                        <td class="title">소모임 운영을 시작합니다.</td>
                        <td class="enrollDate">2020.01.30</td>
                    </tr>
                </tbody>    
            </table>

            <!-- 페이징바 -->
            <div class="paging" align="center">          
                <a href="#" class="btn_arr prev"><span class="hide">Prev</span></a>     
                <a href="#" class="on">1</a><!— D : 활성화페이지일 경우 : on 처리 —>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#">5</a>
                <a href="#" class="btn_arr next"><span class="hide">Next</span></a>             
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
            console.log(memStatus);
        }
    </script>
</body>
</html>