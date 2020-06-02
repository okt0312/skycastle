<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>myPageMenubar</title>
    <style>
    
    
    body
    {
        max-width: 1700px;
        margin: auto;

    } 
    #mypage_main_Header
    {
        max-width: 1700px;
        margin: 30px auto 0;
        
    }

    #header2
    {
        margin-top: 20px;
        border-top: 2px #d1d1d1 solid;
        border-bottom: 2px #d1d1d1 solid;
    }
    .myPage_header_menu
    {
        margin: auto; 
        padding: 0; 
        width: 1400px; 
        font-size: 23px;
        font-weight: bold;
        text-align: right;
    }
    .myPage_header_menu ul
    {  
        list-style:none; 
        margin: 7px 0; 
        padding:0; 
        text-align: right;
    }
    .myPage_header_menu > li 
    { 
        height: 60px; 
        display:inline-block; 
        width:200px; 
        padding:5px 10px; 
        text-align: center; 
        line-height: 60px;
    }
    .myPage_header_menus > li .submenu
    {  
        width:200px; 
        height: 100px;
        display:none; 
        position: absolute; 
    }
    .submenu li
    {
        background-color: whitesmoke;

    }
    .myPage_header_menu > li:hover ul.submenu { display:block; }


    a{
        text-decoration: none;
        color: black;
    }

    a:hover {
        color: #fdce07;
    }
   
    </style>

<!-- alertify -->
<!-- JavaScript -->
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>

<!-- CSS -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
<!-- Default theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
<!-- Semantic UI theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>
<!-- Bootstrap theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>

</head>
<body>
    <div id="mypage_main_Header">
        
      

      
        <div id="header2">

           
            <a href="${pageContext.servletContext.contextPath}/" id=""><img src="resources/images/myPage.logo.jpg" id="" style="width: 200px; float: left; margin-top: 18px;"></a>
           	
            <ul class="myPage_header_menu" style="margin-right: 10px;">
               
               
                <li><a href="myPage.my">이용현황</a></li>
                <li><a href="mygroupList.gr">소모임관리</a></li>
                <li><a href="qlist.bo?currentPage=1&userNo=${loginUser.userNo }">1:1문의</a></li>
                <li><a href="list.bo?currentPage=1">쿠폰함</a></li>
                <li><a href="PwdCheck.my">개인정보수정</a></li>
                
            </ul>
        </div>
    </div>

   
</body>
</html>