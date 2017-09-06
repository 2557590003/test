<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="org.qztc.service.UserService" %>
<%@page import="org.qztc.service.impl.UserServiceImpl" %>
<%@page import="org.qztc.entity.User"%>
<%
	request.setCharacterEncoding("UTF-8");
	String user_name=request.getParameter("user_name");
	String user_password=request.getParameter("user_password");
	UserService us= new UserServiceImpl();
	User user=us.get(user_name);
	if(user!=null){
		if(user.getUser_password().equals(user_password)){
			//用户名存在且密码正确
			response.sendRedirect("index.jsp?name="+user_name);
			
		}else{
		   //用户名存在但密码不正确
			response.sendRedirect("login.jsp");
		}
	}else{
		//用户名不存在
		response.sendRedirect("login.jsp");
	}
	
%>