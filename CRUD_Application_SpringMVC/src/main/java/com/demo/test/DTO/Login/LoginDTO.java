package com.demo.test.DTO.Login;

import java.io.Serializable;

import javax.persistence.Entity;

@Entity
public class LoginDTO implements Serializable{
	private String semail;
	private int spass;
	
	public LoginDTO() {
		System.out.println(this.getClass().getSimpleName()+" created");
	}
	
	public String getSemail() {
		return semail;
	}
	public void setSemail(String semail) {
		this.semail = semail;
	}
	public int getSpass() {
		return spass;
	}
	public void setSpass(int spass) {
		this.spass = spass;
	}

	@Override
	public String toString() {
		return "LoginDTO [semail=" + semail + ", spass=" + spass + "]";
	}
	
}
