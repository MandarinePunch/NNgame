package com.nngame.gamedetail;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nngame.action.Action;
import com.nngame.action.ActionForward;
import com.nngame.gamedetail.dao.GameDetailDAO;
import com.nngame.gamedetail.dao.GameDetailDTO;
import com.nngame.review.dto.ReviewDTO;

public class GameDetailShowAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		
		int gameNum = Integer.parseInt(request.getParameter("game_num"));
		
		GameDetailDAO gddao = new GameDetailDAO();
		
		// 게임 상세 및 리뷰 출력
		GameDetailDTO gddto = gddao.getGameDetail(gameNum);
		List<ReviewDTO> list = gddao.getReviewList(gameNum);
		
		// 존재하는 게임인지 여부
		if(gddto != null) {			
			request.setAttribute("gameDetail", gddto);
			request.setAttribute("reviewList", list);
			
			forward.setPath("/gamedetail.jsp");
			forward.setRedirect(false);
		}
		
		return forward;
	}
	
}
