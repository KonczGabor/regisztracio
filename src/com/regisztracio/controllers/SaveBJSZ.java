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

import com.regisztracio.models.BelfoldiJogiSzemely;
import com.regisztracio.models.EsedekessegFizMod;
import com.regisztracio.models.Orszag;
import com.regisztracio.models.SzamlaKivGyakorisag;
import com.regisztracio.service.JogiService;

/**
 * Servlet implementation class SaveBJSZ
 */
@WebServlet("/SaveBJSZ")
public class SaveBJSZ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	JogiService jogiService;

	public SaveBJSZ() {
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

		BelfoldiJogiSzemely belfoldiJogiSzemely = new BelfoldiJogiSzemely();

		String belfJogiSzNeve = request.getParameter("jogiSzemelyNeveId");

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

		String adoszam = request.getParameter("adoszId");
		String telephely = request.getParameter("telephelyId");
		String alapitoOkiratSzama = request.getParameter("alapOkSzId");

		String strTempTarsSzerzKelteDate = request.getParameter("tarsSzerzKelteId");
		DateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date date = format1.parse(strTempTarsSzerzKelteDate);
			belfoldiJogiSzemely.settSzKelte(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		String cegBejSzama = request.getParameter("cegBejSzId");

		String strTempCegBejKelteDate = request.getParameter("cegBirBejKelteId");
		DateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date date = format2.parse(strTempCegBejKelteDate);
			belfoldiJogiSzemely.setCegBejKelte(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		String egyStatSzam = request.getParameter("egysegesStatId");

		String webSzolgaltatas = request.getParameter("webSzolgaltatasId");
		String mobilSzolgaltatas = request.getParameter("mobilSzolgaltatasId");
		String teleSzolgaltatas = request.getParameter("teleSzolgaltatasId");

		String szlaGyakorisag = request.getParameter("szlaGyakorisagId");
		String esedekesseg = request.getParameter("esedekessegId");
		String giroSzamla = request.getParameter("giroSzamlaId");

		belfoldiJogiSzemely.setJogiSzemelyNeve(belfJogiSzNeve);

		belfoldiJogiSzemely.setOrszag(Orszag.valueOf(orszagok));
		belfoldiJogiSzemely.setIranyitoszam(iranyitoszam);
		belfoldiJogiSzemely.setHelyseg(helyseg);
		belfoldiJogiSzemely.setUtcaHazszam(utcaHazszam);

		belfoldiJogiSzemely.setLvlOrszag(Orszag.valueOf(lvlOrszagok));
		belfoldiJogiSzemely.setLvlIranyitoszam(lvlIranyitoszam);
		belfoldiJogiSzemely.setLvlHelyseg(lvlHelyseg);
		belfoldiJogiSzemely.setLvlUtcaHazszam(lvlUtcaHazszam);

		belfoldiJogiSzemely.setAdoszam(adoszam);
		belfoldiJogiSzemely.setTelephely(telephely);
		belfoldiJogiSzemely.setAlapitoOkiratSzama(alapitoOkiratSzama);
		belfoldiJogiSzemely.setCegBejSzama(cegBejSzama);
		belfoldiJogiSzemely.setEgyStatSzam(egyStatSzam);

		belfoldiJogiSzemely.setWebSzolgaltatas(webSzolgaltatas);
		belfoldiJogiSzemely.setMobilSzolgaltatas(mobilSzolgaltatas);
		belfoldiJogiSzemely.setTelSzolgaltatas(teleSzolgaltatas);
		belfoldiJogiSzemely.setSzamlaKivGyakorisag(SzamlaKivGyakorisag.valueOf(szlaGyakorisag));
		belfoldiJogiSzemely.setEsedekessegFizMod(EsedekessegFizMod.valueOf(esedekesseg));
		belfoldiJogiSzemely.setGiroSzamla(giroSzamla);

		jogiService.addNewBJSZ(belfoldiJogiSzemely);

		response.sendRedirect("ForwardToSikRegJSP");
	}

}
