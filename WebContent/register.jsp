<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
	.submit1{height:50px;width:240px;color:#000000;background-color:#FF00FF;}
</style>
<link href="./css/bootstrap-theme.css" rel="stylesheet" type="text/css">
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="./css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
<link href="./css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="./css/demo.css" rel="stylesheet" type="text/css">
<link href="./css/login.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/checkFrom1.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
</head>
<body>
	<div class="header">
  <h1 class="headerLogo"><img alt="汽车售票网" src="./images/1.png"></h1>
	<div class="headerNav">
		<span class="exchange">已是会员<a href="login.jsp">马上登录</a></span>
	</div>
</div>
<div class="banner">
 	<div class="login-aside">
 		<div id="o-box-up"></div>
  		<div id="o-box-down"  style="table-layout:fixed;">
   			<div class="error-box"></div>
   			<form class="registerform" action="registerCL.jsp" method="post" id="uform">
   		<div class="fm-item">
	   		<label for="logonId" class="form-label">用户注册：</label>
	   		<input type="text" value="" maxlength="100" id="username" name ="user_name" class="i-text" ajaxurl="demo/valid.jsp"  datatype="s6-18" errormsg="用户名至少6个字符,最多18个字符！"  placeholder="请输入账号">    
       		<div class="ui-form-explain" id="usernameError"></div>
  		</div>
  		<div class="fm-item">
	   		<label for="logonId" class="form-label">设置密码：</label>
	   		<input type="password" maxlength="100" id="password" name="user_password" class="i-text" datatype="*6-16" nullmsg="请设置密码！" errormsg="密码范围在6~16位之间！" placeholder="请输入密码">    
       		<div class="ui-form-explain" id="passwordError"></div>
 		</div>
 		<div class="fm-item">
	   		<label for="logonId" class="form-label">确认密码：</label>
	   		<input type="password" maxlength="100" id="password1" class="i-text" datatype="*6-16" nullmsg="请设置密码！" errormsg="密码范围在6~16位之间！" placeholder="请输入密码">    
       		<div class="ui-form-explain" id="password1Error"></div>
 		</div><br>
  		 <div >
	           <input type="checkbox" checked="checked" />
	           <input type="hidden" value="true"  /> 
	           <label for="protocol">我已阅读并同意《<a href="javascript:registerProtocol();" >汽车购票网服务协议</a>》</label>           
	     </div>
 		 <div class="fm-item">
	   		<input type="submit" value="注册" class="submit1"> 	
 		 </div>
  
  		</form>
  
  	</div>

	</div>
	<div class="bd">
		<ul>
			<li style="background:url(./images/2.jpg) #CCE1F3 center 0 no-repeat;"></li>
		</ul>
	</div>
</div>
</body>
</html>