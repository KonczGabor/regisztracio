package com.regisztracio.controllers;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.regisztracio.models.Allampolgarsag;
import com.regisztracio.models.GyermekJogosultsaga;
import com.regisztracio.models.NevelesJellege;
import com.regisztracio.models.Orszag;
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
		
		StartEpSzamla startEpSzamla = new StartEpSzamla();
		
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
		try{ lvlIranyitoszam = Integer.parseInt(tmpLvlIranyitoszam);}
		catch (NumberFormatException ex){
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
		cal.clear(Calendar.HOUR_OF_DAY); //set to 01:00:00 -Unnecessary but representative
		cal.clear(Calendar.AM_PM);
		cal.clear(Calendar.MINUTE);
		cal.clear(Calendar.SECOND);
		cal.clear(Calendar.MILLISECOND);
		cal.set(Calendar.HOUR_OF_DAY, 0); //set to 00:00:00
		cal.set(Calendar.YEAR, Integer.parseInt(szuletesiIdoArr[0]));
		cal.set(Calendar.MONTH, Integer.parseInt(szuletesiIdoArr[1])-1);  //tomb
		cal.set(Calendar.DAY_OF_MONTH, Integer.parseInt(szuletesiIdoArr[2]));
		Date szuletesiIdo = cal.getTime();		
		
		String szuletesiHely = request.getParameter("szuletesiHelyId");
		String anyjaNeve = request.getParameter("anyjaNeveId");
		String utlevelSzama = request.getParameter("utlevelSzamaId");
		String jogositvanySzama = request.getParameter("jogositvanySzamaId");
		
		String webSzolgaltatas = request.getParameter("webSzolgaltatasId");
		String mobilSzolgaltatas = request.getParameter("mobilSzolgaltatasId");
		String teleSzolgaltatas = request.getParameter("teleSzolgaltatasId");
		
		String gyermekJogosultsaga = request.getParameter("gyermekJogosultsagaId");
		String nevelesJellege = request.getParameter("nevelesJellegeId");

		
		startEpSzamla.setNevElotag(elotag);
		startEpSzamla.setNevKeresztv(vezetekNev);
		startEpSzamla.setNevVezetek(keresztNev);
		startEpSzamla.setNevUto(masodikUtonev);
		startEpSzamla.setNevSzuletesi(szuletesiNev);
		
		startEpSzamla.setOrszag(Orszag.valueOf(orszagok));
		startEpSzamla.setIranyitoszam(iranyitoszam);
		startEpSzamla.setHelyseg(helyseg);
		startEpSzamla.setUtcaHazszam(utcaHazszam);
				
		startEpSzamla.setLvlOrszag(Orszag.valueOf(lvlOrszagok));
		startEpSzamla.setLvlIranyitoszam(lvlIranyitoszam);
		startEpSzamla.setLvlHelyseg(lvlHelyseg);
		startEpSzamla.setLvlUtcaHazszam(lvlUtcaHazszam);
		
		startEpSzamla.setAllampolgarsag(Allampolgarsag.valueOf(allampolgarsagok));
		startEpSzamla.setAdoazonositoJel(adoazonositoJel);
		startEpSzamla.setSzigSzam(szigSz);
		startEpSzamla.setSzigKHNeve(szigKiHatNeve);
		startEpSzamla.setSzigKHSzekhelye(szigKiHatSzekhelye);
		startEpSzamla.setLakcimkartya(lakcimKSzama);
		startEpSzamla.setSzulIdo(szuletesiIdo);
		startEpSzamla.setSzulHely(szuletesiHely);
		startEpSzamla.setAnyjaNeve(anyjaNeve);
		startEpSzamla.setUtlevelSzama(utlevelSzama);
		startEpSzamla.setJogositvanySzama(jogositvanySzama);
		startEpSzamla.setWebSzolgaltatas(webSzolgaltatas);
		startEpSzamla.setMobilSzolgaltatas(mobilSzolgaltatas);
		startEpSzamla.setTelSzolgaltatas(teleSzolgaltatas);
		
		startEpSzamla.setGyermekJogosultsaga(GyermekJogosultsaga.valueOf(gyermekJogosultsaga));
		startEpSzamla.setNevelesJellege(NevelesJellege.valueOf(nevelesJellege));	
		
		startEpService.addNewStartEp(startEpSzamla);
		
		response.sendRedirect("ForwardToSikRegJSP");
		
	}

}
