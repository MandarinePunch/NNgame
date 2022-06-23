package com.nngame.store;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nngame.action.Action;
import com.nngame.action.ActionForward;
import com.nngame.store.dao.StoreDAO;

public class StoreGameListAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		StoreDAO sdao = new StoreDAO();
		System.out.println("액션도착");
		// 전체 게임수 
		int totalCnt = sdao.getStoreGameCnt();
		System.out.println("토탈" + totalCnt);
		request.setAttribute("totalCnt", totalCnt);
		request.setAttribute("storegamelist", sdao.getStoreGameList());
		
		forward.setRedirect(false);
		forward.setPath( request.getContextPath() + "/store.jsp" );
		
		return forward;
	}

}
