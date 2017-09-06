<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="org.qztc.service.impl.CarServiceImpl"%>
<%@page import="org.qztc.service.CarService"%>
<%@page import="org.qztc.entity.Car"%>
<%
	request.setCharacterEncoding("UTF-8");
	String c_date=request.getParameter("c_date");	
	String c_qd=request.getParameter("c_qd");
	String c_zd=request.getParameter("c_zd");
	CarService cs=new CarServiceImpl();
	String json=cs.getListJson(c_date,c_qd,c_zd); 
	out.println(json);
%>