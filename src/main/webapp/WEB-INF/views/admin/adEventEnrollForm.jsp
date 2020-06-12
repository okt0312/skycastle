<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 공지사항 등록</title>
<style>
  .outer{
            width:800px;
            height:500px;
            margin-left:350px;
            margin-top:50px;
            
        }
        #eventEnrollForm>table {border:1px solid black;}
        
        /* 테이블 css */
        .contents{
        margin: auto;
        width:100%;
        }
        .boardList{
        
        width:800px;
        height:500px;
        margin: auto;
        border-top:1px solid rgb(175, 175, 175);
        margin:10px;
        }
        .boardList td{
        margin: 5px;
        padding: 5px;
        border-bottom: 1px solid rgb(175, 175, 175);
        }
        </style>
</style>
</head>
<body>
<div id="layoutSidenav"> 
	<jsp:include page="common/adminSidebar.jsp"/>

            <div id="layoutSidenav_content">
            
            
            
            <main>
        <div class="container-fluid">
            <h1 class="mt-4"><b>이벤트  관리</b></h1>
            <ol class="breadcrumb mb-4" >
                <li class="breadcrumb-item"><a href="index.html" style="color:black"><b>HOME</b></a></li>
                <li class="breadcrumb-item active"><a style="color:black">이벤트 등록</a></li>
            </ol>
            <!-- 게시글  시작 -->
           <div class="outer" >
                <form id="eventEnrollForm" action="eventInsert.ad" method="post" enctype="multipart/form-data">
                <table align="center" class="boardList">
                <tr>
                    <td width="100" style="background-color: #C8D2DF; text-align:center;">제목</td>
                    <td colspan="3"><input type="text" id="noticeTitle" name="eventTitle" placeholder="Event Title 입력" style="width:690px;"></td>
                </tr>
                <tr>
                    <td style="background-color: #C8D2DF;">대표 이미지</td>
                    <td colspan="3" style="text-align:center;">
                        <img id="titleImg"   width="450" height="420">
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #C8D2DF;">상세 이미지</td>
                    <td colspan="3" style="text-align:center;">
                        <img  id="contentImg1" width="450" height="420">
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #C8D2DF; text-align:center;">첨부파일</td>
                    <td colspan="3">
                    <input type="file" id="upfile"  class="form-control-file border" name="uploadFile" onchange="loadImg(this,1);">
                    <input type="file" id="upfile2" class="form-control-file border" name="uploadFile" onchange="loadImg(this,2);">
                    </td>
                </tr>
                <tr>
                    &nbsp;&nbsp;&nbsp;시작일&nbsp;:&nbsp;<input type="date" name="eventOpenTime">&nbsp;&nbsp;&nbsp;
                    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;종료일&nbsp;:&nbsp;<input type="date" name="eventCloseTime">
                </tr>
                
                
                </table>
                 <input type="hidden" name="fileLevel">
                 <p align="center">
                     <input type="button" value="취소" onclick="history.back(-1)" class="btn btn-dark">
                     <input type="submit" value="등록" class="btn btn-primary" >
                 </p>
                    
                </form>
            </div>
            
          
    </main>
            
            
            
            
            
            
		</div>





</body>

<script>
    $(function(){
        
        $("#titleImg").click(function(){
            $("#upfile").click();

        });
    $("#contentImg1").click(function(){
        $("#upfile2").click();
    });
    
    });
    
    function loadImg(inputFile,num){
    //inputFile : 현재 변화가 생긴 input type="file"요소
    //num: 몇번째 input요소인지 확인 후 해당 영역에 미리보기 하려고
    
    //[참고] https://developer.moxilla.org/ko
    
    //file이 존재 할 경우 --> input요소의 file속성인 배열의 0번 인텍스에 담김
    if(inputFile.files.length == 1){
        
        //파일을 읽어들일 FileReader 객체 생성
         var reader = new FileReader();
        
        //파일을 읽어주는 메소드 -->해당파일을 읽어들이는 순간 해당 파일만의 고유한 url부여
        reader.readAsDataURL(inputFile.files[0]);
        
        //파일읽기가 다 완료 되었을때 실행할 메소드
        reader.onload = function(e){
            switch(num){
            case 1: $("#titleImg").attr("src",e.target.result); break;
            case 2: $("#contentImg1").attr("src",e.target.result); break;
            
            }
        };
    }
    }
    
    </script>
</html>