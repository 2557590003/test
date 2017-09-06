window.onload = function(){
	document.getElementById("username").onblur=checkUname;
	document.getElementById("password").onblur=checkUpassword;
	document.getElementById("uform").onsubmit=checkAll;
}
function checkAll(){
	return checkUname()&&checkUpassword();
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
