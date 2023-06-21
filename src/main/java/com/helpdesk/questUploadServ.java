package com.helpdesk;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/uplo")
public class questUploadServ extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ucode = request.getParameter("ucode");
		String email = request.getParameter("email");
		String Description = request.getParameter("description");
		String Question = request.getParameter("question");
		
		Boolean isDone;
		
		isDone = questDBUtil.uploadquestion(ucode, email, Description, Question);
		
		if(isDone == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
			
		} else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
				
		}
		
	}

}
