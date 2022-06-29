package com.nngame.payment;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nngame.action.ActionForward;

@WebServlet(name = "PaymentFrontController", urlPatterns = "/payment/*")
public class PaymentFrontController extends HttpServlet{
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
		
		if(requestURI.equals("/payment/pay")) {				// 결제 정보 입력 페이지
			forward = new PaymentShowAction().execute(request, response);
			
		} else if(requestURI.equals("/payment/payOk.io")) {	// 결제 완료 후 insert
			forward = new PaymentAction().execute(request, response);
			
		} else if(requestURI.equals("/payment/payOk")) {
			forward = new ActionForward(false, "/payment_jsp/paycomplete.jsp");
			
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
