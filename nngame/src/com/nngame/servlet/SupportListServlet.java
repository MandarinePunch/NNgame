package com.nngame.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nngame.bean.SupportBean;
import com.nngame.dao.SupportDAO;

@WebServlet("/support/List")
public class SupportListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAct(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAct(request, response);
	}
	
	protected void doAct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SupportDAO sdao = new SupportDAO();
		
		List<SupportBean> list = sdao.getAllList();
		
		request.setAttribute("support_list", list);
		
		RequestDispatcher dis = request.getRequestDispatcher("/support/qna.jsp");
		dis.forward(request, response);
	}
}
