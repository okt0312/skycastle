<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<style>
/* div{border:1px solid black}  */
#outer{
    margin: auto;
    margin-top: 55px;
    box-sizing: border-box;
    width: 800px;
}
.mainTitle{
    width: 100%;
    font-size: 30px;
    font-weight: 700;
    margin-bottom: 40px;
    text-align: center;
}
/* FAQ 테이블 css */
#faqTable{
    width: 800px;
    /* margin: 0px; */
    text-align:left;
    align-self: center;
    margin:auto;                        
    border-collapse: collapse;          
}
#faqTable td{
    padding: 15px;
    border-top: 1px solid gray;
    border-bottom-style: ridge;     
    font-size: 14px;
}
#faqTable a{
    text-decoration: none;
    color: #444;
}
.table_content{
    display: none;
}
p{ 
    text-align: center;
    border-radius: 5px;
    background:#fdce07;
    color: #333333;
    font-size: 12px;
    padding:2px;
    width: 50px;
}
/* 답변 */
#answer p{
    background:#333333;
    color:#ffffff;
}
#plusbtn{
    border-radius: 20px;
    height: 25px;
    width: 25px;
    color: grey;
}
.table_content{
    background:rgb(225, 225, 225);
}
</style>
</head>
<body>
<body>
    <!-- FAQ 테이블 -->
    <div id="outer">
        <div class="mainTitle">이용자 FAQ</div>
        <table id="faqTable">
            <tr class="title">
                <td><p>Q.</p></td>
                <td><a href="#">스카이캐슬 등록 대상 문의</a></td>
                <td><button id="plusbtn">+</button></td>
            </tr>
            <tr class="table_content">
                <td id="answer"><p>A.</p></td>
                <td colspan="3">스카이캐슬의 등록 가능 대상은 고등학생과 성인입니다.</td>
            </tr>
            <tr class="title">
                <td><p>Q.</p></td>
                <td><a href="#">이용 요금 문의</a></td>
                <td><button id="plusbtn">+</button></td>
            </tr>
            <tr class="table_content">
                <td id="answer"><p>A.</p></td>
                <td colspan="3">해당 지점으로 문의 바랍니다.</td>
            </tr>
            <tr class="title">
                <td><p>Q.</p></td>
                <td><a href="#">소모임 이용은 어떻게 하나요?</a></td>
                <td><button id="plusbtn">+</button></td>
            </tr>
            <tr class="table_content">
                <td id="answer"><p>A.</p></td>
                <td colspan="3">메뉴 - 소모임에서 보다 자세히 알아보실 수 있습니다.</td>
            </tr>
            <tr class="title">
                <td><p>Q.</p></td>
                <td><a href="#">와이파이 비밀번호 알려주세요.</a></td>
                <td><button id="plusbtn">+</button></td>
            </tr>
            <tr class="table_content">
                <td id="answer"><p>A.</p></td>
                <td colspan="3">인포메이션에 문의하여 주시기 바랍니다.</td>
            </tr>
            <tr class="title">
                <td><p>Q.</p></td>
                <td><a href="#">독서실 좌석 유형이 궁금해요</a></td>
                <td><button id="plusbtn">+</button></td>
            </tr>
            <tr class="table_content">
                <td id="answer"><p>A.</p></td>
                <td colspan="3">1인실을 비롯한 다인실 등 다양한 공간이 준비되어 있습니다.</td>
            </tr>

        </table><br>
    </div>
    <br><br>
 
    </div>

    <script>
        $(function(){
            $(".title").click(function(){
                //$(this).next().slideDown(); // $(this).next() : 클릭된 div의 바로 다음 요소
                console.log($(this).next());
                var tr = $(this).next("tr");

                if(tr.css("display") == "none"){
                    $(this).siblings(".table_content").slideUp(1); // 열린 다른 키들 닫기
                    tr.slideDown();
                }else{
                    tr.slideUp(1);
                }
                
            });

        });
    </script>
    
</body>
</html>