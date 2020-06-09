<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 약관동의</title>
<!-- jQuery 라이브러리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
#utilityMembership {
	width: 50%;
	min-width: 1280px;
	height: 1050px;
	position: relative;
	margin: auto;
	margin-top: 120px;
	align-items: center;
	z-index: 1;
}
/* 약관내용 스타일 */
#utilityMembership .memApply .applyAgree {
	width: 600px;
	margin: auto;
	padding: 10px;
	margin-top: 10px;
	border: 1px solid #ddd;
	color: #999;
	background-color: #fbfbfb;
	font-size: 14px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}
/* 메인 타이틀 */
.mainTitle {
	width: 700px;
	margin: auto;
	font-size: 30px;
	font-weight: 700;
	border-bottom-style: ridge;
}

#subTitle {
	text-align: center;
	color: rgb(51, 51, 51);
	font-size: 18px;
	font-weight: 400;
}

.enrollBtn {
	padding-right: 10px;
	margin-top: 5px;
	font-weight: bold;
	font-size: 14px;
}

#nextBtn {
	margin-left: 25px;
	border-radius: 4px;
	border-style:none;
	background-color: #fdce07;
	color: black;
	cursor: pointer;
}

#preBtn {
	margin-left: 25px;
	border-radius: 4px;
	border-style:none;
	background-color: #333333;
	color: #ffffff;
	cursor: pointer;
}

.btnsmb {
	width: 100px;
	margin-right: -10px;
	padding: 5px;
	border-top: solid 1px lightgrey;
}

.subTitle {
	font-size: 18px;
	font-weight: 300;
	margin-left: 340px;
}

.agree {
	color: rgb(51, 51, 51);
	font-size: 14px;
	margin-left: 680px;
}
.agree1 {
	color: rgb(51, 51, 51);
	font-size: 14px;
	margin-left: 740px;
}
</style>
</head>
<body data-spy="scroll" data-target="#navbar-example">
	<!-- 1.회원가입약관동의 -->
	<div id="utilityMembership">
		<div class="memApply">
			<div class="mainTitle">
				<center>SKY CASTLE</center>
				<h4 id="subTitle">SKY CASTLE 회원가입을 위한 약관을 확인해주세요.</h4>
			</div>
		<form action="enrollForm2.me">
			<h4 class="subTitle">이용약관</h4>
			<div class="applyAgree">
				<h5>제 1 장 총칙</h5>
				<p>
					제1조(목적) <br> 이 약관은 ㈜SKYCASTLE(이하 ‘회사’ 또는 ‘스카이캐슬’라 합니다.) 이 제공하는
					모든 서비스(이하 ‘서비스’라 합니다.)와 관련하여 정당한 방법으로 이용함에 있어 필요한 이용 조건, 절차 및 당사자간의
					권리, 의무 등 기본적인 사항을 규정하는 것을 목적으로 합니다.
				</p>
			</div>

			<p class="agree1">
				위 이용약관에 동의합니다. <input type="checkbox" name="infoAgree" value="true">
			</p>

			<h4 class="subTitle">개인정보 수집 및 이용안내</h4>
			<div class="applyAgree" style="margin-top: 15px;">
				<p>
					개인정보의 수집 및 이용 목적 <br>
					<br> “회사”가 “회원”의 개인정보를 수집하는 것은 수집한 정보를 바탕으로 아래
					<개인정보 수집 목적 세부사항>의 각 호와 같이 원활한 서비스 제공을 위한 것이며, 보다 나은 서비스 혜택
					제공을 위해 다양한 방법 (전화, SMS, 우편 등)을 통해 서비스 관련 정보를 회원 여러분에게 제공할 수 있습니다. <개인정보
						수집 목적 세부사항> ① 서비스 제공 계약의 성립 및 유지 종료를 위한 본인확인, 개인식별, 가입의사
					확인, "회원"에 대한 고지사항 전달, 공간 예약 및 결제, 불량회원의 부정 이용 방지와 비인가 사용 방지, 고객 문의
					및 불만처리 등 CS대응 ② 신규 서비스(제품) 개발 및 특화, 인구통계학적 특성에 따른 서비스 제공 및 광고 게재,
					접속 빈도 파악 또는 서비스의 검토, 개선에 필요한 설문조사 및 분석, 회원의 서비스 이용에 대한 통계 ③ 서비스 관련
					각종 이벤트 및 행사 관련 정보 안내를 위한 SMS, 이메일, DM발송, 전화 등의 마케팅 활동. 개인정보의 수집 항목

					
				</p>
			</div>

			<div class="applyAgree">
				<p>
					개인정보의 수집 항목 <br>
					<br> “회사”는 회원 여러분에게 다양한 서비스를 제공하기 위해 아래와 같은 개인정보를 수집하고 있습니다.
					“회사”는 회원 여러분의 소중한 인권을 침해할 우려가 있는 민감한 정보 (인종, 사상 및 신조, 정치적 성향이나
					범죄기록, 의료정보 등)는 어떠한 경우에도 수집하지 않으며, 만약 불가피하게 수집하는 경우에는 반드시 회원 여러분에게
					사전 동의를 구할 것입니다. ① 회원가입 필수항목 : 이메일, 비밀번호, 이름, 생년월일, 휴대전화번호 ② 서비스 이용
					또는 사업처리 과정에서 생성/수집되는 각종 거래 및 개인성향정보 : 공간 예약 및 결제 기록, OS버전, 단말기 기기명,
					고유기기 식별 값, 접속 기록, 접속 IP정보, 쿠키(Cookie), 기기고유번호 등.
				</p>

			</div>

			<p class="agree">
				개인정보 수집 및 이용에 동의합니다. <input type="checkbox" name="infoAgree" value="true">
			</p>

			<center>
				<div class="enrollBtn">
					<!-- 취소 시 메인으로 이동 -->
					<span><button type="button" id="preBtn" class="btnsmb" onclick="javascript:history.go(-1);">취소</button></span> 
					<span><button type="submit" id="nextBtn" class="btnsmb">확인</button></span>
				</div>
			</center>
			
			<c:if test="${ !empty enrollFail }">
				<script>
					alert("${enrollFail}");  
				</script>
			<c:remove var="enrollFail" scope="session"/>
	</c:if>
		</form>	
		</div>
	</div>
	
	<!-- 
	<script>
		$(function(){
			
			$("#preBtn").click(function(){
				location.href = "${pageContext.servletContext.contextPath}";
			})
		});		 
	</script>
	-->
</body>
</html>