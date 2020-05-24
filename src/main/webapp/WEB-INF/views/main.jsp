<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SKY CASTLE</title>
<style>
 	body{margin:0}
    .content
    {
        max-width: 1700px;
        height: 1000px;
        margin: auto;
    }
    #content_img
    {
        width: 100%; 
        height: 430px;
    }
    #content_list
    {
        position: absolute;
        margin: 70px auto 70px 35px;
        height: 430px;
        width: 1650px;
        display: flex;
        justify-content: center;
    }
    #img_slide, #notice_list
    {
        display: inline-block;
        height: 400px;
        margin: auto 80px;
    }
    #img_slide
    {
        width: 40%;
    }
    #notice_list
    {
        width: 40%;

    }
    /* Slideshow container */
    .slideshow-container {
    max-width: 1000px;
    position: absolute;
    margin: auto;
    }
    .mySlides img
    {
        width: 680px;
        height: 350px;
    }

    /* Next & previous buttons */
    .prev, .next {
    cursor: pointer;
    position: absolute;
    top: 50%;
    width: auto;
    padding: 16px;
    margin-top: -22px;
    color: white;
    font-weight: bold;
    font-size: 18px;
    transition: 0.6s ease;
    border-radius: 0 3px 3px 0;
    user-select: none;
    }

    /* Position the "next button" to the right */
    .next {
    right: 0;
    border-radius: 3px 0 0 3px;
    }

    /* On hover, add a black background color with a little bit see-through */
    .prev:hover, .next:hover {
    background-color: rgba(0,0,0,0.8);
    }

    /* Caption text */
    .text {
    color: #f2f2f2;
    font-size: 15px;
    padding: 8px 12px;
    position: absolute;
    bottom: 8px;
    width: 100%;
    text-align: center;
    }

    /* The dots/bullets/indicators */
    .dot {
    cursor: pointer;
    height: 15px;
    width: 15px;
    margin: 0 2px;
    background-color: #bbb;
    border-radius: 50%;
    display: inline-block;
    transition: background-color 0.6s ease;
    }

    .active, .dot:hover {
    background-color: #333333;
    }

    /* Fading animation */
    .fade {
    -webkit-animation-name: fade;
    -webkit-animation-duration: 1.5s;
    animation-name: fade;
    animation-duration: 1.5s;
    }

    @-webkit-keyframes fade {
    from {opacity: .4} 
    to {opacity: 1}
    }

    @keyframes fade {
    from {opacity: .4} 
    to {opacity: 1}
    }

    /* On smaller screens, decrease text size */
    @media only screen and (max-width: 300px) {
    .prev, .next,.text {font-size: 11px}}

    #intro_notice thead td{
    border-bottom: #333333 solid 1px;
    }
    .index_noticemiddleTr td {
        border-bottom: 1px solid #dfdfdf;
        padding-bottom: 0;
    }
    .index_noticemiddleTr td {
        border-bottom: 1px solid #dfdfdf;
        padding-bottom: 0;
    }

    /* 하단 링크 3개 */
    #link_list
    {
        width: 100%;
        height: 200px;
        margin-top: 40px;
        margin-bottom: 160px;
        text-align: center;
    }
    .main_link
    {
        display: inline-block;
        width: 20%;
        height: 100%;
        border: 1px solid black;
        margin: 0 105px;
    }
</style>
</head>
<body>
	<jsp:include page="common/menubar.jsp"/>
	 <div class="content">
        <img id="content_img" src="${pageContext.request.contextPath}/resources/images/main_content1.jpg">
        <div id="content_list">
        
            <div id="img_slide">
                <div class="slideshow-container">
                    <div style="text-align:right; height: 30px; padding-top: 20px;">
                      <span class="dot" onclick="currentSlide(1)"></span> 
                      <span class="dot" onclick="currentSlide(2)"></span> 
                      <span class="dot" onclick="currentSlide(3)"></span> 
                    </div>
                    <div class="mySlides fade">
                      <img src="${pageContext.request.contextPath}/resources/images/img_mountains_wide.jpg">
                      <div class="text">Caption Text</div>
                    </div>
                    
                    <div class="mySlides fade">
                      <img src="${pageContext.request.contextPath}/resources/images/img_nature_wide.jpg">
                      <div class="text">Caption Two</div>
                    </div>
                    
                    <div class="mySlides fade">
                      <img src="${pageContext.request.contextPath}/resources/images/img_snow_wide.jpg">
                      <div class="text">Caption Three</div>
                    </div>
                    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                    <a class="next" onclick="plusSlides(1)">&#10095;</a>
                </div>
            </div>

            <script>
                var slideIndex = 1;
                showSlides(slideIndex);
                
                function plusSlides(n) {
                  showSlides(slideIndex += n);
                }
                
                function currentSlide(n) {
                  showSlides(slideIndex = n);
                }
                
                function showSlides(n) {
                  var i;
                  var slides = document.getElementsByClassName("mySlides");
                  var dots = document.getElementsByClassName("dot");
                  if (n > slides.length) {slideIndex = 1}    
                  if (n < 1) {slideIndex = slides.length}
                  for (i = 0; i < slides.length; i++) {
                      slides[i].style.display = "none";  
                  }
                  for (i = 0; i < dots.length; i++) {
                      dots[i].className = dots[i].className.replace(" active", "");
                  }
                  slides[slideIndex-1].style.display = "block";  
                  dots[slideIndex-1].className += " active";
                }
                </script>
            <div id="notice_list">
              <table style="height:100%;width:630px; cursor:pointer;" text-align="center" id="intro_notice" cellpadding="0" cellspacing="0" onclick="">
                <thead>
                  <tr class="index_noticeTopTr"  style="height: 50px; ">
                    <td style="text-align: left;width:10px;font-size:9px; ">●</td>
                    <td style="text-align: left;font-size:18px;">&nbsp;공지 사항및 이벤트</td>
                    <td id="mainNewOpen" style="text-align: right;">+더보기</td>
                  </tr>
                </thead>
                <tbody>
                        <tr class="index_noticemiddleTr" style="border-top: black solid 1px;">
                          <td style="width:50px;"> - </td>
                          <td style="text-align: left;padding-left:10px;">공지1번</td>
                          <td style="text-align: right;">2020.04.16</td>
                        </tr>
                
                        <tr class="index_noticemiddleTr">
                          <td style="width:50px;"> - </td><td style="text-align: left;padding-left:10px;">공지2번</td>
                          <td style="text-align: right;">2020.01.31</td>
                        </tr>
        
                        <tr class="index_noticemiddleTr">
                          <td style="width:50px;"> - </td><td style="text-align: left;padding-left:10px;">공지3번</td>
                          <td style="text-align: right;">2019.08.19</td>
                        </tr>
        
                        <tr class="index_noticemiddleTr">
                          <td style="width:50px;"> - </td><td style="text-align: left;padding-left:10px;">공지4번</td>
                          <td style="text-align: right;">2019.09.04</td>
                        </tr>
        
                        <tr class="index_noticemiddleTr"><td style="width:50px;"> - </td>
                          <td style="text-align: left;padding-left:10px;">공지5번</td>
                          <td style="text-align: right;">2019.07.15</td>
                        </tr>
        
                </tbody>
              </table>
            </div>
        </div>
    </div>
    <div id="link_list">
        <div class="main_link" id="main_link1"></div>
        <div class="main_link" id="main_link2"></div>
        <div class="main_link" id="main_link3"></div>
    </div>
	<jsp:include page="common/footer.jsp"/>
</body>
</html>