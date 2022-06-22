package com.nngame.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nngame.action.Action;
import com.nngame.action.ActionForward;
import com.nngame.user.dao.UserDAO;
import com.nngame.user.dao.UserDTO;

public class UserExitAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		UserDAO udao = new UserDAO();
		ActionForward forward = new ActionForward();
		
		String user_email = request.getParameter("user_email");
		String user_pwd = request.getParameter("user_pwd");
		
		if(udao.login(user_email,user_pwd)) {		// 로그인 성공하면 회원삭제 실행
			System.out.println("패스워드 일치, 회원탈퇴 시작");
			udao.userExit(user_email);
			
			request.getSession().invalidate();	// 세션 날리기
			forward.setRedirect(true);
			forward.setPath("/");
		} else {							// 로그인 실패하면 얼럿창 띄우고 다시 mypage
			System.out.println("패스워드 불일치");
			forward.setRedirect(true);
			forward.setPath("/myPage.jsp");
		}
		
		return forward;
	}
}