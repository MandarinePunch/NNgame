package com.nngame.user.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.nngame.mybatis.SqlMapConfig;


public class UserDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public UserDAO() {
		sqlsession = factory.openSession(true);
	}
	
	public boolean join(UserDTO user) {
		boolean result = false;
		
		if(sqlsession.insert("Users.join", user) != 0) {
			result = true;
		}
		
		return result;
	}

	public boolean login(String user_email, String user_pwd) {
		boolean result = false;
		
		HashMap<String, String> datas = new HashMap<>();
		
		datas.put("user_email", user_email);
		datas.put("user_pwd", user_pwd);
		
		if((Integer)sqlsession.selectOne("Users.login", datas) == 1) {
			result = true;
		}
		
		return result;
	}
	
	public UserDTO getUserData(String user_email) {
		UserDTO userdata = sqlsession.selectOne("Users.getUserDTO", user_email);
		return userdata;
	}

	public String findpw(String user_email) {
		String result = "";
		
		result = sqlsession.selectOne("Users.findpw",user_email);
		
		return result;
	}

	public void userExit(String user_email) {
		sqlsession.delete("Users.deleteUser", user_email);
		System.out.println("회원 탈퇴 성공");
	}
}