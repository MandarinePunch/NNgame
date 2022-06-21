package com.nngame.support;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nngame.action.Action;
import com.nngame.action.ActionForward;
import com.nngame.support.dao.SupportDAO;
import com.nngame.support.dao.SupportDTO;

public class SupportUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		
		// if(usernum == sdto.usernum){
		//	정상실행
		// } else{
		//	warning 페이지 하나 만들자(잘못된 접근이에요)
		// }
		
		String support_num = request.getParameter("support_num");

		// support_num과 같은 글 하나를 가져옴
		SupportDAO sdao = new SupportDAO();
		SupportDTO sdto = sdao.getOneWriting(support_num);
		
		// 글 내용들을 업데이트 해주기위해 dto로 넘긴다.
		request.setAttribute("supportDTO", sdto);
		
		// 내용이 넘겨져야 하므로 forward 방식으로 넘겨준다.
		forward.setRedirect(false);
		forward.setPath("/support_jsp/qna_modify.jsp");
		
		return forward;
	}
}
