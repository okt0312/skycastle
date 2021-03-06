<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>좌석 현황</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<style>
		div{
		   /* border: 1px solid red; */
		   box-sizing: border-box;
		}
		.content{
		    max-width: 1700px;
		    margin:auto;
		}
		
		.content_1{
		    max-width: 1200px;
		    margin:auto;
		}
		
		#seatStateMain{
		   width: 100%;
		   height: 70px;
		   background-color: #fdce07;
		   color:white;
		   font-weight: bold;
		   font-size: 25px;
		   line-height: 65px;
		}
		
		#dateState{
		   border-top: 2px solid gray;
		   border-bottom: 2px solid gray;
		   height: 70px;
		   font-size: 20px;
		   font-weight: bold;
		   text-align: center;
		   line-height: 55px;
		}
	</style> 
	
	<!-- 좌석 표 css-->
	<style type="text/css">
		.Style9 {border: 1px; border-style:solid; color: white;background-color:#fdce07;font-weight:bold;}
		.Style_1 {border: 1px; border-style:solid;background-color:#fdce07;font-weight:bold; color: white;}
		.Style9 {border: 1px; border-style:solid; color:white; background-color:#333333;font-weight:300;}
		.Style_9 {border: 1px; border-style:solid; background-color:#333333;font-weight:bold; color: white;}
		.Style10 {border: 1px; border-style:solid; background-color:red;font-weight:bold; color: white;}
		.Style_10 {border: 1px; border-style:solid; background-color:red;font-weight:bold; color: white;}
	</style>
	
	<style>
		#seatTable .Style9:hover,.Style1:hover,.Style10:hover{
		    cursor: pointer;
		}
	</style>

</head>
<body>

	<c:set var="current" value="<%= new java.util.Date() %>"/>
	

	<style>
		.sky_btn1{
			padding:0px;
			boder:0px;
			margin-top:4px;
			line-height:10px;
		}
	</style>
	
	<div id="layoutSidenav"> 
<jsp:include page="common/adminSidebar.jsp"/>
		 <div id="layoutSidenav_content">
<!--시작-->
                
            <main style="width:100%;">
               <div  class="container-fluid" style="padding-right: 10px; ">
                   <h1 class="mt-4"><b>좌석 현황</b></h1>
                   <!--작은 회색 네모-->
                   <ol class="breadcrumb mb-4" >
                       <li class="breadcrumb-item"><a href="index.html" style="color:black"><b>HOME</b></a></li>
                       <li class="breadcrumb-item active"><a style="color:black">좌석 현황</a></li>
                   </ol>
    <div class="content">
        <div class="content_1">
        

        

	        <div id="dateState">
	            <table style="width:100%">
	                <tr>
	                    <th style="width: 47%; text-align: left;">&nbsp;&nbsp;&nbsp;<fmt:formatDate value="${current }" type="date"/></th>
	                    <th style="width: 53%; text-align:left;">전체 좌석 현황</th>
	                </tr>
	            </table>
	        </div>

	        <br><br>
	
	        <div id="seatState">
	            <table id ="stats" class="table" border="1px" style="text-align: center; border-color:#e9ecef;">
					<thead class="thead-light">
						<tr>
						  <th>전체좌석</th>
						  <th>사용중 좌석</th>
						  <th>미사용중 좌석</th>
						  <th>수리중</th>
						</tr>
					</thead>
					<tbody>
						
					</tbody>
				</table>
	        </div>
        

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
			            		<tr><td width="50px">&nbsp;</td>
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
									<td width="50px">&nbsp;</td>
								</tr>
								<tr><td colspan="3">&nbsp;</td></tr>
							</table>
						</center>
				        <br />
					</td>
			        
			        
			        <td id="comment" style="vertical-align: top; text-align:center">
			            <center>     
				            <!-- Todo : 남녀구분할 경우 처리 -->
				            <table cellpadding="2" style="width:100px; border-color:black">
					            <tr style="height:15px">
									<td style="width:100px;text-align: center; font-size:12px" class='Style_1'>사용중</td>
								</tr>
								<tr style="height:15px">
									<td style="width:100px;text-align: center; font-size:12px" class='Style_9'>미사용중</td>
								</tr>
								<tr style="height:15px">
									<td style="width:100px;text-align: center; font-size:12px" class='Style_10'>수리중</td>
								</tr>
				            </table>
			            </center>
			        </td>
			    </tr>
			   
			</table>
        </div>
    </div>
         	 <script>
           function spaceLiModal(){
 			
	};
	</script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                
	            <!-- 소모임 tr 클릭 시 뜨는 모달 -->
	            <div class="modal fade" id="seatStModal" >
	                <div class="modal-dialog modal-sm">
	                    <div class="modal-content" style="width: 700px;">
	
	                    <!-- Modal Header -->
	                    <div class="modal-header">
	                        <h4 class="modal-title">좌석 관리</h4>
	                        <button type="button" class="close" data-dismiss="modal">&times;</button> 
	                    </div>
	
	                    <form id="updateSpace_form" action="" method="post" class="form-horizontal">
	                        <!-- Modal Body -->
	                        <div class="modal-body" id="modal_out">
	                        <label>&nbsp;&nbsp;좌석번호&nbsp;  :&nbsp; </label><input type="text" id="seatNo" name="seatNo" readonly ><br><br>
	                        <div id="modal_in">
	                        
	                        
	                        
	                        </div>
								
								 
								
						
						
	                        </div>
	                            
	                        
	                    <!-- Modal footer -->
	                    <div class="modal-footer">
	                        <button type="button" class="btn btn-primary" id="usableSp_Btn" status="Y">사용가능</button>
	                        <button type="button" class="btn btn-danger" id="unusableSp_Btn" status="N">사용불가</button>
	                        <button type="button"  id="modal_close" class="searchBtn btn btn-secondary" data-dismiss="modal">취소</button>
	                     </div>
	                </form>
	                    </div>
	                </div>
	            </div>
	           <!--모달 종료  --> 
 
 
    
    <script>
  
 	//모달 상태(색깔 바꿔주는 것)
	function selectSeatStatusList(){
		$.ajax({
			url:"SeatStatus.re",
			async: false,
			success:function(status){
				//console.log(status);
				
			var seatUsedCount = 0;
			var seatRepairingCount = 0;	
			var items = document.getElementsByClassName("Style9");
			//console.log(items);
					for(var i=0; i<status.length; i++){
						if(status[i].refNo != 0){
							//console.log(status[i].refNo);
							for(var j=0; j<items.length; j++){
					             if( items[j].innerText == status[i].refNo ){
					            	 items[j].style.backgroundColor = "#fdce07";					               
					           	 }
				            }
						      seatUsedCount++;
			            }else if(status[i].status == 'N'){
			            	for(var j=0; j<items.length; j++){
					             if( items[j].innerText == status[i].seatNo ){
					            	 items[j].classList.add('Style10');	 
					            	 items[j].classList.remove('Style9');	 
					           	 }
				            }
			            	seatRepairingCount++;
			            }
		            }
					

				 var value = "";

					value += "<tr>" +
        						"<th>" + status.length + "</th>" +
       							"<th>" + seatUsedCount + "</th>" +
       							"<th>" + (status.length-seatUsedCount-seatRepairingCount) + "</th>" +
       							"<th>" + seatRepairingCount + "</th>" +
   							  "</tr>"; 
					
				
				$("#stats tbody").html(value); 
				
			},error:function(){	
				console.log("좌석현황 ajax 통신 실패!!");
			}
		});
	}
	
	//좌석현황 조회 함수 호출(실시간으로 바꿔주는것)
	selectSeatStatusList();
	setInterval(function() {
		selectSeatStatusList();
	}, 3000);
	
	
	$(function(){
      
	
		$("#seatTable .Style9,.Style10").click(function(){
			var seatNo = $(this).text();
			timeList(seatNo);
			//console.log($("#seatNo").val(Number(seatNo)));
			$("#seatNo").val(Number(seatNo));
		
			 $('#seatStModal').modal({		       
				
			 });
			 
		});
		
		$("#usableSp_Btn,#unusableSp_Btn").click(function(){
			var seatNo =$("#seatNo").val();
			var status = $(this).attr("status");
			//console.log(seatNo);
			//console.log(status);
			
			
						
							$.ajax({
								url:"seatStatusMgmt.ad",
								data:{"seatNo" : seatNo,
									  "status" : status
								},
								type:"post",
								success:function(msg)
								{
									alertify.alert("좌석 관리", msg,function(){ location.reload();} );
								},
								error:function()
								{
									console.log("ajax통신 실패");
								}
								
							});
							
		
				   	}); 
		
		
		
		
	    
			});	
	
	//여기 모달값넌는곳!
	function timeList(seatNo){
		$.ajax({
			url:"selectSeatReservationTime.re",
			async: false,
			data: {seatNo:seatNo},
			success:function(ReservationTime){
				console.log(ReservationTime);
				
				
				
				var value = "";
					
					for(var r in ReservationTime){
						value += "<label>&nbsp;&nbsp;"+[Number(r)+Number(1)]+"번째예약&nbsp;&nbsp; </label><br>"+
		                        "이름 : <input type='text' id='rno' value='"+ReservationTime[r].userName+"'><br>" +  
		                        "아이디 : <input type='text' id='rno' value='"+ReservationTime[r].userId+"'><br>"+
		                        "이용시간 : <input type='text' id='rno' value='"+ReservationTime[r].startTime+"'> ~ "+
		                       	"<input type='text' id='rno' value='"+ReservationTime[r].endTime+"'>"+
		                        "<br><br>";
		                        
		                        
					}
					
					$("#modal_out #modal_in").html(value);
					
				},error:function(){
					console.log("좌석 리스트 조회용 ajax 통신실패!!");
				}
			});
				
				
		
		}
	
		
	
	
    </script>
    </main>
    <jsp:include page="common/adFooter.jsp"/>
    </div>
</body>
</html>