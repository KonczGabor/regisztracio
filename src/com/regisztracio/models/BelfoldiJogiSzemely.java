package com.regisztracio.models;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

/**
 * Entity implementation class for Entity: BelfoldiJogiSzemely
 *
 */
@Entity

public class BelfoldiJogiSzemely implements Serializable {

	
	private static final long serialVersionUID = 1L;

	public BelfoldiJogiSzemely() {
		super();
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
   
	private String jogiSzemelyNeve;
	
	private String adoszam;
	
	private String telephely;
	
	private String alapitoOkiratSzama;
	
	private Date tSzKelte;
	
	private String alapitokTulajdonosok;
	
	private Date cegBejKelte;
	
	private String egyStatSzam;
	
	private boolean webKincstar = false;
	
	private boolean mobilKincstar = false;
	
	private boolean teleKincstar = false;
	
	private SzamlaKivGyakorisag szamlaKivGyakorisag = SzamlaKivGyakorisag.Évente; 
	
	private EsedekessegFizMod esedekessegFizMod = EsedekessegFizMod.BankiUtalással;
	
	private String giroSzamla;
	
	@ManyToOne
	@JoinColumn(name = "szekhely_fk")
	private Szekhely szekhely;

	public String getJogiSzemelyNeve() {
		return jogiSzemelyNeve;
	}

	public void setJogiSzemelyNeve(String jogiSzemelyNeve) {
		this.jogiSzemelyNeve = jogiSzemelyNeve;
	}

	public String getAdoszam() {
		return adoszam;
	}

	public void setAdoszam(String adoszam) {
		this.adoszam = adoszam;
	}

	public String getTelephely() {
		return telephely;
	}

	public void setTelephely(String telephely) {
		this.telephely = telephely;
	}

	public String getAlapitoOkiratSzama() {
		return alapitoOkiratSzama;
	}

	public void setAlapitoOkiratSzama(String alapitoOkiratSzama) {
		this.alapitoOkiratSzama = alapitoOkiratSzama;
	}

	public Date gettSzKelte() {
		return tSzKelte;
	}

	public void settSzKelte(Date tSzKelte) {
		this.tSzKelte = tSzKelte;
	}

	public String getAlapitokTulajdonosok() {
		return alapitokTulajdonosok;
	}

	public void setAlapitokTulajdonosok(String alapitokTulajdonosok) {
		this.alapitokTulajdonosok = alapitokTulajdonosok;
	}

	public Date getCegBejKelte() {
		return cegBejKelte;
	}

	public void setCegBejKelte(Date cegBejKelte) {
		this.cegBejKelte = cegBejKelte;
	}

	public String getEgyStatSzam() {
		return egyStatSzam;
	}

	public void setEgyStatSzam(String egyStatSzam) {
		this.egyStatSzam = egyStatSzam;
	}

	public boolean isWebKincstar() {
		return webKincstar;
	}

	public void setWebKincstar(boolean webKincstar) {
		this.webKincstar = webKincstar;
	}

	public boolean isMobilKincstar() {
		return mobilKincstar;
	}

	public void setMobilKincstar(boolean mobilKincstar) {
		this.mobilKincstar = mobilKincstar;
	}

	public boolean isTeleKincstar() {
		return teleKincstar;
	}

	public void setTeleKincstar(boolean teleKincstar) {
		this.teleKincstar = teleKincstar;
	}

	public SzamlaKivGyakorisag getSzamlaKivGyakorisag() {
		return szamlaKivGyakorisag;
	}

	public void setSzamlaKivGyakorisag(SzamlaKivGyakorisag szamlaKivGyakorisag) {
		this.szamlaKivGyakorisag = szamlaKivGyakorisag;
	}

	public EsedekessegFizMod getEsedekessegFizMod() {
		return esedekessegFizMod;
	}

	public void setEsedekessegFizMod(EsedekessegFizMod esedekessegFizMod) {
		this.esedekessegFizMod = esedekessegFizMod;
	}

	public String getGiroSzamla() {
		return giroSzamla;
	}

	public void setGiroSzamla(String giroSzamla) {
		this.giroSzamla = giroSzamla;
	}

	public Szekhely getSzekhely() {
		return szekhely;
	}

	public void setSzekhely(Szekhely szekhely) {
		this.szekhely = szekhely;
	}

	public Integer getId() {
		return id;
	}

	@Override
	public String toString() {
		return "BelfoldiJogiSzemely [id=" + id + ", jogiSzemelyNeve=" + jogiSzemelyNeve + ", adoszam=" + adoszam
				+ ", telephely=" + telephely + ", alapitoOkiratSzama=" + alapitoOkiratSzama + ", tSzKelte=" + tSzKelte
				+ ", alapitokTulajdonosok=" + alapitokTulajdonosok + ", cegBejKelte=" + cegBejKelte + ", egyStatSzam="
				+ egyStatSzam + ", webKincstar=" + webKincstar + ", mobilKincstar=" + mobilKincstar + ", teleKincstar="
				+ teleKincstar + ", szamlaKivGyakorisag=" + szamlaKivGyakorisag + ", esedekessegFizMod="
				+ esedekessegFizMod + ", giroSzamla=" + giroSzamla + ", szekhely=" + szekhely + "]";
	}
	
	
}