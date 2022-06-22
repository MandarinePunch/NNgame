package com.nngame.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nngame.action.Action;
import com.nngame.action.ActionForward;
import com.nngame.user.dao.UserDAO;

public class UserPwFindAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		UserDAO udao = new UserDAO();

		String user_email = request.getParameter("user_email");
		String findout = udao.findpw(user_email);
		
		if(findout != null) {
			System.out.println(findout);
		} else { 
			System.out.println("아이디가 없습니다.");
		}
		
		forward.setPath("/login/findpw.jsp");
		forward.setRedirect(false);
		return forward;
	}
}