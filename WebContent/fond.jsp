<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="org.qztc.service.impl.CarServiceImpl"%>
<%@page import="org.qztc.service.CarService"%>
<%@page import="org.qztc.entity.Car"%>
<%@page import="org.qztc.entity.Dingdang"%>
<%@page import="org.qztc.service.DingDangService"%>
<%@page import="org.qztc.service.impl.DingDangServiceImpl"%>
<%@page import="java.util.UUID"%>
<%
	request.setCharacterEncoding("UTF-8");
	String c_id=request.getParameter("c_id");
	String uname=request.getParameter("uname");
	String c_date=request.getParameter("c_date");	
	String c_qd=request.getParameter("c_qd");
	String c_zd=request.getParameter("c_zd");
	CarService cs=new CarServiceImpl();
	Car car=cs.get(c_id);
	int i=Integer.parseInt(car.getC_number());
	i=i-1;
	String s= String.valueOf(i);
	String id=c_id;
	String number=s;
	cs.update(number,id);
	DingDangService dds=new DingDangServiceImpl();
	Dingdang dd = new Dingdang();
	String o_id=UUID.randomUUID().toString();
	String o_time=cs.get(c_id).getC_time();
	String o_date=cs.get(c_id).getC_date();
	String o_ks=cs.get(c_id).getC_ks();
	String o_money=cs.get(c_id).getC_money();
	dd.setO_date(o_date);
	dd.setO_ddsj("");
	dd.setO_id(o_id);
	dd.setO_ks(o_ks);
	dd.setO_money(o_money);
	dd.setO_number("1");
	dd.setO_qd(c_qd);
	dd.setO_time(o_time);
	dd.setO_zd(c_zd);
	dd.setO_name(uname);
	dds.add(dd);
%>