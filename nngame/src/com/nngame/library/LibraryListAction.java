package com.nngame.library;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nngame.action.Action;
import com.nngame.action.ActionForward;
import com.nngame.library.dao.LibraryDAO;
import com.nngame.user.dao.UserDTO;

public class LibraryListAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("ActionForward 도착");		// 에러 추적 과정
		ActionForward forward = new ActionForward();
		LibraryDAO ldao = new LibraryDAO();
		
		// 로그인한 유저 세션 가져오기
		HttpSession session = request.getSession();
		UserDTO udto = (UserDTO) session.getAttribute("udto");
		
		// 유저정보를 담아올 변수
		int user_num = 0;
		
		// 라이브러리 리스트 가져오기
		if(udto != null) {	// 유저정보 있음
			user_num = udto.getUser_num();
			System.out.println("user_num :"+user_num); // 에러 추적 과정
			
			int count = ldao.getTotalCnt(user_num);
			System.out.println("count : " + count);
			
			request.setAttribute("libraryList", ldao.getLibraryList(user_num));
			request.setAttribute("totalCnt", count);
			
			forward.setRedirect(false);
			forward.setPath("/library.jsp");
		}else {				// 유저정보 없음
			forward.setRedirect(true);
			forward.setPath("/");
		}
		
		return forward;
	}

}
