<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
	var IMP = window.IMP; // 생략가능
	IMP.init('imp40758225'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
	
	IMP.request_pay({
	    pg : ' html5_inicis', // version 1.1.0부터 지원.
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '주문명:결제테스트',
	    amount : ${reservation.totalCost},
	    buyer_email : 'iamport@siot.do',
	    buyer_name : ${loginUser.userName},
	    buyer_tel :  ${loginUser.phone},
	    buyer_addr : '미입력',
	    buyer_postcode : '123-456',
	    m_redirect_url : 'http://192.168.30.225:9999/teaspoon'
	}, function(rsp) {
	    if ( rsp.success ) {
	        var msg = '결제가 완료되었습니다.';
	        msg += '고유ID : ' + rsp.imp_uid;
	        msg += '상점 거래ID : ' + rsp.merchant_uid;
	        msg += '결제 금액 : ' + rsp.paid_amount;
	        msg += '카드 승인번호 : ' + rsp.apply_num;
	        
	        location.href="my.me";
	    } else {
	        var msg = '결제에 실패하였습니다.';
	        if('${reservation.category}' == 1){
	        	
	        	location.href="reservInsert.re";
	        }else{
	        	location.href="reservSpaceInsert.re";
	        }
	        msg += '에러내용 : ' + rsp.error_msg;
	    }
	    alert(msg);
	});
</script>
</head>
<body>
	
	
	
</body>


</html>