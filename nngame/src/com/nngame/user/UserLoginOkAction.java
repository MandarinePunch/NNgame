package com.nngame.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nngame.action.Action;
import com.nngame.action.ActionForward;
import com.nngame.user.dao.UserDAO;

public class UserLoginOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		UserDAO udao = new UserDAO();
		
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		
		if(udao.login(userid,userpw)) {		// 로그인 성공
			System.out.println("로그인 성공");
			forward.setPath("/index.jsp");
		} else {							// 로그인 실패
			System.out.println("로그인 실패");
			forward.setPath("/login/login.jsp?flag=false");
		}
		
		forward.setRedirect(false);
		
		return forward;
	}
}
