window.onload = function(){
	//动态的给uname文本框注册事件
	document.getElementById("username").onblur=checkUname;
	document.getElementById("password").onblur=checkUpassword;
	document.getElementById("password1").onblur=checkUpasswordConFirm;
	document.getElementById("uform").onsubmit=checkAll;
}
function checkAll(){
	return checkUname()&&checkUpassword()&&checkUpasswordConFirm();
}
function checkUname(){
	var uname=document.getElementById("username");
	var unameError=document.getElementById("usernameError");
	if(uname.value==""){
		unameError.innerHTML="<font color='red'>账号不能为空<font/>";
		return false;
	}
	return true;	
}
function checkUpassword(){
	var upassword=document.getElementById("password");
	var upasswordError=document.getElementById("passwordError");
	if(upassword.value==""){
		upasswordError.innerHTML="<font color='red'>密码不能为空<font/>";
		return false;
	}
	if(upassword.value.length<6){
		upasswordError.innerHTML="<font color='red'>密码不能小于6位<font/>";
		return false;
	}
	return true;
}
function checkUpasswordConFirm(){
	var upassword=document.getElementById("password");
	var upasswordConFirm=document.getElementById("password1");
	var upasswordConFirmError=document.getElementById("password1Error");
	if(upasswordConFirm.value==""){
		upasswordConFirmError.innerHTML="<font color='red'>密码不能为空<font/>";
		return false;
	}
	if(upassword.value!=upasswordConFirm.value){
		upasswordConFirmError.innerHTML="<font color='red'>两次密码不一样<font/>";
		return false;
	}
	return true;
}