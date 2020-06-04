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
    height:600px;
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
        <form id="enrollForm" action="insert.me" method="POST">
           <div class="mainTitle">
                <center>SKY CASTLE</center>
                <h4 id="subTitle">SKY CASTLE 회원가입을 위한 정보를 입력해주세요.</h4>
           </div> 

            <!-- 정보 입력-->
            <div class="infoArea">
                <div class="inputArea">
                    <label for="memId"><span>*</span> 통합이메일(아이디)</label><br>
                    <input type="email" class="memberInfo" id="userId" name="userId" placeholder="이메일" required>
                  	
                  	<!-- 이메일 인증번호 전송 버튼 -->
                    <span><button type="button" id="ckBtn" onclick="authEmail();">이메일인증</button></span><br>
                    
                    <!-- 아이디 중복체크 결과 -->
                    <div id="checkResult" style="display:none; font-size:0.8em">dd</div>
                    
                    <input type="text" class="memberInfo" name="inputVeriCode" placeholder="인증번호 입력" required>
                    <!-- <button type="button" id="sendCode" onclick="authEmail();">이메일인증하기</button> -->
                </div>
                
                <div class="inputArea">
                    <label for="memPwd1"><span>*</span> 비밀번호 입력</label><br>
                    <input type="password" class="memberInfo" id="memPwd1" name="memPwd1" placeholder="6자리 이상 영문,숫자,특수문자를 사용" required>
                </div>
                <div class="inputArea">
                    <label for="memPwd2"><span>*</span> 비밀번호 확인</label><br>
                    <input type="password" class="memberInfo" id="memPwd2" name="memberPwd2" placeholder="비밀번호를 한번 더 입력" required>
                </div>
                <div class="inputArea">
                    <label for="memId"><span>*</span> 이름</label><br>
                    <input type="text" class="memberInfo" id="userName" name="userName" >
                </div>
                <div class="inputArea">
                    <label for="memId"><span>*</span> 생년월일</label><br>
                    <input type="text" id="birthday" name="birthday" placeholder="생년 4자리"> &nbsp;&nbsp;  
                    <select name="birthday">
                        <option value="01" selected>1월</option>
                        <option value="02">2월</option>
                        <option value="03">3월</option>
                        <option value="04">4월</option>
                        <option value="05">5월</option>
                        <option value="06">6월</option>
                        <option value="07">7월</option>
                        <option value="08">8월</option>
                        <option value="09">9월</option>
                        <option value="10">10월</option>
                        <option value="11">11월</option>
                        <option value="12">12월</option>
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
                <center><td><button type="submit" id="joinBtn" onclick="return validate();">회원가입</button></td></center>
            </div>
        </form>
    </div>
</body>

<!-- 유효성 검사 -->
<script>
	function validate(){
		
		var userId = document.getElementById("userId");	// 이메일
		var pwd1 = document.getElementById("memPwd1");   // 비밀번호
		var pwd2 = document.getElementById("memPwd2");   // 비밀번호 확인 
		var name = document.getElementById("userName");  // 이름
		
		// 이메일 검사 
		var regExp = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
		
		if(!regExp.test(userId.value)){
			alert("이메일 주소가 유효하지 않습니다.");
			userId.value = "";
			userId.focus();
			return false;
		}
		
		// 비밀번호 검사
		// 특수문자(!@#$%^&*) 영문자 숫자 포함 6글자 이상
		var regExp = /^[a-z\d!@#$%^&*]{6,}$/i;
		if (!regExp.test(pwd1.value)) {
			alert("비밀번호가 유효하지 않습니다.");
			pwd1.value = "";
			pwd1.focus();
			return false;
		}
	
		// 비밀번호값과 비밀번호확인값이 일치하는지 검사
		if (pwd1.value != pwd2.value) {
			alert("비밀번호가 일치하지 않습니다.");
			pwd2.value = "";
			pwd2.focus();
			return false;
		}
		
		// 이름 검사
		// 한글로만 2글자 이상
		var regExp = /^[가-힣]{2,}$/;
		if (!regExp.test(name.value)) {
			alert("한글로만 2글자 이상 입력해주세요.");
			name.value = "";
			name.focus();
			return false;
		}
		
		return true;
		
	}
</script>

<script>
	$(function(){
		
		$("#joinBtn").on("click", function(){
			if($("#userId").val()==""){
				alert("아이디(이메일)를 입력해주세요.");
				$("#userId").focus();
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
			if( authEmail == true){
				return location.href = "enrollComplete.me";
			}else{
				alert("이메일 인증을 완료하여 주세요.");
				return false;
			}
			
		});
		
	});
</script>

<script>	

	// 아이디(이메일) 중복체크 
	function idCheckValidate(num){
		
		if(num == 1){ //  중복체크 아직 xxx : 메시지 보여지지 않음 버튼 비활성화
			
			$("#checkResult").hide();
			$("#enrollBtn").attr("disabled", true);
			
		}else if(num == 2){ // 사용 불가
			
			$("#checkResult").css("color", "red").text("이미 사용중이거나 탈퇴한 계정입니다. 다시 시도해주세요.");
			$("#checkResult").show();
			$("#joinBtn").attr("disabled", true);
			
		}else{ // 사용 가능 
			
			$("#checkResult").css("color", "green").text("사용 가능한 계정입니다.");
			$("#checkResult").show();
			$("#checkResult").removeAttr("disabled");
			
		}
		
	}
	
	$(function(){
		
		// 이벤트 걸고자 하는 input 요소 변수에 기록 
		var $idInput = $("#enrollForm input[name=userId]");
		
		$idInput.keyup(function(){
			if($idInput.val().length >= 10){
				
				$.ajax({
					url:"idCheck.me",
					data:{userId:$idInput.val()},
					success:function(status){
						
						if(statue == "fail"{
							idCheckValidate(2); // 사용불가
						}else{
							idCheckValidate(3); // 사용가능
						}
					},error:function(){
						alert("중복체크 중 에러 발생");
					}	
				});
			}else{
				idCheckValidate(1);
			}
		});
	});

</script>

<script>
	// 인증번호 전송 
	function authEmail(){
		var emailVal = $("#userId").val();
		
			$.ajax({
				url: "sendCode.me",
				type : "post",
				data : { email : emailVal},
				success : function(ranNum){
					alert("입력하신 이메일로 인증번호를 전송하였습니다.");
				},
				error : function(){
					alert("전송 중 오류 발생");
				}
			});	
		}
</script>

</html>