<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>좌석 현황 관리자</title>

    <!-- 좌석 표 css-->
    <style>
	    /*좌석  css*/	
		.Style9 {border: 1px; border-style:solid; color: white;background-color:#fdce07;font-weight:bold;}
		.Style_1 {border: 1px; border-style:solid;background-color:#fdce07;font-weight:bold; color: white;}
		.Style9 {border: 1px; border-style:solid; color:white; background-color:#333333;font-weight:300;}
		.Style_9 {border: 1px; border-style:solid; background-color:#333333;font-weight:bold; color: white;}
		.Style10 {border: 1px; border-style:solid; background-color:red;font-weight:bold; color: white;}
		.Style_10 {border: 1px; border-style:solid; background-color:red;font-weight:bold; color: white;}
		/* 좌석 누를때 css */
	    #seatTable .Style9:hover,.Style1:hover,.Style10:hover{
		    cursor: pointer;
		}
    </style> 



</head>
<body>
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
                   <!-- 좌석박스 시작 -->
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
			        
			       <!-- 좌석박스 오른쪽 설명박스 -->
			        <td id="comment" style="vertical-align: top; text-align:center">
			            <center>     
				            
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
		
		<!-- 
		좌석 클릭 시 뜨는 모달
	            <div class="modal fade" id="spaceLiModal" >
	                <div class="modal-dialog modal-sm">
	                    <div class="modal-content" style="width: 400px;">
	
	                    Modal Header
	                    <div class="modal-header">
	                        <h4 class="modal-title">좌석 관리</h4>
	                        <button type="button" class="close" data-dismiss="modal">&times;</button> 
	                    </div>
	
	                    <form id="updateSpace_form" action="" method="post" class="form-horizontal">
	                        Modal Body
	                        <div class="modal-body">
	                        <label>&nbsp;&nbsp;예약번호&nbsp;  :&nbsp; </label><input type="number" id="" name="" readonly><br><br>
	                            <label>&nbsp;&nbsp;회원명&nbsp;  :&nbsp; </label><input type="text" id="" name=""><br><br>
	                            <label>&nbsp;&nbsp;좌석번호&nbsp;  :&nbsp; </label><input type="text" id="" name="" ><br><br>
	                           <label>&nbsp;&nbsp;시작시간&nbsp;  :&nbsp; </label><input type="text" id="" name=""><br><br>
	                            <label>&nbsp;&nbsp;끝시간&nbsp;  :&nbsp; </label><input type="text" id="" name=""><br><br>
	                        </div>
	                            
	                        
	                    Modal footer
	                    <div class="modal-footer">
	                        <button type="button" class="btn btn-primary" id="usableSp_Btn">사용가능</button>
	                        <button type="button" class="btn btn-danger" id="unusableSp_Btn">사용불가</button>
	                        <button type="button"  id="modal_close" class="searchBtn btn btn-secondary" data-dismiss="modal">취소</button>
	                     </div>
	                </form>
	                    </div>
	                </div>
	            </div>
	           모달 종료   
		
				<script>
	             function spaceLiModal(){
	   			 $('#spaceLiModal').modal({
			       
			  	  });
				};
				
				
	         
	            	$("#dataTable tbody tr").click(function(){
	            		$("#spaceNo").val($(this).children().eq(0).text());
	            		$("#spaceName").val($(this).children().eq(1).text());
	            		$("#personnel").val($(this).children().eq(2).text());
	            		$("#spacePrice").val($(this).children().eq(3).text());
	            		$("#status").val($(this).children().eq(4).text());
	            		
	            	});
	            	
	            	-->
	            	
	            	
	            	//좌석 상태&클릭 
	            	  <script>
  
 	
					function selectSeatStatusList(){
						$.ajax({
							url:"SeatStatus.ad",					//상태조회url
							async: false,   						//이건뭘까..
							success:function(status){				//성공하면 상태 돌려받음
								//console.log(status);
								
							var seatUsedCount = 0; 					//사용된 좌석 갯수
							var seatRepairingCount = 0;				//수리된 좌석 갯수
							var items = document.getElementsByClassName("Style9"); //좌석들을 변수로줌
							//console.log(items);
									for(var i=0; i<status.length; i++){ 			//반복문으로 상태뽑는중
										if(status[i].refNo != 0){					//사용좌석번호가0이아니다 할때 반복시작(1번좌석시작)
											//console.log(status[i].refNo);
											for(var j=0; j<items.length; j++){			     //반복문 검색으로 나열,,
									             if( items[j].innerText == status[i].refNo ){   //좌석번호랑 예약좌석번호가 같으면
									            	 items[j].style.backgroundColor = "#fdce07"; //사용중(노랑)으로 바꾼다		              
									           	 }
								            }
										      seatUsedCount++;			//또한 사용중 숫자 올림
							            }else if(status[i].status == 'N'){ //  좌석상태가 n이면
							            	for(var j=0; j<items.length; j++){
									             if( items[j].innerText == status[i].seatNo ){//같은좌석인지 확인하는 과정?
									            	 items[j].classList.add('Style10');	 //10을 추가하고
									            	 items[j].classList.remove('Style9');	//9를 지워라	 
									           	 }
								            }
							            	seatRepairingCount++;  //수리중 수 증가
							            }
						            }
									
				/* 
								 var value = "";
				
									value += "<tr>" +
				        						"<th>" + status.length + "</th>" +  //상태길이..? 랭스는 문자의 길이아닌가..? 전체갯수
				       							"<th>" + seatUsedCount + "</th>" +	//사용중 좌석수
				       							"<th>" + (status.length-seatUsedCount-seatRepairingCount) + "</th>" + //사용가능수
				       							"<th>" + seatRepairingCount + "</th>" + //수리중좌석수
				   							  "</tr>"; 
									
								
								$("#stats tbody").html(value);  //티바디안에 넣겠다 html태그사용해서
								 */
							},error:function(){	
								console.log("좌석현황 ajax 통신 실패!!");
							}
						});
					}
					
					//좌석현황 조회 함수 호출
					selectSeatStatusList();
					setInterval(function() {
						selectSeatStatusList();
					}, 3000);					//????
					
					
					$(function(){
				
						$("#seatTable .Style9").click(function(){	
							console.log("1")
							location.href="seatRdetail.re?seatNo="+ $(this).text(); //좌석번호를 링크로 넘김seatNo로
							//console.log($(this));
						});
						
						$("#seatTable .Style10").click(function(){
							alert("수리중입니다.");			//수리중 누르면 수리중이라고 뜨게
						});
						
					});
					            	
	            	
	            	
				</script>
				
				</main>
				</div>
</body>
</html>