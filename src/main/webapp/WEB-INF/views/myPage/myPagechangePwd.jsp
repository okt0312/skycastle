<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
/* 서브메뉴 스타일 시작 (위에 웹폰트 링크도 복붙해주세요)*/
div {
	box-sizing: border-box;
}
.outer {
	max-width: 1700px;
	margin: auto;
    margin-bottom: 150px;
}


#index-area {
	text-align: right;
	font-size: 12px;
}

#index-area a {
	color: gray
}

.sub-menu-area * {
	padding: 5px;
}

.sub-menu-area>a {
	font-size: 17px;
	color: black;
	font-weight: bolder;
}

/* 서브메뉴 스타일 끝 */
#order-info {
	width: 1000px;
	height: 200px;
	border: 1px solid rgb(76, 60, 60);
	background-color:  rgb(13,13,13);
	margin: auto;
	color: #fdce07;
}

.bline {
	background-color: skyblue;
	height: 2px;
	border: 0px;
	width: 370px;
	margin: auto;
}

.board .container {
    padding-top: 160px;
}

html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, a, address, del, em, img, strong, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
    background: transparent;
}

element.style {
    max-width: 600px;
    width: 550px;
}

.default_tabs.t2 li {
    width: 50%;
}

.default_tabs li {
    float: left;
}

.default_tabs {
    max-width: 1180px;
    margin: 0 auto 50px;
    border-left: 1px solid #d5d5d5;
}

.default_tabs a.active {
    border: 1px solid #fdce07;
    background: #fdce07;
    color: black;
    font-weight: bolder;
}

.default_tabs a {
    display: block;
    height: 54px;
    line-height: 57px;
    text-align: center;
    background: #f8f8f8;
    font-size: 17px;
    color: #222;
    border: 1px solid #d5d5d5;
    border-left: 0;
}

ol, ul, li {
    list-style: none;
}

.info_modify .step2 .row {
    width: 1180px;
    margin: 0 auto;
    position: relative;
    overflow: hidden;
}

.info_modify .step2 .mod_infos.first {
    margin-top: 37px;
}

.info_modify .step2 .mod_infos {
    position: relative;
    margin-top: 20px;
}

.info_modify .step2 .in_tit {
    display: block;
    width: 90px;
    font-size: 17px;
    color: #222;
    position: absolute;
    top: 0;
    left: 0;
}

.info_modify .step2 .info {
    margin: 0 0 0 90px;
    font-size: 17px;
    color: #666;
    overflow: hidden;
}

.info_modify .step2 .mod_infos {
    position: relative;
    margin-top: 20px;
}

.info_modify .step2 .info {
    margin: 0 0 0 90px;
    font-size: 17px;
    color: #666;
    overflow: hidden;
}

.info_modify .step2 .in_tit.long {
    line-height: 53px;
}

.info_modify .step2 .in_tit {
    display: block;
    width: 90px;
    font-size: 17px;
    color: #222;
    position: absolute;
    top: 0;
    left: 0;
}

.info_modify .step2 .info {
    margin: 0 0 0 90px;
    font-size: 17px;
    color: #666;
    overflow: hidden;
}

.info_modify .step2 .phone:first-child {
    margin-top: 0;
}

.info_modify .step2 .phone {
    position: relative;
    overflow: hidden;
    margin-top: 20px;
}

input, textarea, select, td, th {
    vertical-align: middle;
}

.info_modify .step2 .phone .inputs {
    margin-right: 120px;
    height: 48px;
}

.inputs {
    position: relative;
    display: block;
    border-bottom: 1px solid #181819;
    height: 53px;
    overflow: hidden;
}

.info_modify .step2 .phone .inputs input {
    height: 48px;
}

.inputs.num_type input {
    font-weight: 400;
}

.inputs input {
    width: 100%;
    height: 53px;
    font-size: 17px;
    color: #222;
    border: 0;
    outline: none;
}

.info_modify .step2 .phone .bt_apply {
    position: absolute;
    top: 0;
    right: 0;
}

.bt_apply.medium {
    width: 98px;
}

.bt_apply {
    display: inline-block;
    /* width: 78px; */
    padding: 0 5px;
    width: auto;
    height: 48px;
    line-height: 48px;
    vertical-align: top;
    text-align: center;
    color: #000;
    font-size: 15px;
    border: 1px solid #666;
    background: #fff;
    -moz-transition: 0.5s;
    -o-transition: 0.5s;
    -webkit-transition: 0.5s;
    transition: 0.5s;
}

element.style {
    display: none;
}

.info_modify .step2 .validate {
    clear: both;
    font-size: 13px;
    color: #db0436;
    text-align: left;
    margin: 10px 0 0 0;
}

p {
    line-height: 100%;
}

.info_modify .step2 .phone {
    position: relative;
    overflow: hidden;
    margin-top: 20px;
}

.info_modify .step2 .info {
    margin: 0 0 0 90px;
    font-size: 17px;
    color: #666;
    overflow: hidden;
}

.info_modify .step2 .phone .inputs {
    margin-right: 120px;
    height: 48px;
}
.info_modify .step2 .phone .bt_apply {
    position: absolute;
    top: 0;
    right: 0;
}
.bt_apply.medium {
    width: 98px;
}

.info_modify .step2 .validate {
    clear: both;
    font-size: 13px;
    color: #db0436;
    text-align: left;
    margin: 10px 0 0 0;
}

.info_modify .step2 .bts {
    width: 380px;
    margin: 50px auto 0 auto;
}
.bts button.dark {
    background: #fdce07;
}

.bts button {
    display: block;
    height: 56px;
    line-height: 56px;
    text-align: center;
    font-size: 19px;
    color: black;
    font-weight: bolder;
}

button {
    margin: 0;
    padding: 0;
    border: 0;
    background: transparent;
    text-decoration: none;
    font-size: 100%;
    color: #000;
}



.btn_member_out {
    border: none;
   
    font-size: 15px !important;
}

.default_tabs ul {
    overflow: hidden;
}

.info_modify .step2 .mod_pws {
    display: block;
    margin-top: 20px;
}

.inputs {
    position: relative;
    display: block;
    border-bottom: 1px solid #181819;
    height: 53px;
    overflow: hidden;
}

.inputs input {
    width: 100%;
    height: 53px;
    font-size: 17px;
    color: #222;
    border: 0;
    outline: none;
}

.info_modify .step2 .validate {
    clear: both;
    font-size: 13px;
    color: #db0436;
    text-align: left;
    margin: 10px 0 0 0;
}

p {
    line-height: 100%;
}

.info_modify .step2 .mod_pws {
    display: block;
    margin-top: 20px;
}




/* 중간버튼 스타일 */

/* 중간버튼 스타일 */
</style>
</head>
<body style="width: 100%; height: 100%; margin:auto;">

<jsp:include page="common/myPageMenubar.jsp"/>

<div class="outer">
		<!-- 서브메뉴 타이틀 -->
	
		

		<br><br><br>
		<!-- inner영역에 콘텐츠 작성 -->
		<div class="inner">
				
			<div id="order-info">
				
				<table style="font-size: 16px;" width="1000px" height="200px">
					<tr>
						<th width="495px" style="padding-left: 2px; text-align: center;">
							<b style="font-weight: bold; font-size: 1.5em;"></b>개인정보 입력 안내문 
							<hr class="bline">
							<p style="font-size: 0.7em; color: #fdce07;  margin-top: 15px;">회원정보를 정확히 기입하셔야 예약이나 이벤트에 대한 불이익이 없습니다.</p>
						</th>
						
						
					</tr>

                </table>
                
                <br>
                
                <div class="sub-menu-area">
                    <!-- 현재 페이지는 yellow 로 표시 -->
                   
                    

                </div>

            </div>
            
           	<br><br><br><br>

			<div class="inner">
                
                <div class="container">
                    <div id="content" class="content">
    					
                        <div class="my_tozs">
                            <div class="info_modify">
                                <div class="info_modify">
                                    
                                    <div class="default_tabs t2" style="max-width: 600px;">
                                        <ul>
                                            <li>
                                            <a href="updatee.me" style="background-color: #f8f8f8; color: #222;">회원정보변경</a>
                                            </li>
                                            
                                            <li>
                                            <a href="cpwd.me" class="active"  style="background-color: #222; color: #fff;">비밀번호변경</a>
                                            </li>
                                        </ul>
                                    </div>
                                    
                                  
                                    <div class="step2">
                                       <div class="row" style="max-width: 600px;">
                                        <div class="col infoType">
                                        
                                        	
                                           <form action="mchangePwd.me" method="POST">
                                           <input type="hidden" name="userPwd" value="${userPwd}">
                                           <input type="hidden" name="userId" value="${userId}">
                                           <label for="oldPw" class="mod_pws current">
                                                <span class="inputs">
                                                    <input type="password" id="oldPw" name="oldPw" placeholder="현재비밀번호">
                                                </span>
                                                <p class="validate" style="display: none;"></p>
                                           </label>
                                           <label for="pwId" class="mod_pws">
                                                <span class="inputs">
                                                    <input type="password" id="pwId" name="pwId" placeholder="새 비밀번호(6자리 이상 영문, 숫자, 특수문자를 사용)" required>
                                                </span>   
                                                    <p class="validate" style="display: none;"></p>
                                               </label>
                                            <label for="pwCheck" class="mod_pws">
                                                <span class="inputs">
                                                    <input type="password" id="pwId2" name="pwId2" placeholder="비밀번호 재확인" required>
				
                                                </span>
                                                <p class="validate" style="display: none;"></p>
                                            </label>

                                            		
                                       				</div>
    												
                                                    </div>
                                                   
                                                        
                                                        
                                            <div class="bts">
                                                <button type="submit" class="dark" style="background-color: #222; color: #fff; width: 354px;">변경</button>
                                            </div>
                                            </form>
                                           
                                            <div class="bts" style="font-size: 13px; color: #888;">
                                              스카이캐슬를 더 이상 이용하지 않는다면    <a href="Dropp.me" class="btn_nude btn_nude_dark btn_member_out" style="color:#fdce07;  text-decoration: underline;">회원탈퇴 바로가기></a>
                                            </div>
                                        </div>
                                    </div>     
                                    </div>
                                </div>
    
                            </div>
				
	<script>
  	function validate() {
  		
  		var pwd1 = document.getElementById("pwId"); // 비밀번호
		var pwd2 = document.getElementById("pwId2"); // 비밀번호 확인 	
  		
  		// 비밀번호 검사
		// 특수문자(!@#$%^&*) 영문자 숫자 포함 6글자 이상
		var regExp = /^[a-z\d!@#$%^&*]{6,}$/i;
		if (!regExp.test(pwId.value)) {
			alert("비밀번호가 유효하지 않습니다.");
			pwd1.value = "";
			pwd1.focus();
			return false;
		}
		
		// 비밀번호값과 비밀번호확인값이 일치하는지 검사
		if (pwd1.value != pwId2.value) {
			alert("비밀번호가 일치하지 않습니다.");
			pwd2.value = "";
			pwd2.focus();
			return false;
		}
		
		return true;
		
  	}
    </script>  	
				
                
               

				
				

			</div>
		</div>
		</div>
		</div>
		
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>