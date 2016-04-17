package com.regisztracio.models;

import java.io.Serializable;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: LevelezesiCim
 *
 */
@Entity

public class LevelezesiCim implements Serializable {

	@Transient
	private static final long serialVersionUID = 1L;

	public LevelezesiCim() {
		super();
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	private Orszag orszag;
	
	private Integer iranyitoszam;
	
	private String helyseg;
	
	private String utcaHazszam;	
	
	@OneToOne(mappedBy = "lvcBTSZ")
	private BelfoldiTermeszetesSzemely belfoldiTermeszetesSzemely;

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

	public BelfoldiTermeszetesSzemely getBelfoldiTermeszetesSzemely() {
		return belfoldiTermeszetesSzemely;
	}

	public void setBelfoldiTermeszetesSzemely(BelfoldiTermeszetesSzemely belfoldiTermeszetesSzemely) {
		this.belfoldiTermeszetesSzemely = belfoldiTermeszetesSzemely;
	}

	public Integer getId() {
		return id;
	}
	
	
   
}
