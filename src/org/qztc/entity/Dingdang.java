package org.qztc.entity;
public class Dingdang {
	private String o_id;
	private String o_ddsj;
	private String o_name;
	private String o_qd;
	private String o_zd;
	private String o_ks;
	private String o_time;
	private String o_number;
	private String o_money;
	private String o_date;
	public Dingdang() {
		// TODO Auto-generated constructor stub
	}
	public Dingdang(String o_id, String o_ddsj, String o_name, String o_qd,
			String o_zd, String o_ks, String o_time, String o_number,
			String o_money, String o_date) {
		super();
		this.o_id = o_id;
		this.o_ddsj = o_ddsj;
		this.o_name = o_name;
		this.o_qd = o_qd;
		this.o_zd = o_zd;
		this.o_ks = o_ks;
		this.o_time = o_time;
		this.o_number = o_number;
		this.o_money = o_money;
		this.o_date = o_date;
	}
	public String getO_id() {
		return o_id;
	}
	public void setO_id(String o_id) {
		this.o_id = o_id;
	}
	public String getO_ddsj() {
		return o_ddsj;
	}
	public void setO_ddsj(String o_ddsj) {
		this.o_ddsj = o_ddsj;
	}
	public String getO_name() {
		return o_name;
	}
	public void setO_name(String o_name) {
		this.o_name = o_name;
	}
	public String getO_qd() {
		return o_qd;
	}
	public void setO_qd(String o_qd) {
		this.o_qd = o_qd;
	}
	public String getO_zd() {
		return o_zd;
	}
	public void setO_zd(String o_zd) {
		this.o_zd = o_zd;
	}
	public String getO_ks() {
		return o_ks;
	}
	public void setO_ks(String o_ks) {
		this.o_ks = o_ks;
	}
	public String getO_time() {
		return o_time;
	}
	public void setO_time(String o_time) {
		this.o_time = o_time;
	}
	public String getO_number() {
		return o_number;
	}
	public void setO_number(String o_number) {
		this.o_number = o_number;
	}
	public String getO_money() {
		return o_money;
	}
	public void setO_money(String o_money) {
		this.o_money = o_money;
	}
	public String getO_date() {
		return o_date;
	}
	public void setO_date(String o_date) {
		this.o_date = o_date;
	}
	@Override
	public String toString() {
		return "Dingdang [o_id=" + o_id + ", o_ddsj=" + o_ddsj + ", o_name="
				+ o_name + ", o_qd=" + o_qd + ", o_zd=" + o_zd + ", o_ks="
				+ o_ks + ", o_time=" + o_time + ", o_number=" + o_number
				+ ", o_money=" + o_money + ", o_date=" + o_date + "]";
	}
	
	
}
