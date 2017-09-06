<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.UUID"%>
<%@page import="org.qztc.service.UserService" %>
<%@page import="org.qztc.service.impl.UserServiceImpl" %>
<%@page import="org.qztc.entity.User"%>
<%
	//处理乱码
	request.setCharacterEncoding("UTF-8");
	   //接收表单中控件的值；实现添加功能
	String user_id=UUID.randomUUID().toString();
	String user_name=request.getParameter("user_name");
	String user_password=request.getParameter("user_password");
	String user_phone="";
	String user_address="";
	User user=new User(user_id,user_name,user_password,user_phone,user_address);
	UserService us= new UserServiceImpl();
	us.add(user);
	response.sendRedirect("login.jsp?user_name="+user_name);
%>
