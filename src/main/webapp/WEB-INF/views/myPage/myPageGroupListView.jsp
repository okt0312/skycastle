<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>mygroupListDips</title>
    <style>
        .inner{
            width: 100%;
        }
        /* 소모임별 */
        .grouplist{
            width: 800px;
            height: 200px;
            margin: auto;
        }
        .groupThumbnailArea{
            width: 150px; height: 200px; float: left;
        }
        .groupTextArea{
            width: 650px;
            float: right;
            height: 200px;
            padding-left: 30px;
            box-sizing: border-box;
        }

        /* 소모임 리스트 메뉴바 */
        #mygroupListMenubar{
            width:80%;
            height:200px;
            margin:auto;
            margin-top:50px;
        }
        #mygroupListMenubar{
            width:100%;
            height:20%;
            border-top:1px solid lightgray;
            border-bottom:1px solid lightgray;
        }
        #mygroupListMenubar{
            padding-left:50px
        }
        #mygroupListMenubar > a{
            text-decoration:none;
            margin:10px;
            line-height: 40px;
            color: black;
        }
        
        /* 소모임메뉴바 바꿀거 */
		body {
		    max-width: 1700px;
		    margin: auto;
		} 
		#mypage_main_Header {
		    max-width: 1700px;
		    margin: 30px auto 0;
		    
		}
		#header2{
		    margin-top: 20px;
		    border-top: 2px #d1d1d1 solid;
		    border-bottom: 2px #d1d1d1 solid;
		}
		.myPage_header_menu {
		    margin: auto; 
		    padding: 0; 
		    width: 1400px; 
		    font-size: 23px;
		    font-weight: bold;
		    text-align: right;
		}
		.myPage_header_menu ul {  
		    list-style:none; 
		    margin: 7px 0; 
		    padding:0; 
		    text-align: right;
		}
		.myPage_header_menu > li { 
		    height: 60px; 
		    display:inline-block; 
		    width:200px; 
		    padding:5px 10px; 
		    text-align: center; 
		    line-height: 60px;
		}
		.myPage_header_menus > li .submenu {
		    width:200px; 
		    height: 100px;
		    display:none; 
		    position: absolute; 
		}
		.submenu li { background-color: whitesmoke; }
		.myPage_header_menu > li:hover ul.submenu { display:block; }
		
		a {
		    text-decoration: none;
		    color: black;
		}
		a:hover { color: #fdce07; }
    </style>
</head>
<body>
<jsp:include page="common/myPageMenubar.jsp"/>
            <div id="inner" style="width: 800px; margin: auto;">
                <br><br><br>
                <h2>소모임</h2>
                <br><hr><br>

                <div align="center">
                    <form action="" method="POST" style="margin:0 auto">
                        <select>
                            <option value="title" selected>모임명</option>
                            <option value="content">내용</option>
                        </select>
                        <input type="text" name="search">
                        <button type="submit">검색</button>
                    </form>
                </div>
                <br><br>
                <!-- 원래 -->
                <div id="mygroupListMenubar">
                    <a href="#">참가중인 소모임</a> | 
                    <a href="#" style="font-weight: 600;">찜한 소모임</a> | 
                    <a href="#">대기중인 소모임</a> | 
                    <a href="#">지난 소모임</a> 
                </div>
                
                <!-- 이걸로 바꾸기 -->
		        <div id="header2">
		           
		            <a href="${pageContext.servletContext.contextPath}/" id=""><img src="resources/images/myPage.logo.jpg" id="" style="width: 200px; float: left; margin-top: 18px;"></a>
		           	
		            <ul class="myPage_header_menu" style="margin-right: 10px;">
		               
		                <li><a href="myPage.my">참가중인 소모임</a></li>
		                <li> | </li>
		                <li><a href="mygroupList.gr">찜한 소모임</a></li>
		                <li> | </li>
		                <li><a href="OneonOne.my">대기중인 소모임</a></li>
		                <li> | </li>
		                <li><a href="list.bo?currentPage=1">지난 소모임</a></li>
		            </ul>
		        </div>
                
                <br><br><br><br>
                <div class="grouplist">
                    <div class="groupThumbnailArea">
                        <img src="img/squaresize.PNG" alt="" class="" width="150px">
                    </div>
                    <div class="groupTextArea">
                        <h3 style="margin: 4px 0px;">소모임 제목</h3>
                        <p style="margin: 0px 0px;">
                            카테고리 | 소제목소제목소제목소제목소제목<br>
                            진행일정 : 2020-11-20 ~ 2020-12-20<br>
                            신청일정 : 2020-11-20 ~ 2020-12-20<br>
                            장소 : 예서방<br>
                            정원 : 8명
                        </p>
                        <br><br><br>
                    </div>
                </div>
                <div class="grouplist">
                    <div class="groupThumbnailArea">
                        <img src="img/squaresize.PNG" alt="" class="" width="150px">
                    </div>
                    <div class="groupTextArea">
                        <h3 style="margin: 4px 0px;">소모임 제목</h3>
                        <p style="margin: 0px 0px;">
                            카테고리 | 소제목소제목소제목소제목소제목<br>
                            진행일정 : 2020-11-20 ~ 2020-12-20<br>
                            신청일정 : 2020-11-20 ~ 2020-12-20<br>
                            장소 : 예서방<br>
                            정원 : 8명
                        </p>
                        <br><br><br>
                    </div>
                </div>
                <div class="grouplist">
                    <div class="groupThumbnailArea">
                        <img src="img/squaresize.PNG" alt="" class="" width="150px">
                    </div>
                    <div class="groupTextArea">
                        <h3 style="margin: 4px 0px;">소모임 제목</h3>
                        <p style="margin: 0px 0px;">
                            카테고리 | 소제목소제목소제목소제목소제목<br>
                            진행일정 : 2020-11-20 ~ 2020-12-20<br>
                            신청일정 : 2020-11-20 ~ 2020-12-20<br>
                            장소 : 예서방<br>
                            정원 : 8명
                        </p>
                        <br><br><br>
                    </div>
                </div>
            </div>
</body>
</html>