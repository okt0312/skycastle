<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>예약 세부 정보</title>
    <style>
		div{
		   /* border: 1px solid red; */
		   box-sizing: border-box;
		}
		.content{
		    max-width: 1700px;
		    margin:auto;
		    margin-bottom:200px;
		}
		
		.content_1{
		    max-width: 1200px;
		    margin:auto;
		}
		
		#title{
		   width: 100%; 
		   border-top: 2px solid gray;
		   border-bottom: 2px solid gray;
		   height: 70px;
		   font-size: 20px;
		   font-weight: bold;
		   line-height: 55px;
		}
		
		#detail div{
		    float: left;
		}
     
    </style>

    <!-- 좌석 표 css-->
    <style type="text/css">
	    .Style9 {border: 1px; border-style:solid; color: black;background-color:lightgray;font-weight:bold;}
    </style>

    <style>
	    .sky_btn1 /* 확인 버튼 */
	    {	
	        width: 450px;
	        height: 40px;
	        text-align: center;
	        font-size: 25px;
	        font-weight: bold;
	        border-radius: 5px;
	        padding: 10px;
	        cursor: pointer;
	        background: #fdce07;
	        color: #000000;
	        border: 0;
	        color: white;
	    }
		.sky_btn1:hover{
			background:#fff;
			border:1.5px solid #333;
			color:#333;
			font-weight:550
			}
	    #payTable{
	        background-color: #f1f1f1;
	        width: 100%;
	        height: 80spx;
	        font-size: 25px;
	        text-align: center;
	      
	    }
	    #payTable tr td{padding:10px}
	    #payD{
	   	    float:left;
	        width: 100%;
	        margin:auto;
	    }
	    
	    .discount_tb{width: 750px;
 	    	margin-bottom:20px 
	    	 
	    }
	    .discount_tb td{padding:15px; text-align:center; font-size:15px }
	    .discount_tb thead tr td{
	    	background:#ffe885;
	    	font-weight:600;
	    	font-size:18px;
	    }
    </style>


</head>
<body>
<jsp:include page="../common/menubar.jsp"/>
    <div class="content">
        <div class="content_1">
        	<div style="height: 50px;"></div>
	        <div id="title">
	            &nbsp;&nbsp;&nbsp; 예약하기
	        </div>
    
	        <br>
	        <p style="font-size: 20px; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	        	선택공간 세부사항</p>
	        <div id="seat">
	            <div style="font-weight: bold; font-size:18px;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	            <span>${reservation.refNo}</span>번좌석</div>
	            <div>
	                <table cellpadding="0" cellspacing="0" border="0" width="100%">
	  
						<tr>
						    <td rowspan="3" style="width:35px;">&nbsp;</td>
						    <td colspan="2" align="left">
						    <!-- 430px -->
						        <br />            
						    </td>
						    <td style="width:120px">&nbsp;</td>
						</tr>
	                    <tr>
	                        <td id="tbl_table" colspan="2" style="border-style:solid; border-width:2px; border-color:#ffffff">
	                        	<center>
	                        		<table border="0">
			                            <tr><td colspan=3>&nbsp;</td></tr>
			                            <tr>
			                            	<td width="50px">&nbsp;</td>
			                            	<td>
				                                <table id="seatTable"  class="BlackText_Status" cellpadding="1" cellspacing="3">
					                                <tr>
										                <td style="text-align: center;width:30px;height:25px;">
										                	&nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                	&nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                	&nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                	&nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                	&nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                	&nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                	&nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                	&nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                	&nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                	&nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                	&nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                	&nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                	&nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                	&nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                	&nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                	&nbsp;
										                </td>
									                </tr>
									                <tr>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                15</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                14</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                13</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                12</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                11</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                10</td>
										                <td style="text-align: center;width:30px;height:25px;">
										                	&nbsp;
										                </td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                9</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                8</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                7</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                6</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                5</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                4</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                3</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                2</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                1</td>
									                </tr>
									                <tr>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                16</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                17</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                18</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                19</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                20</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                21</td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                22</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                23</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                24</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                25</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                26</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                27</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                28</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                29</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                30</td>
									                </tr>
									                <tr>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
									                </tr>
									                <tr>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                45</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                44</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                43</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                42</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                41</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                40</td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                39</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                38</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                37</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                36</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                35</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                34</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                33</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                32</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                31</td>
									                </tr>
									                <tr>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                46</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                47</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                48</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                49</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                50</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                51</td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                52</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                53</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                54</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                55</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                56</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                57</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                58</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                59</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                60</td>
									                </tr>
									                <tr>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
									                </tr>
									                <tr>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                72</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                71</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                70</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                69</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                68</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                67</td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                66</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                65</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                64</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                63</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                62</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                61</td>
									                </tr>
									                <tr>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                73</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                74</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                75</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                76</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                77</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                78</td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                79</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                80</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                81</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                82</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                83</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                84</td>
									                </tr>
									                <tr>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
									                </tr>
									                <tr>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                99</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                98</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                97</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                96</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                95</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                94</td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                93</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                92</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                91</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                90</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                89</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                88</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                87</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                86</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                85</td>
									                </tr>
									                <tr>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                100</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                101</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                102</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                103</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                104</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                105</td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                106</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                107</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                108</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                109</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                110</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                111</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                112</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                113</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                114</td>
									                </tr>
									                <tr>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
									                </tr>
									                <tr>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                123</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                122</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                121</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                120</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                119</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                118</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                117</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                116</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                115</td>
									                </tr>
									                <tr>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                124</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                125</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                126</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                127</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                128</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                129</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                130</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                131</td>
										                <td class='Style9' style="text-align: center;width:30px;height:25px; font-size:10px;">
										                132</td>
									                </tr>
									                <tr>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
										                <td style="text-align: center;width:30px;height:25px;">
										                &nbsp;
										                </td>
									                </tr>
				                				</table>
	            							</td>
	            						</tr>
	            					</table>
	            				</center>
	            			</td>
	            		</tr>
	            	</table>
				</div>
			</div>
     		<br><br><br>
       
			<center>
            	<div id="payD">
            		<table class="discount_tb" cellpadding="0" cellspacing="0" align="center">
            			<thead>
	            			<tr>
	            				<td width="40%">선택사항</td>
	            				<td width="35%">사용쿠폰</td>
	            				<td width="25%">등급할인</td>
	            			</tr>
	            		</thead>
	            		<tbody>
	            			<tr>
	            				<td>${reservation.usedDate} &nbsp;&nbsp;${reservation.startTime}~ ${reservation.endTime}</td>
	            				<td>${coupon.couponName }</td>
	            				<td>${grade.gradeName }</td>
	            			</tr>
	            		</tbody>	
            		</table>
            	 </div>
            		<br clear="both">
          
	                <table id="payTable" >
	                    <tr style="font-size: 10px;">
	                        <td colspan="3"></td>
	                        <td style="font-size:15px">(쿠폰할인)</td>
	                        <td></td>
	                        <td style="font-size:15px">(등급할인)</td>
	                        <td></td>
	                        <td></td>
	                    </tr>
	                    <tr>
	                        <td>최종결제금액 : </td>
	                        <td><span id="total">${reservation.totalCost}</span>원</td>
	                        <td>-</td>
	                        <td><span id="couponDiscount"></span>원</td>
	                        <td>-</td>
	                        <td><span id="gradeDiscount"></span>원</td>
	                        <td>=</td>
	                        <td><span id="totalCost"></span>원</td>
	                    </tr>
	                </table>
                
	                <br>
	                <button class="sky_btn1" id="pay" style="line-height:35px; height:50px">바로 결제 하기</button>
            	</div>
			</center>
		</div>
    </div>
    <form action="payment.re"  method="post" id="reservInsert">
    <input type="hidden" name="userNo" value="${reservation.userNo}"> 
  	<input type="hidden" name="refNo" value="${reservation.refNo}">
  	<input type="hidden" name="couponCode" value="${reservation.couponCode}">
  	<input type="hidden" id="finalTotal" name="totalCost"> 
  	<input type="hidden" name="gradeDiscount" value="${grade.discount}"> 
  	<input type="hidden" name="usedDate" value="${reservation.usedDate}"> 
  	<input type="hidden" name="startTime" value="${reservation.startTime}"> 
  	<input type="hidden" name="endTime" value="${reservation.endTime}"> 
  	<input type="hidden" name="category" value="1"> 
    </form>
    <jsp:include page="../common/footer.jsp"/>
</body>

	<script>
		$(function(){
			var total = $("#total").text();
			var couponDisCountRate = ${coupon.discountRate};
			var gradeDiscountRate = ${grade.discount};
			
			var couponDisCount = $("#couponDiscount").text(total * couponDisCountRate).text();
			var gradeDiscount = $("#gradeDiscount").text(total *  gradeDiscountRate).text();
			
			
			$("#totalCost").text(total-couponDisCount-gradeDiscount);
			$("#finalTotal").val($("#totalCost").text());
			//console.log(gradeDiscount);
			//console.log(couponDisCount);
			
				
			  var items = document.getElementsByClassName("Style9");
				//console.log(items);
	            for(var i=0; i<items.length; i++){
		             if( items[i].innerText == ${reservation.refNo}){
		            		
		            	
		            	 items[i].style.backgroundColor = "red";
		               
		           	 }
	            }
	            
	          $("#pay").click(function(){
	        	  $("#reservInsert").submit();
	          });  
	            
		});
	</script>
</html>