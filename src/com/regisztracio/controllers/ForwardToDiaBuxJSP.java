package com.regisztracio.controllers;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.regisztracio.service.DiagramService;

/**
 * Servlet implementation class ForwardToDiaBux
 */
@WebServlet("/ForwardToDiaBuxJSP")
public class ForwardToDiaBuxJSP extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@EJB
	DiagramService ds;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForwardToDiaBuxJSP() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/DiaBux.jsp");

		
		
		ds.createAllDiagrams();
		
		String diaBuxDataResult;
		
		diaBuxDataResult = ds.getDiagramBuxData();
		
		request.setAttribute("diaBuxDataResult", diaBuxDataResult);
		
		ds.deleteDiagramBux();
		
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
