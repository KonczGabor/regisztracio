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

	// Székhely címe

	@Enumerated(EnumType.STRING)
	private Orszag orszag;

	private Integer iranyitoszam;

	private String helyseg;

	private String utcaHazszam;

	// Levelezési cím

	@Enumerated(EnumType.STRING)
	private Orszag lvlOrszag;

	private Integer lvlIranyitoszam;

	private String lvlHelyseg;

	private String lvlUtcaHazszam;

	// Személyes adatok

	private String adoszam;

	private String telephely;

	private String alapitoOkiratSzama;

	private Date tSzKelte;

	// private String alapitokTulajdonosok;
	
	private String cegBejSzama;

	private Date cegBejKelte;

	private String egyStatSzam;

	// Elektronikus szolgáltatásokkal kapcsolatos adatok

	private String webSzolgaltatas = "";

	private String mobilSzolgaltatas = "";

	private String telSzolgaltatas = "";

	// Számlát érintõ rendelkezések

	@Enumerated(EnumType.STRING)
	private SzamlaKivGyakorisag szamlaKivGyakorisag = SzamlaKivGyakorisag.Evente;

	@Enumerated(EnumType.STRING)
	private EsedekessegFizMod esedekessegFizMod = EsedekessegFizMod.BankiUtalassal;

	private String giroSzamla;

	public String getJogiSzemelyNeve() {
		return jogiSzemelyNeve;
	}

	public void setJogiSzemelyNeve(String jogiSzemelyNeve) {
		this.jogiSzemelyNeve = jogiSzemelyNeve;
	}

	public Orszag getOrszag() {
		return orszag;
	}

	public void setOrszag(Orszag orszag) {
		this.orszag = orszag;
	}

	public Integer getIranyitoszam() {
		return iranyitoszam;
	}

	public void setIranyitoszam(Integer iranyitoszam) {
		this.iranyitoszam = iranyitoszam;
	}

	public String getHelyseg() {
		return helyseg;
	}

	public void setHelyseg(String helyseg) {
		this.helyseg = helyseg;
	}

	public String getUtcaHazszam() {
		return utcaHazszam;
	}

	public void setUtcaHazszam(String utcaHazszam) {
		this.utcaHazszam = utcaHazszam;
	}

	public Orszag getLvlOrszag() {
		return lvlOrszag;
	}

	public void setLvlOrszag(Orszag lvlOrszag) {
		this.lvlOrszag = lvlOrszag;
	}

	public Integer getLvlIranyitoszam() {
		return lvlIranyitoszam;
	}

	public void setLvlIranyitoszam(Integer lvlIranyitoszam) {
		this.lvlIranyitoszam = lvlIranyitoszam;
	}

	public String getLvlHelyseg() {
		return lvlHelyseg;
	}

	public void setLvlHelyseg(String lvlHelyseg) {
		this.lvlHelyseg = lvlHelyseg;
	}

	public String getLvlUtcaHazszam() {
		return lvlUtcaHazszam;
	}

	public void setLvlUtcaHazszam(String lvlUtcaHazszam) {
		this.lvlUtcaHazszam = lvlUtcaHazszam;
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

	public String getCegBejSzama() {
		return cegBejSzama;
	}

	public void setCegBejSzama(String cegBejSzama) {
		this.cegBejSzama = cegBejSzama;
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

	public String getWebSzolgaltatas() {
		return webSzolgaltatas;
	}

	public void setWebSzolgaltatas(String webSzolgaltatas) {
		this.webSzolgaltatas = webSzolgaltatas;
	}

	public String getMobilSzolgaltatas() {
		return mobilSzolgaltatas;
	}

	public void setMobilSzolgaltatas(String mobilSzolgaltatas) {
		this.mobilSzolgaltatas = mobilSzolgaltatas;
	}

	public String getTelSzolgaltatas() {
		return telSzolgaltatas;
	}

	public void setTelSzolgaltatas(String telSzolgaltatas) {
		this.telSzolgaltatas = telSzolgaltatas;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Integer getId() {
		return id;
	}

	
}
