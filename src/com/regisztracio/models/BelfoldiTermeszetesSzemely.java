package com.regisztracio.models;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
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

	@Enumerated(EnumType.STRING)
	private Allampolgarsag allampolgarsag;

	private Integer adoazonositoJel;

	private String szigSzam;

	private String szigKHNeve; // Személyi igazolvány kiállító hatóság neve

	private String szigKHSzekhelye;

	private String lakcimkartya;

	private Date szulIdo;

	private String szulHely;

	private String anyjaNeve;

	private String utlevelSzama;

	private String jogositvanySzama;

	private boolean webSzolgaltatas = false;

	private boolean teleSzolgaltatas = false;

	@Enumerated(EnumType.STRING)
	private SzamlaKivGyakorisag szamlaKivGyakorisag = SzamlaKivGyakorisag.Evente;

	@Enumerated(EnumType.STRING)
	private EsedekessegFizMod esedekessegFizMod = EsedekessegFizMod.BankiUtalassal;

	private String giroSzamla;

	@OneToOne(cascade = { CascadeType.PERSIST, CascadeType.REMOVE })
	@JoinColumn(name = "lakhely_fk")
	private AllandoLakhely allandoLakhely;

	@OneToOne(cascade = { CascadeType.PERSIST, CascadeType.REMOVE })
	@JoinColumn(name = "levelezesiCim_fk")
	private LevelezesiCim lvcBTSZ;

	public Integer getId() {
		return id;
	}

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

	public boolean getWebSzolgaltatas() {
		return webSzolgaltatas;
	}

	public void setWebSzolgaltatas(boolean webSzolgaltatas) {
		this.webSzolgaltatas = webSzolgaltatas;
	}

	public boolean getTeleSzolgaltatas() {
		return teleSzolgaltatas;
	}

	public void setTeleSzolgaltatas(boolean teleSzolgaltatas) {
		this.teleSzolgaltatas = teleSzolgaltatas;
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

	@Override
	public String toString() {
		return "BelfoldiTermeszetesSzemely [id=" + id + ", nevElotag=" + nevElotag + ", nevVezetek=" + nevVezetek
				+ ", nevKeresztv=" + nevKeresztv + ", nevUto=" + nevUto + ", nevSzuletesi=" + nevSzuletesi
				+ ", allampolgarsag=" + allampolgarsag + ", adoazonositoJel=" + adoazonositoJel + ", szigSzam="
				+ szigSzam + ", szigKHNeve=" + szigKHNeve + ", szigKHSzekhelye=" + szigKHSzekhelye + ", lakcimkartya="
				+ lakcimkartya + ", szulIdo=" + szulIdo + ", szulHely=" + szulHely + ", anyjaNeve=" + anyjaNeve
				+ ", utlevelSzama=" + utlevelSzama + ", jogositvanySzama=" + jogositvanySzama + ", webSzolgaltatas="
				+ webSzolgaltatas + ", teleSzolgaltatas=" + teleSzolgaltatas + ", szamlaKivGyakorisag="
				+ szamlaKivGyakorisag + ", esedekessegFizMod=" + esedekessegFizMod + ", giroSzamla=" + giroSzamla
				+ ", allandoLakhely=" + allandoLakhely + ", lvcBTSZ=" + lvcBTSZ + "]";
	}

}
