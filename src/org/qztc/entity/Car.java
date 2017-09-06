package org.qztc.entity;
public class Car {
	private String c_id;
	private String c_ks;
	private String c_time;
	private String c_number;
	private String c_qd;
	private String c_zd;
	private String c_money;
	private String c_date;
	public Car() {
		// TODO Auto-generated constructor stub
	}
	public Car(String c_id, String c_ks, String c_time, String c_number,
			String c_qd, String c_zd, String c_money, String c_date) {
		super();
		this.c_id = c_id;
		this.c_ks = c_ks;
		this.c_time = c_time;
		this.c_number = c_number;
		this.c_qd = c_qd;
		this.c_zd = c_zd;
		this.c_money = c_money;
		this.c_date = c_date;
	}
	public String getC_id() {
		return c_id;
	}
	public void setC_id(String c_id) {
		this.c_id = c_id;
	}
	public String getC_ks() {
		return c_ks;
	}
	public void setC_ks(String c_ks) {
		this.c_ks = c_ks;
	}
	public String getC_time() {
		return c_time;
	}
	public void setC_time(String c_time) {
		this.c_time = c_time;
	}
	public String getC_number() {
		return c_number;
	}
	public void setC_number(String c_number) {
		this.c_number = c_number;
	}
	public String getC_qd() {
		return c_qd;
	}
	public void setC_qd(String c_qd) {
		this.c_qd = c_qd;
	}
	public String getC_zd() {
		return c_zd;
	}
	public void setC_zd(String c_zd) {
		this.c_zd = c_zd;
	}
	public String getC_money() {
		return c_money;
	}
	public void setC_money(String c_money) {
		this.c_money = c_money;
	}
	public String getC_date() {
		return c_date;
	}
	public void setC_date(String c_date) {
		this.c_date = c_date;
	}
	@Override
	public String toString() {
		return "Car [c_id=" + c_id + ", c_ks=" + c_ks + ", c_time=" + c_time
				+ ", c_number=" + c_number + ", c_qd=" + c_qd + ", c_zd="
				+ c_zd + ", c_money=" + c_money + ", c_date=" + c_date + "]";
	}
	
	
}
