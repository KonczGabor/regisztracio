package com.regisztracio.models;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

/**
 * Entity implementation class for Entity: Kincstári Start értékpapírszámla
 *
 */
@Entity

public class KStartEpSzamla implements Serializable {

	@Transient
	private static final long serialVersionUID = 1L;

	public KStartEpSzamla() {
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

	private Allampolgarsag allampolgarsag;
	
	private Integer adoazonositoJel;
	
	private String szigSzam;
	
	private String szigKHNeve; //Személyi igazolvány kiállító hatóság neve
	
	private String szigKHSzekhelye;
	
	private String lakcimkartya;
	
	private Date szulIdo;
	
	private String szulHely;
	
	private String anyjaCsaladiNeve;
	
	private String anyjaUtoNeve;
	
	private GyermekJogosultsaga GyermekJogosuktsaga;
	
	private NevelesJellege nevelesJellege;	
	
	private String utlevelSzama;
	
	private String jogositvanySzama;	
	
	private boolean webSzolgaltatas = false;
	
	private boolean mobilSzolgaltatas = false;
	
	private boolean teleSzolgaltatas = false;

	@OneToOne(cascade = { CascadeType.PERSIST, CascadeType.REMOVE })
	@JoinColumn(name = "lakhely_fk")
	private AllandoLakhely allandoLakhely;
	
	@OneToOne(cascade = { CascadeType.PERSIST, CascadeType.REMOVE })
	@JoinColumn(name = "levelezesiCim_fk")
	private LevelezesiCim lvcBTSZ;

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

	public String getAnyjaCsaladiNeve() {
		return anyjaCsaladiNeve;
	}

	public void setAnyjaCsaladiNeve(String anyjaCsaladiNeve) {
		this.anyjaCsaladiNeve = anyjaCsaladiNeve;
	}

	public String getAnyjaUtoNeve() {
		return anyjaUtoNeve;
	}

	public void setAnyjaUtoNeve(String anyjaUtoNeve) {
		this.anyjaUtoNeve = anyjaUtoNeve;
	}

	public GyermekJogosultsaga getGyermekJogosuktsaga() {
		return GyermekJogosuktsaga;
	}

	public void setGyermekJogosuktsaga(GyermekJogosultsaga gyermekJogosuktsaga) {
		GyermekJogosuktsaga = gyermekJogosuktsaga;
	}

	public NevelesJellege getNevelesJellege() {
		return nevelesJellege;
	}

	public void setNevelesJellege(NevelesJellege nevelesJellege) {
		this.nevelesJellege = nevelesJellege;
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

	public boolean isWebSzolgaltatas() {
		return webSzolgaltatas;
	}

	public void setWebSzolgaltatas(boolean webSzolgaltatas) {
		this.webSzolgaltatas = webSzolgaltatas;
	}

	public boolean isMobilSzolgaltatas() {
		return mobilSzolgaltatas;
	}

	public void setMobilSzolgaltatas(boolean mobilSzolgaltatas) {
		this.mobilSzolgaltatas = mobilSzolgaltatas;
	}

	public boolean isTeleSzolgaltatas() {
		return teleSzolgaltatas;
	}

	public void setTeleSzolgaltatas(boolean teleSzolgaltatas) {
		this.teleSzolgaltatas = teleSzolgaltatas;
	}

	public AllandoLakhely getAllandoLakhely() {
		return allandoLakhely;
	}

	public void setAllandoLakhely(AllandoLakhely allandoLakhely) {
		this.allandoLakhely = allandoLakhely;
	}

	public LevelezesiCim getLvcBTSZ() {
		return lvcBTSZ;
	}

	public void setLvcBTSZ(LevelezesiCim lvcBTSZ) {
		this.lvcBTSZ = lvcBTSZ;
	}

	public Integer getId() {
		return id;
	}

	@Override
	public String toString() {
		return "KStartEpSzamla [id=" + id + ", nevElotag=" + nevElotag + ", nevVezetek=" + nevVezetek + ", nevKeresztv="
				+ nevKeresztv + ", nevUto=" + nevUto + ", nevSzuletesi=" + nevSzuletesi + ", allampolgarsag="
				+ allampolgarsag + ", adoazonositoJel=" + adoazonositoJel + ", szigSzam=" + szigSzam + ", szigKHNeve="
				+ szigKHNeve + ", szigKHSzekhelye=" + szigKHSzekhelye + ", lakcimkartya=" + lakcimkartya + ", szulIdo="
				+ szulIdo + ", szulHely=" + szulHely + ", anyjaCsaladiNeve=" + anyjaCsaladiNeve + ", anyjaUtoNeve="
				+ anyjaUtoNeve + ", GyermekJogosuktsaga=" + GyermekJogosuktsaga + ", nevelesJellege=" + nevelesJellege
				+ ", utlevelSzama=" + utlevelSzama + ", jogositvanySzama=" + jogositvanySzama + ", webSzolgaltatas="
				+ webSzolgaltatas + ", mobilSzolgaltatas=" + mobilSzolgaltatas + ", teleSzolgaltatas=" + teleSzolgaltatas
				+ ", allandoLakhely=" + allandoLakhely + ", lvcBTSZ=" + lvcBTSZ + "]";
	}
	
	
}
