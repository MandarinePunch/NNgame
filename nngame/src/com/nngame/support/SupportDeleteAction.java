package com.nngame.support;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nngame.action.Action;
import com.nngame.action.ActionForward;
import com.nngame.support.dao.SupportDAO;

// 글 삭제 컨트롤러
public class SupportDeleteAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		
		SupportDAO sdao = new SupportDAO();
		
		String support_num = request.getParameter("support_num");
		
		// 글 삭제
		// 세션에 있는 유저 넘버 가져와서 비교후 현재 usernum가 랑 다르면 함수 실행 안되게 하기(url접근 방지)
		sdao.deleteBoard(support_num);
		
		// 삭제하면 정보를 줄 필요가 없으므로 redirect로 넘겨줌
		forward.setRedirect(true);
		forward.setPath("/support/List");
		
		return forward;
	}
}
