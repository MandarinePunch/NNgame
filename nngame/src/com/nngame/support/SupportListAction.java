package com.nngame.support;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nngame.action.Action;
import com.nngame.action.ActionForward;
import com.nngame.support.dao.SupportDAO;
import com.nngame.support.dao.SupportDTO;


public class SupportListAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		
		SupportDAO sdao = new SupportDAO();
		
		// board의 모든 리스트 및 개수를 받아옴
		List<SupportDTO> list = sdao.getSupportList();
		int count = sdao.getSupportCount();
		
		// request에 모든 board 리스트와 글의 개수를 넣음
		request.setAttribute("supportList", list);
		request.setAttribute("supportCount", count);
		
		// 경로 세팅
		forward.setRedirect(false);
		forward.setPath("/support_jsp/qna.jsp");
		
		return forward;
	}
}
