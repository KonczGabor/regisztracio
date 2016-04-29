package com.regisztracio.controllers;

import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.regisztracio.models.BelfoldiTermeszetesSzemely;
import com.regisztracio.service.TermeszetesService;

/**
 * Servlet implementation class BTSZList
 */
@WebServlet("/BTSZList")
public class BTSZList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	@EJB
	TermeszetesService termeszetesService;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BTSZList() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {	
		
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/BTSZList.jsp");

		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
