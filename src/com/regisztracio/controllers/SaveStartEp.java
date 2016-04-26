package com.regisztracio.controllers;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.regisztracio.models.StartEpSzamla;
import com.regisztracio.service.StartEpService;

/**
 * Servlet implementation class SaveStartEp
 */
@WebServlet("/SaveStartEp")
public class SaveStartEp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	StartEpService startEpService;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SaveStartEp() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
		String tmpElotag = request.getParameter("elotagId");
		int elotag = 0;
		
		String stringDate = request.getParameter("date");
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		
		
		
	
		
		try{ elotag = Integer.parseInt(tmpElotag);}
		catch (NumberFormatException ex){
			elotag = 7;
		}
		
		StartEpSzamla startEpSzamla = new StartEpSzamla();
		
		
		
		
		
		startEpService.addNewStartEp(startEpSzamla);
		
		response.sendRedirect("ForwardToSikRegJSP");
		
	}

}
