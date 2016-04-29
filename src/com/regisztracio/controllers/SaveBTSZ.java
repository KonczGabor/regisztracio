package com.regisztracio.controllers;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.regisztracio.models.Allampolgarsag;
import com.regisztracio.models.BelfoldiTermeszetesSzemely;
import com.regisztracio.models.EsedekessegFizMod;
import com.regisztracio.models.Orszag;
import com.regisztracio.models.SzamlaKivGyakorisag;
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		String elotag = request.getParameter("elotagId");
		String vezetekNev = request.getParameter("vezetekNevId");
		String keresztNev = request.getParameter("keresztNevId");
		String masodikUtonev = request.getParameter("masodikUtonevId");
		String szuletesiNev = request.getParameter("szuletesiNevId");

		String orszagok = request.getParameter("orszagokId");
		Integer iranyitoszam = Integer.parseInt(request.getParameter("iranyitoszamId"));
		String helyseg = request.getParameter("helysegId");
		String utcaHazszam = request.getParameter("utcaHazszamId");

		String lvlOrszagok = request.getParameter("lvlOrszagokId");
		String tmpLvlIranyitoszam = request.getParameter("lvlIranyitoszamId");
		int lvlIranyitoszam = 0;
		try {
			lvlIranyitoszam = Integer.parseInt(tmpLvlIranyitoszam);
		} catch (NumberFormatException ex) {
			lvlIranyitoszam = 0;
		}
		String lvlHelyseg = request.getParameter("lvlHelysegId");
		String lvlUtcaHazszam = request.getParameter("lvlUtcaHazszamId");

		String allampolgarsagok = request.getParameter("allampolgarsagokId");
		Integer adoazonositoJel = Integer.parseInt(request.getParameter("adoazonositoJelId"));
		String szigSz = request.getParameter("szigSzId");
		String szigKiHatNeve = request.getParameter("szigKiHatNeveId");
		String szigKiHatSzekhelye = request.getParameter("szigKiHatSzekhelyeId");
		String lakcimKSzama = request.getParameter("lakcimKSzamaId");

		String szuletesiIdo_raw = request.getParameter("szuletesiIdoId");
		String[] szuletesiIdoArr = szuletesiIdo_raw.split("\\/");
		Calendar cal = Calendar.getInstance();
		cal.clear(Calendar.HOUR_OF_DAY); // set to 01:00:00 -Unnecessary but
											// representative
		cal.clear(Calendar.AM_PM);
		cal.clear(Calendar.MINUTE);
		cal.clear(Calendar.SECOND);
		cal.clear(Calendar.MILLISECOND);
		cal.set(Calendar.HOUR_OF_DAY, 0); // set to 00:00:00
		cal.set(Calendar.YEAR, Integer.parseInt(szuletesiIdoArr[0]));
		cal.set(Calendar.MONTH, Integer.parseInt(szuletesiIdoArr[1]) - 1); // tomb
		cal.set(Calendar.DAY_OF_MONTH, Integer.parseInt(szuletesiIdoArr[2]));
		Date szuletesiIdo = cal.getTime();

		String szuletesiHely = request.getParameter("szuletesiHelyId");
		String anyjaNeve = request.getParameter("anyjaNeveId");
		String utlevelSzama = request.getParameter("utlevelSzamaId");
		String jogositvanySzama = request.getParameter("jogositvanySzamaId");

		String webSzolgaltatas = request.getParameter("webSzolgaltatasId");
		String mobilSzolgaltatas = request.getParameter("mobilSzolgaltatasId");
		String teleSzolgaltatas = request.getParameter("teleSzolgaltatasId");

		String szlaGyakorisag = request.getParameter("szlaGyakorisagId");
		String esedekesseg = request.getParameter("esedekessegId");
		String giroSzamla = request.getParameter("giroSzamlaId");

		BelfoldiTermeszetesSzemely btsz = new BelfoldiTermeszetesSzemely();

		btsz.setNevElotag(elotag);
		btsz.setNevKereszt(keresztNev);
		btsz.setNevVezetek(vezetekNev);
		btsz.setNevUto(masodikUtonev);
		btsz.setNevSzuletesi(szuletesiNev);

		btsz.setOrszag(Orszag.valueOf(orszagok));
		btsz.setIranyitoszam(iranyitoszam);
		btsz.setHelyseg(helyseg);
		btsz.setUtcaHazszam(utcaHazszam);

		btsz.setLvlOrszag(Orszag.valueOf(lvlOrszagok));
		btsz.setLvlIranyitoszam(lvlIranyitoszam);
		btsz.setLvlHelyseg(lvlHelyseg);
		btsz.setLvlUtcaHazszam(lvlUtcaHazszam);

		btsz.setAllampolgarsag(Allampolgarsag.valueOf(allampolgarsagok));
		btsz.setAdoazonositoJel(adoazonositoJel);
		btsz.setSzigSzam(szigSz);
		btsz.setSzigKHNeve(szigKiHatNeve);
		btsz.setSzigKHSzekhelye(szigKiHatSzekhelye);
		btsz.setLakcimkartya(lakcimKSzama);
		btsz.setSzulIdo(szuletesiIdo);
		btsz.setSzulHely(szuletesiHely);
		btsz.setAnyjaNeve(anyjaNeve);
		btsz.setUtlevelSzama(utlevelSzama);
		btsz.setJogositvanySzama(jogositvanySzama);
		btsz.setWebSzolgaltatas(webSzolgaltatas);
		btsz.setMobilSzolgaltatas(mobilSzolgaltatas);
		btsz.setTelSzolgaltatas(teleSzolgaltatas);
		btsz.setSzamlaKivGyakorisag(SzamlaKivGyakorisag.valueOf(szlaGyakorisag));
		btsz.setEsedekessegFizMod(EsedekessegFizMod.valueOf(esedekesseg));
		btsz.setGiroSzamla(giroSzamla);

	 

		btsz.setUserID(termeszetesService.egyediUserIDkeszites());
		
		btsz.setUserCode(termeszetesService.generateUserCode());

		termeszetesService.addNewBTSZ(btsz);
		
		request.setAttribute("elkeszult_btsz", btsz);
		
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/SikeresBTSZRegisztracio.jsp");

		view.forward(request, response);
		

	}

}
