package com.nngame.user;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nngame.action.Action;
import com.nngame.action.ActionForward;
import com.nngame.user.dao.UserDAO;
import com.nngame.user.dao.UserDTO;

public class UserJoinAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		UserDAO udao = new UserDAO();
		UserDTO user = new UserDTO();
		ActionForward forward = new ActionForward();
		
		//시퀀스, #{userid}, #{userpw}, #{usernickname}, #{userphone}, #{userbirth}, SYSDATE 
		user.setUser_email(request.getParameter("userid"));
		user.setUser_pwd(request.getParameter("userpw"));
		user.setUser_nickname(request.getParameter("usernickname"));
		user.setUser_phone(request.getParameter("userphone"));
		user.setUser_birth(request.getParameter("userbirth"));
		
		if(udao.join(user)) {		// 회원가입 성공
			forward.setRedirect(true);
			forward.setPath(request.getContextPath()+ "login/login.jsp");
		} else {					// 회원가입 실패
			forward.setRedirect(true);
			forward.setPath(request.getContextPath() + "index.jsp");
		}
		
		return forward;
	}
}
