package com.regisztracio.models;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

/**
 * Entity implementation class for Entity: BelfoldiTermeszetesSzemely
 *
 */
@Entity

public class BelfoldiTermeszetesSzemely implements Serializable {

	@Transient
	private static final long serialVersionUID = 1L;

	public BelfoldiTermeszetesSzemely() {
		super();
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;

	private String nevElotag;

	private String nevVezetek;

	private String nevKeresztv;

	private String nevUto;

	private String nevSzuletesi;	

	private Orszag orszag;

	private Integer iranyitoszam;

	private String helyseg;

	private String utcaHazszam;

	private Orszag lvlOrszag;

	private Integer lvlIranyitoszam;

	private String lvlHelyseg;

	private String lvlUtcaHazszam;
	
	@Enumerated(EnumType.STRING)
	private Allampolgarsag allampolgarsag;
	
	private Integer adoazonositoJel;

	private String szigSzam;

	private String szigKHNeve; 
	
	private String szigKHSzekhelye;

	private String lakcimkartya;

	private Date szulIdo;

	private String szulHely;

	private String anyjaNeve;

	private String utlevelSzama;

	private String jogositvanySzama;

	private String webSzolgaltatas = "";

	private String mobilSzolgaltatas = "";

	private String telSzolgaltatas = "";

	@Enumerated(EnumType.STRING)
	private SzamlaKivGyakorisag szamlaKivGyakorisag = SzamlaKivGyakorisag.Evente;

	@Enumerated(EnumType.STRING)
	private EsedekessegFizMod esedekessegFizMod = EsedekessegFizMod.BankiUtalassal;

	private String giroSzamla;

	public String getNevElotag() {
		return nevElotag;
	}

	public void setNevElotag(String nevElotag) {
		this.nevElotag = nevElotag;
	}

	public String getNevVezetek() {
		return nevVezetek;
	}

	public void setNevVezetek(String nevVezetek) {
		this.nevVezetek = nevVezetek;
	}

	public String getNevKeresztv() {
		return nevKeresztv;
	}

	public void setNevKeresztv(String nevKeresztv) {
		this.nevKeresztv = nevKeresztv;
	}

	public String getNevUto() {
		return nevUto;
	}

	public void setNevUto(String nevUto) {
		this.nevUto = nevUto;
	}

	public String getNevSzuletesi() {
		return nevSzuletesi;
	}

	public void setNevSzuletesi(String nevSzuletesi) {
		this.nevSzuletesi = nevSzuletesi;
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

	public Allampolgarsag getAllampolgarsag() {
		return allampolgarsag;
	}

	public void setAllampolgarsag(Allampolgarsag allampolgarsag) {
		this.allampolgarsag = allampolgarsag;
	}

	public Integer getAdoazonositoJel() {
		return adoazonositoJel;
	}

	public void setAdoazonositoJel(Integer adoazonositoJel) {
		this.adoazonositoJel = adoazonositoJel;
	}

	public String getSzigSzam() {
		return szigSzam;
	}

	public void setSzigSzam(String szigSzam) {
		this.szigSzam = szigSzam;
	}

	public String getSzigKHNeve() {
		return szigKHNeve;
	}

	public void setSzigKHNeve(String szigKHNeve) {
		this.szigKHNeve = szigKHNeve;
	}

	public String getSzigKHSzekhelye() {
		return szigKHSzekhelye;
	}

	public void setSzigKHSzekhelye(String szigKHSzekhelye) {
		this.szigKHSzekhelye = szigKHSzekhelye;
	}

	public String getLakcimkartya() {
		return lakcimkartya;
	}

	public void setLakcimkartya(String lakcimkartya) {
		this.lakcimkartya = lakcimkartya;
	}

	public Date getSzulIdo() {
		return szulIdo;
	}

	public void setSzulIdo(Date szulIdo) {
		this.szulIdo = szulIdo;
	}

	public String getSzulHely() {
		return szulHely;
	}

	public void setSzulHely(String szulHely) {
		this.szulHely = szulHely;
	}

	public String getAnyjaNeve() {
		return anyjaNeve;
	}

	public void setAnyjaNeve(String anyjaNeve) {
		this.anyjaNeve = anyjaNeve;
	}

	public String getUtlevelSzama() {
		return utlevelSzama;
	}

	public void setUtlevelSzama(String utlevelSzama) {
		this.utlevelSzama = utlevelSzama;
	}

	public String getJogositvanySzama() {
		return jogositvanySzama;
	}

	public void setJogositvanySzama(String jogositvanySzama) {
		this.jogositvanySzama = jogositvanySzama;
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