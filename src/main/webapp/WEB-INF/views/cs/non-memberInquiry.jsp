<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
/* div{border: 1px solid black} */
#outer{
    margin:auto;
    margin-top: 50px;
    width: 700px;
    height:800px;
    align-items: center;
    box-sizing: border-box;
}
.mainTitle{
    width: 100%;
    font-size: 30px;
    font-weight: 700;
    margin-bottom: 20px;
    text-align: center;
    border-bottom-style: ridge;
}
.mainTitle p{
    font-size: 14px;
    font-weight: 400;
}
/* 공지사항 테이블 css */
#noticeTable {
    width:100%;
    text-align:left;
    border-collapse: collapse; 
}
#noticeTable a{
    text-decoration: none;
    color: #444;
}
.infoTitle{
    width:220px;
    height:20px;
    margin-top: 5px;
}
/* 질문 */
#question{
    width:100%;
    height:30px;
    margin-top:15px;
    border-radius: 4px;
    border:1px solid rgb(175,175,175);
}
/* 내용창 css */
.inputContent{
  margin-top: 15px;
  width: 100%; 
  height: 280px; 
  font-size: 15px; 
  border-radius: 4px;
  resize: none;
}
#textContent{
  width: 100%; 
  height: 280px; 
  font-size: 12px; 
  border-radius: 4px;
  border-color:rgb(175,175,175);
  resize: none;
}
/* 버튼 css */
#enrollBtn{
    width: 120px;
    height: 40px;
    box-sizing: border-box;    
    float: right;
    border-radius: 5px;
    text-align: center;
    background-color: #fdce07;
    border-style:none;
    color: #333333;
    font-size: 14px;
    font-weight: 700;
}
#enrollBtn:hover{
    color:#333333;
    background-color: white;
    border: solid 1px rgb(231, 166, 44);
}
.attach{
    width:100%;
    height:30px;
    margin-top: 15px;
    padding-left: 5px;
    line-height: 30px;
}
</style>
<body>

	<jsp:include page="../common/menubar.jsp"/>
	
    <div id="outer">
        <div class="mainTitle">문의하기
            <p>
                고객님의 작은 소리 하나도 소중하게 생각하는 스카이캐슬이 되겠습니다. <br>
                궁금한 점, 하고 싶은 이야기를 남겨주세요! <br>
                쉽고, 빠르게 해결해 드리겠습니다.
            </p>                                                                                                    
        </div>
        
        <form id="enrollForm" method="post" action="insert.cs" enctype="multipart/form-data">
	        <table id="noticeTable">
	            <tr>
	                <td width=60>* 이름</td>
	                <td><input type="text" class="infoTitle" name="userName"></td>
	            </tr>
	            <tr>
	                <td width=60>* 이메일</td>
	                <td><input type="email" class="infoTitle" name="email"></td>
	            </tr>
	
	            <tr>
	                <td colspan="2">
	                    <input type="text" id="question" placeholder="제목을 입력해주세요" name="qnaTitle">
	                </td>
	            </tr>
	            <tr>
	                <td colspan="2">
	                    <div class="inputContent">
							<textarea placeholder="내용을 입력해주세요." id="textContent" maxlength="4000" name="qnaContent"></textarea><br>
	                    </div>
	                </td>
	            </tr>
	            <tr> 
	                <td colspan="2">
	                    <div class="attach">
	                        <label>첨부파일 | </label>
	                        <input type="file" name="uploadFile">
	                    </div>
	                </td>
	            </tr>
	        </table><br>

	        <div class="btns">
	            <button type="submit" id="enrollBtn">등록</button>
	        </div>
        </form>
    </div>
    
    <jsp:include page="../common/footer.jsp"/>
    
</body>
</html>