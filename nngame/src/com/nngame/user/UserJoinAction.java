package com.nngame.user;

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
		user.setUserid(request.getParameter("userid"));
		user.setUserpw(request.getParameter("userpw"));
		user.setUsernickname(request.getParameter("usernickname"));
		user.setUserphone(request.getParameter("userphone"));
		user.setUserbirth(request.getParameter("userbirth"));
		
		
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
