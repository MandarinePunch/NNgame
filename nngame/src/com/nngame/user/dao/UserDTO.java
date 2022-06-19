package com.nngame.user.dao;

public class UserDTO {
	//시퀀스, #{userid}, #{userpw}, #{usernickname}, #{userphone}, #{userjoindate}, SYSDATE 
	private int usernum;
	private String userid;
	private String userpw;
	private String usernickname;
	private String userphone;
	private String userbirth;
	private String userjoindate;
	
	public int getUsernum() {
		return usernum;
	}
	public void setUsernum(int usernum) {
		this.usernum = usernum;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUsernickname() {
		return usernickname;
	}
	public void setUsernickname(String usernickname) {
		this.usernickname = usernickname;
	}
	public String getUserphone() {
		return userphone;
	}
	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}
	public String getUserbirth() {
		return userbirth;
	}
	public void setUserbirth(String userbirth) {
		this.userbirth = userbirth;
	}
	public String getUserjoindate() {
		return userjoindate;
	}
	public void setUserjoindate(String userjoindate) {
		this.userjoindate = userjoindate;
	}
}
