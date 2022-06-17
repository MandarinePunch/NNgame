package com.nngame.support;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nngame.action.ActionForward;

@WebServlet(name = "SupportFrontController", urlPatterns = "/support/*")
public class SupportFrontController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		ActionForward forward = null;
		
		if(requestURI.equals("/support/List")) {
			forward = new SupportListAction().execute(request, response);
		} else if(requestURI.equals("/support/detail")) {
			forward = new SupportDetailAction().execute(request, response);
		} else if(requestURI.equals("/support/delete")) {
			forward = new SupportDeleteAction().execute(request, response);
		} else if(requestURI.equals("/support/update")) {
			forward = new SupportUpdateAction().execute(request, response);
		} else if(requestURI.equals("/support/updateSuccess")){
			forward = new SupportUpdateSuccessAction().execute(request, response);
		}
		
		if(forward != null) {			
			if(forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dis = request.getRequestDispatcher(forward.getPath());
				dis.forward(request, response);
			}
		}
	}
}








