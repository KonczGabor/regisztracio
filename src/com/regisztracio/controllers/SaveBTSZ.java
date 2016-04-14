package com.regisztracio.controllers;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.regisztracio.models.BelfoldiTermeszetesSzemely;
import com.regisztracio.service.TermeszetesService;

/**
 * Servlet implementation class SaveBTSZ
 */
@WebServlet("/SaveBTSZ")
public class SaveBTSZ extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@EJB
	TermeszetesService termeszetesService;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveBTSZ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String keresztNev = request.getParameter("keresztNev");
		String vezetekNev = request.getParameter("vezetekNev");
		
		BelfoldiTermeszetesSzemely btsz = new BelfoldiTermeszetesSzemely();
		
		btsz.setKeresztnev(keresztNev);
		btsz.setVezeteknev(vezetekNev);
		
		termeszetesService.addNewBTSZ(btsz);
		
	}

}
