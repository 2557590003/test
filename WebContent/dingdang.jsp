<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="http://img3.tieyou.com/css/base2014.css?v=20150302" />
    <link rel="stylesheet" type="text/css" href="http://img3.tieyou.com/css/qiche.css?v=20150317" />
    <link rel="stylesheet" type="text/css" href="http://img3.tieyou.com/css/calendar.css?v=20150302" />
    <script type="text/javascript" src="http://img3.tieyou.com/js/jquery-1.4.2.min.js?v=20150302"></script>
    <script type="text/javascript" src="http://img3.tieyou.com/js/common2014.js?v=20150302"></script>
    <script type="text/javascript" src="http://img3.tieyou.com/qiche/js/loginInfo.js?v=20150302"></script>
	<script type="text/javascript" src="http://img3.tieyou.com/qiche/js/buspjcity.js?v=20150302"></script>
	<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript" src="http://img3.tieyou.com/qiche/js/calendar_bar.js?v=20150302"></script>
  	<script type="text/javascript" src="http://img3.tieyou.com/qiche/js/piaojiaList.js?v=20150302"></script>
  	<script type="text/javascript" src="http://img3.tieyou.com/js/hezuo.js?v=20150302"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的订单</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");		
		String myName=request.getParameter("getName");
	%>
	<!--页头-->
    <div class="head">
        <div class="wrap">
            <h1 class="headerLogo"><img alt="汽车售票网" src="./images/1.png"></h1>
            <dl class="head_tq" id="f_header_tianqi">

                <dd >
                </dd>
            </dl>
            <div class="top_login">
            <ul class="head_nav">
                <li><a href="register.jsp">联系客服</a></li>
           		<li>|</li>
           		<li>
	                <a onclick="toIndex();">返回首页</a>
	            </li>
	            <li>|</li>
	           	<li ><%=myName%></li>
           		
            </ul>
            </div>
        </div>
    </div>
   
	

	<table class="table">
   <thead>
  		 <tr align="center"><td colspan="7"><h2><%=myName%>的订单</h2></td></tr>
         <tr align='center'>
         	<td><h3>起点</h3></td>
  			<td><h3>终点</h3></td>
  			<td><h3>发车时间</h3></td>
  			<td><h3>经过时间</h3></td>
  			<td><h3>票价</h3></td>
  			<td><h3>数量</h3></td>
  			<td><h3>出发日期</h3></td>
  	</tr>  
   </thead>
   <tbody id="div1">
     	
   </tbody>
   </table>
   <script type="text/javascript">
   $(document).ready(function(){
		loadUser();
	});
   function loadUser(){
		var name = "<%=myName%>";
		$.ajax({
			'url':'dingdangCL.jsp',
			'type':'post',
			'data':{"name":name},
			'dataType':'json',
			success:function(data){ 
				var val="";	
				$(data).each(function(i,obj){
					val+="<tr align='center'>";
					val+="<td><h5>"+obj.o_qd+"</h5></td>";
					val+="<td><h5>"+obj.o_zd+"</h5></td>";
					val+="<td><h5>"+obj.o_ks+"</h5></td>";
					val+="<td><h5>"+obj.o_time+"</h5></td>";
					val+="<td><h5>"+obj.o_money+"</h5></td>";
					val+="<td><h5>"+obj.o_number+"</h5></td>";
					val+="<td><h5>"+obj.o_date+"</h5></td>";
					val+="</tr>";
				});
				$('#div1').html(val);
			}
		});
	}
   function toIndex(){
		window.location.href="index.jsp?name="+"<%=myName%>"; 
	}
   </script>
</body>
</html>