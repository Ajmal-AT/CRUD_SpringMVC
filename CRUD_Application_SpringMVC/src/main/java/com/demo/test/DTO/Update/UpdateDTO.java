package com.demo.test.DTO.Update;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class UpdateDTO implements Serializable{
	private int sid;
	private String  sname;
	private String  semail;
	private String saddress;
	private String scourse;
	private String splace;
	private int sage;
	private int spass;
	public UpdateDTO() {
		System.out.println(this.getClass().getSimpleName()+" created");
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSemail() {
		return semail;
	}
	public void setSemail(String semail) {
		this.semail = semail;
	}
	public String getSaddress() {
		return saddress;
	}
	public void setSaddress(String saddress) {
		this.saddress = saddress;
	}
	public String getScourse() {
		return scourse;
	}
	public void setScourse(String scourse) {
		this.scourse = scourse;
	}
	public String getSplace() {
		return splace;
	}
	public void setSplace(String splace) {
		this.splace = splace;
	}
	public int getSage() {
		return sage;
	}
	public void setSage(int sage) {
		this.sage = sage;
	}
	public int getSpass() {
		return spass;
	}
	public void setSpass(int spass) {
		this.spass = spass;
	}
	@Override
	public String toString() {
		return "UpdateDTO [sid=" + sid + ", sname=" + sname + ", semail=" + semail + ", saddress=" + saddress
				+ ", scourse=" + scourse + ", splace=" + splace + ", sage=" + sage + ", spass=" + spass + "]";
	}
}
