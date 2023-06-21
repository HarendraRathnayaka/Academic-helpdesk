package com.helpdesk;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/que")
public class questServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String uniquecode = request.getParameter("ucode");
		String useremail = request.getParameter("email");
		
		List<quest> questdetails = questDBUtil.validate(uniquecode, useremail);
		request.setAttribute("questdetails", questdetails);
		
		RequestDispatcher dis = request.getRequestDispatcher("displayquestion.jsp");
		dis.forward(request, response);
	}


}
