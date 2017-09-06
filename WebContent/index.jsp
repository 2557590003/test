<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="org.qztc.service.UserService" %>
<%@page import="org.qztc.service.impl.UserServiceImpl" %>
<%@page import="org.qztc.service.impl.CarServiceImpl" %>
<%@page import="org.qztc.service.CarService" %>
<%@page import="org.qztc.entity.User"%>
<%@page import="org.qztc.entity.Car"%>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
	<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
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
  	<script type="text/javascript" src="js/bootstrap.min.js"></script>
  	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
  	<style type="text/css">
  		.aa{width:70px;height:50px;bacgrandcolor:blue;}
  	</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");		
		String name=request.getParameter("name");
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
                <li><a href="register.jsp" >注册</a></li>
                <li>|</li>
                <li><a style="cursor:pointer;"  rel="nofollow" onclick="location.href='login.jsp' + (location.href.indexOf('login.jsp') < 0 ? '?redirect=' + location.href : '')" >登录</a></li>
           		<li>|</li>
           		<li>
	                <a  onclick="getName();" target='_blank' class="user"><%=name%></a>
	            </li>
            </ul>
            </div>
        </div>
    </div>
    <div class="subnav">
        <div class="wrap">
        <ul>
        	 <li><a href="index.jsp">汽车售票官网</a></li>
	        <li><a href="#">关于我们</a></li>
	        <li><a href="#">开发团队</a></li>
	        <li><a href="#">意见反馈</a></li>
	        <li><a href="#">帮助</a></li>
        </ul>  
        </div>
    </div>
 	<!--页头end-->
 	<!--中间部分start-->
 	<div class="main2">
        <div class="wrap">
        	<!--面包屑start-->
        	<div class="crumbs">
        		<span>当前位置：</span>
				<a href="index.jsp" title="汽车票查询">长途汽车查询</a>
            </div>
     <!--面包屑end-->
            <!--三级搜索框start-->
            <form>
            <input type="hidden" name="param" value="/route/home" />
            <input type="hidden" name="routeType" value="piaojia" />
            <div class="lt_search white_box">
                <ul class="item_cont">
                    <li class="input_city">
                        <label>出发城市</label>
                        <input name="from" type="text" value="请输入出发城市"  class="" id="from_city" onfocus="showCity('from_city')" city_type ='from' autoComplete="Off" />
                        <input name="from_city_hide" type="hidden" id="from_city_hide" value="beijing" />
                        <em class="city_ico" onclick="$('#from_city').focus();"></em>
                    </li>
                    <li class="input_city">
                        <label>到达城市</label>
                        <input name="to" type="text" value="请输入到达城市"  class="" id="to_city"   onfocus="showCity('to_city')"  city_type ='to' onblur="hideCity()" autoComplete="Off" />
                        <input name="to_city_hide" type="hidden" id="to_city_hide" value="wuhan" />
                        <em class="city_ico"></em>
                    </li>
                    <li class="input_date">
                        <label>出发日期</label>
                        <input type="text" class="Wdate" id="d122" onFocus="WdatePicker({isShowWeek:true,onpicked:function() {$dp.$('d122_1').value=$dp.cal.getP('W','W');$dp.$('d122_2').value=$dp.cal.getP('W','WW');}})"/>
                    </li>
                    <li><input type="button" name="" class="lt_search_btn btn_blue" value="查 询" onclick="loadUser()"/></li>
                </ul>
            </div>
            </form>   	
  	</div>
  	
</div>

<script type="text/javascript">
function loadUser(){
	var c_date = $('#d122').val();
	var c_qd = $('#from_city').val();
	var c_zd = $('#to_city').val();
	$.ajax({
		'url':'list.jsp',
		'type':'post',
		'data':{'c_date':c_date,'c_qd':c_qd,'c_zd':c_zd},
		'dataType':'json',
		success:function(data){ 
			var val="";	
			$(data).each(function(i,obj){
				val+="<tr align='center'>";
				val+="<td><h5>"+obj.c_qd+"</h5></td>";
				val+="<td><h5>"+obj.c_zd+"</h5></td>";
				val+="<td><h5>"+obj.c_ks+"</h5></td>";
				val+="<td><h5>"+obj.c_time+"</h5></td>";
				val+="<td><h5>"+obj.c_number+"</h5></td>";
				val+="<td><h5>"+obj.c_money+"</h5></td>";
				val+="<td><input type='button' class='aa' onclick=update('"+obj.c_id+"') value='购买'></td>";
				val+="</tr>";
			});
			$('#div1').html(val);
		}
	});
}
function update(c_id){
		var c_date = $('#d122').val();
		var c_qd = $('#from_city').val();
		var c_zd = $('#to_city').val();
		var uname = "<%=name%>";
		$.ajax({
			'url':'fond.jsp',
			'data':{'c_id':c_id,'uname':uname,'c_date':c_date,'c_qd':c_qd,'c_zd':c_zd},
			'type':'post',
			success:function(){
				alert("够买成功");
			}
		});
		
	}
function getName(){
	window.location.href="dingdang.jsp?getName="+"<%=name%>"; 
}
</script>
</head>
  	<div >
  		<table class='table table-bordered'  >
  			<tr align='center' ><td><h3>起点</h3></td>
  			<td><h3>终点</h3></td><td>
  			<h3>发车时间</h3></td><td><h3>经过时间</h3></td>
  			<td><h3>剩余车票</h3></td><td><h3>票价</h3></td>
  			<td><h3>购票</h3></td></tr>
  			<tbody id="div1">
  			
  			</tbody>
  		</table>
  	</div>
 	<!--中间部分end-->
</body>
</html>