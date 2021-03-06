<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소모임 게시판 상세글</title>
<style>
   .menuTitle{
        width: 100%;
        height: 80px;
        margin: 5px;
        padding-left: 10px;
        box-sizing: border-box;
        font-size: 24px;
        font-weight: 500;
        color: #333333;
    }
    .subMenu{
        padding: 10px;
        font-size: 14px;
        font-weight: 400;
        background: #dddddd;
        border-radius: 4px;
        border-style: none;
    }
    .subMenu a{
        text-decoration: none;
        color: #333333;
    }
    /* 테이블 css */
    .contents{
        margin: auto;
        width:100%;
    }
    .boardList{
    	width:700px;
    	hight:500px;
        margin: auto;
        border-top:1px solid rgb(175, 175, 175);
        margin:10px;
    }
    .boardList td{
        margin: 5px;
        padding: 5px;
        border-bottom: 1px solid rgb(175, 175, 175);
    }
    /* 댓글 css */
    .reply{
        margin: auto;
        width:700px;
        height: 170px;
        text-align: left;
        padding-top: 10px;
        font-size: 18px;
        font-weight: bold;
    }
    .reply p, label{
        font-size: 14px;
        font-weight: 400;
        color:gray;
    }
    #deleteReply{
        width:55px;
        height: 25px;
        font-size: 12px;
        font-weight: bold;
        padding: 5px;
        line-height: 10px;
        float: right;
    }
    
    /*댓글을품은 div  */
    #reply_Out{
     width:700px;
      margin: auto;
     
    }
</style>


</head>
<body>
<div id="layoutSidenav">
		<jsp:include page="common/adminSidebar.jsp"/>
		 <div id="layoutSidenav_content">
		 
		
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4"><b>소모임 게시글 관리</b></h1>
                        <ol class="breadcrumb mb-4" >
                            <li class="breadcrumb-item"><a href="index.html" style="color:black"><b>HOME</b></a></li>
                            <li class="breadcrumb-item active"><a style="color:black">소모임 게시글 관리</a></li>
                        </ol>
                        <!-- 게시글 삭제 수정 시작 -->
                        <form action="deleteGrNo.ad">
                            <div class="contents" align="center">
                                <table class="boardList" >
                                    <tr>
                                        <td><p style="text-align:center;">${ g.gnoticeTitle}</p></td>
                                    </tr>
                                    <tr>
                                        <td>                 
                                           <br><br><br> ${ g.gnoticeContent}<br><br><br><br>
                                        </td>
                                    </tr>
                                </table>    
                                <p align="center">
                                    <input type="button" value="취소" onclick="history.back(-1)" class="btn btn-dark">
                                   <!--  <input type="submit" value="수정" class="btn btn-primary"> -->
                                    <input type="submit" value="삭제" class="btn btn-danger" onclick="deleteBtn();">
                                </p>
                            </div>
                            <input type="hidden" name="gno" id="gno" value="${ g.gnoticeNo}">
                        </form>
                        
                         
                        <!-- 댓글관리 -->
                        <div id="reply_Out">
                            <table id="replyArea" class="table" align="center">
					                <thead>
					                    <tr>
					                       <td colspan="5"style="">댓글 (<span id="rcount"></span>) </td> 
					                    </tr>
					                </thead>
					                <tbody>
					                    
					                </tbody>
					            </table>
					        
					        <br><br>
					  
					    </div>
					    <script>
					    //공지사항 삭제 컨펌
					      function deleteBtn(){
								alertify.alert("소모임 게시판 관리","게시글이 삭제되었습니다");			    	
					    };
					    	
					    	
					 // 해당 게시글에 딸려있는 댓글 리스트 ajax로 조회해서 화면에 뿌려주는
					 
				   	   $(function(){
				   			selectAdReplyList();
				   			
				   		});
					 
					    	function selectAdReplyList(){
				    		var gno = $("#gno").val();
				    		
				   			$.ajax({
				   				url:"rlist.ad",
				   				data:{"gno": gno},
				   				success:function(list){
				   					
				   					// 댓글 갯수
				   					 $("#rcount").text(list.length);
				   					
				   					var value = "";
				   					
				   					for(var i in list){
				   						value +=  "<tr  id='rid'>" +
				   										
				   									"<td>"+ "<input type='hidden' id='rno' value='"+list[i].replyNo+"'>" + "</td>"+
							                        "<td>" + list[i].userName + "</td>" +
							                        "<td>" + list[i].replyContent + "</td>" +
							                        "<td>" + list[i].uploadDate + "</td>" + 
							                        "<td>" +
							                        "<input type='button' value='삭제' name='del_btn' id='del_btn' class='btn btn-danger'>" +
							                        "</td>" + 
							                     "</tr>";
				   					}
				   					
				   					$("#replyArea tbody").html(value); 
				   				
				   					
				   				},error:function(){
				   					console.log("댓글 리스트 조회용 ajax 통신실패!!");
				   				}
				   			});
				   			
				    	}
					    	
					    	
					    	
					    	
					    		$('body').on('click', '#replyArea tbody tr td input[id=del_btn]', function(event) {
					    			
					    			var rno = $(this).parent("td").parent("tr").children().eq(0).children().val();
						    		
						    		alertify.confirm('소모임 게시판 관리', '댓글을 삭제하시겠습니까?',function(){
						    		$.ajax({
					   					url:"rDelete.ad",
					   					data:{"rno": rno},
					   					type:"post",
					   					success:function(result){
					   						
					   						
					   						selectAdReplyList();
					   						
					   						alertify.alert("소모임 게시글 관리", "댓글이 삭제되었습니다", function(){ location.reload();});
					   					},error:function(){
					   						console.log("댓글 작성용 ajax 통신 실패!");
					   					}
					   				});
						    		},function(){} );
						    		
					    		});
				    </script>
					    	
                    </div>
                </main>
                <jsp:include page="common/adFooter.jsp"/>
		</div>
</div>
</body>
</html>