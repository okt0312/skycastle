<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQuery 라이브러리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style> 
  .outer{
    margin-top:50px;
    margin-bottom:50px;
    max-width:100%;
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .mainTitle{
    width: 550px;
    font-size: 30px;
    font-weight: 700;
    border-bottom-style: ridge;
  }
  #subTitle{
    text-align: center;
    color: rgb(51, 51, 51);
    font-size: 18px;
    font-weight: 400;
  }
  /* 정보 입력란 div 스타일 */
  .infoArea{
    width:100%;
    height:550px;
  }
  .inputArea{
    margin: auto;
    margin-top: 25px;
  }
  /* input 박스 스타일 */
  .inputArea input{
    width:250px;
    height:35px;
    border-style: none;
    border-bottom-style: ridge;
  }
   .memberInfo{
    margin: auto;
    width:250px;
    height:25px;
  }
  /* 생년월일 */
  #birthday{
    width:60px;
    height: 30px;
    border-bottom-style: ridge;
  }
  select{
    width: 60px;
    margin-top:10px;
    padding: .8em .5em; /* 여백으로 높이 설정 */ 
    font-family: inherit;
    background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 0%; 
    border-style: none;
    border-bottom-style: ridge;
    border-radius: 0px;
    -webkit-appearance: none; /* 네이티브 외형 감추기 */ 
    -moz-appearance: none;
    appearance: none; 
    /* background: url('images/arrow.png') no-repeat 95% 50%;  */
    } 
  select::-ms-expand { display: none; }
  /* 중복확인 */
  #ckBtn{
    width: 80px;
    height:30px;
    border-radius: 4px;
    background: #fdce07;
    color:rgb(51, 51, 51);
    font-size: 14px;
  }
  /* 회원가입 버튼 */
  #joinBtn{
    width: 200px;
    height: 30px;
    border-radius: 5px;
    text-align: center;
    background-color:#fdce07;
    color: rgb(51, 51, 51);
    font-size: 14px;
  }
  #joinBtn:hover{
      background-color: #ffffff;
      color:rgb(51, 51, 51);
  }
  </style>
</head>
<body data-spy="scroll" data-target="#navbar-example">
    <!-- 2.회원가입 -->
    <div class="outer">
        <form id="" action="insert.me" method="POST">
           <div class="mainTitle">
                <center>SKY CASTLE</center>
                <h4 id="subTitle">SKY CASTLE 회원가입을 위한 정보를 입력해주세요.</h4>
           </div> 

            <!-- 정보 입력-->
            <div class="infoArea">
                <div class="inputArea">
                    <label for="memId"><span>*</span> 통합이메일(아이디)</label><br>
                    <input type="email" class="memberInfo" id="email" name="email" placeholder="이메일">
                    <span><button id="ckBtn">중복확인</button></span>
                </div>
                <div class="inputArea">
                    <label for="memPwd1"><span>*</span> 비밀번호 입력</label><br>
                    <input type="password" class="memberInfo" id="memPwd1" name="memPwd1" placeholder="6자리 이상 영문,숫자,특수문자를 사용">
                </div>
                <div class="inputArea">
                    <label for="memPwd2"><span>*</span> 비밀번호 확인</label><br>
                    <input type="password" class="memberInfo" id="memPwd2" name="memberPwd2" placeholder="비밀번호를 한번 더 입력">
                </div>
                <div class="inputArea">
                    <label for="memId"><span>*</span> 이름</label><br>
                    <input type="text" class="memberInfo" id="userName" name="userName" >
                </div>
                <div class="inputArea">
                    <label for="memId"><span>*</span> 생년월일</label><br>
                    <input type="text" id="birthday" name="birthday" placeholder="생년 4자리"> &nbsp;&nbsp;  
                    <select name="month">
                        <option selected>1월</option>
                        <option>2월</option>
                        <option>3월</option>
                        <option>4월</option>
                        <option>5월</option>
                        <option>6월</option>
                        <option>7월</option>
                        <option>8월</option>
                        <option>9월</option>
                        <option>10월</option>
                        <option>11월</option>
                        <option>12월</option>
                    </select>&nbsp;&nbsp;
                    <input type="text" id="birthday" name="day" placeholder="생일 2자리"> &nbsp;&nbsp;
                </div>
                <div class="inputArea">
                    <label for="memId"><span>*</span> 휴대폰</label><br>
                    <input type="text" class="memberInfo" name="email" placeholder="- 제외하고 입력">
                </div>
            </div>
            
            <!-- 회원가입 버튼 -->
            <div>
                <center><td><button type="submit" id="joinBtn">회원가입</button></td></center>
            </div>
        </form>
    </div>
</body>

<script>
	$(function(){
		
		$("#joinBtn").on("click", function(){
			if($("#email").val()==""){
				alert("아이디(이메일)를 입력해주세요.");
				$("#email").focus();
				return false;
			}
			if($("#memPwd1").val()==""){
				alert("비밀번호를 입력해주세요.");
				$("#memPwd1").focus();
				return false;
			}
			if($("#memPwd2").val()==""){
				alert("비밀번호를 확인란을 입력해주세요.");
				$("#memPwd2").focus();
				return false;
			}
			if($("#userName").val()==""){
				alert("성명을 입력해주세요.");
				$("#userName").focus();
				return false;
			}
		});
		
	});

	/* 중복확인 */
	
	/*
	$(function(){
		//중복확인 클릭시 
		$("#ckBtn").click(function(){
	
			//사용자가 입력한 id값 조회
			var email = $("#email"); 

			$.ajax({
				url:"idCheck.me",
				data:{email:email.val()},
				type:"post",
				success:function(result){
					if(result==0){
						// 사용가능한 아아디
						if(confirm("사용가능한 아이디입니다. 사용하시겠습니까?")){
							//아이디 더이상 수정이 불가 하게끔 해당 인풋요소
							email.attr("readonly","true");
							//회원가입 버튼 활성화
							$("#joinBtn").removeAttr("disabled");
						}else{
							email.focus();
						}
					}else{
						// 사용불가한 아이디
						alert("사용불가한 아이디입니다. 다시 입력해주세요.");
						email.focus();
	
					}
				},error:function(){
					console.log("ajax failed :( ")
				} 
			});
		});
	});
	*/	
</script>
</html>