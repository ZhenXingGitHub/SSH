package com.resume.model;

public class Admin {

	private int a_id;
	private String a_username;//用户名
	private String a_password;
	private String a_proview;
	private String a_tel;
	private String a_email;
	private String a_name;//真实姓名
	private String a_url;
	public int getA_id() {
		return a_id;
	}
	public void setA_id(int a_id) {
		this.a_id = a_id;
	}
	public String getA_username() {
		return a_username;
	}
	public void setA_username(String a_username) {
		this.a_username = a_username;
	}
	public String getA_password() {
		return a_password;
	}
	public void setA_password(String a_password) {
		this.a_password = a_password;
	}
	public String getA_proview() {
		return a_proview;
	}
	public void setA_proview(String a_proview) {
		this.a_proview = a_proview;
	}
	public String getA_tel() {
		return a_tel;
	}
	public void setA_tel(String a_tel) {
		this.a_tel = a_tel;
	}
	public String getA_email() {
		return a_email;
	}
	public void setA_email(String a_email) {
		this.a_email = a_email;
	}
	public String getA_name() {
		return a_name;
	}
	public void setA_name(String a_name) {
		this.a_name = a_name;
	}
	public String getA_url() {
		return a_url;
	}
	public void setA_url(String a_url) {
		this.a_url = a_url;
	}
	@Override
	public String toString() {
		return "Admin [a_id=" + a_id + ", a_username=" + a_username + ", a_password=" + a_password + ", a_proview="
				+ a_proview + ", a_tel=" + a_tel + ", a_email=" + a_email + ", a_name=" + a_name + ", a_url=" + a_url
				+ "]";
	}
	
	
	
	
}
