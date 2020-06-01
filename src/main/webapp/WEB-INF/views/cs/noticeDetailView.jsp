<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<style>
/* div{border:1px solid black} */
#outer{
    width: 700px;
    height: 750px;
    margin: auto;
    margin-top: 65px;
    box-sizing: border-box;
}
.mainTitle{
    width: 100%;
    font-size: 30px;
    font-weight: 600;
    color: #333333;
    margin-bottom: 40px;
    text-align: center;
    padding-bottom: 20px;
    border-bottom:1px solid #333333;
}
/* 공지사항 상세 css */
#noticeTable{
    margin:auto;      
    width: 100%;
    text-align:left;
    align-self: center;                  
    border-collapse: collapse; 
    box-sizing: border-box;         
}
#mainNotice{
    width: 620px;
    height:40px;
    font-size: 12px;
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
    width:620px;
    height:20px;
    text-align: left;
    padding-top: 5px;
    padding-bottom: 5px;
    font-size: 12px;
    font-weight: 400;
}
.enrollDate{
    font-size: 12px;
    font-weight: 400;
    text-align: right;
}
.noticeTitle{
    height:30px;
    border-bottom:1px solid #dddddd;
}
.title{
    padding-bottom: 15px;
    font-size: 24px;
}
#noticeDetail{
    width:100%;
    height: 450px;
}
.noticeList{
    margin-top: 25px;
}
#noticeList{
    width: 200px;
    height: 30px;
    border-radius: 4px;
    background: #fdce07;
    color: #333333;
    font-size: 14px;
    font-weight: 400;
}
#noticeList:hover{
    color:#333333;
    background-color: white;
    border: solid 1px rgb(231, 166, 44);
}
</style>
<body>
<body>

	<jsp:include page="../common/menubar.jsp"/>
	
    <!-- FAQ 테이블 -->
    <div id="outer">
        <div class="mainTitle">
            공지사항
        </div>
        
        <table id="noticeTable">
            <thead>
                <tr class="noticeTitle">
                    <td class="title">${ n.noticeTitle }</td>
                    <td class="enrollDate">${ n.enrollDate }</td>
                </tr>
            </thead>
            <tbody>
                <tr id="noticeDetail">
                   <td>
                       <p>
                            <!-- 안녕하세요. 스카이캐슬입니다. <br>
                            항상 저희 스카이캐슬을 이용해 주시는 고객님께 깊은 감사를 드립니다.  <br>
                            스카이캐슬의 개인정보 처리방침이 변경되어, 아래와 같이 안내 드리오니 이용에 참고하시기 바랍니다. <br><br>       
                        
                            [개인정보 처리방침 변경 사항] <br><br>
                            ■ 주요 변경사항 <br>

                            1. 개인정보 처리방침 추가 <br>
                            2. 소모임 개인정보 처리방침 추가 <br>              
                            3. 홈페이지 비회원 제휴 및 상담 개인정보 처리방침 추가 <br><br>
                            ■ 변경일시 : (시행일) 2020년 6월 1일
                            <br>
                            ※ 세부 내용은 개인정보 처리방침 전문을 참조하시기 바랍니다.    -->
                            ${ n.noticeContent }
                       </p>
                   </td>
                </tr>
            </tbody>    
        </table>

        <div class="noticeList" align="center">          
           <button id="noticeList">목록</button>
        </div>

    </div>
    
    <jsp:include page="../common/footer.jsp"/>
	
</body>
</html>