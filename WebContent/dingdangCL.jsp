<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="org.qztc.service.DingDangService"%>
    <%@page import="org.qztc.service.impl.DingDangServiceImpl"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name=request.getParameter("name");
	DingDangService dds=new DingDangServiceImpl();
	String json=dds.getListJson(name);
	out.println(json);
%>