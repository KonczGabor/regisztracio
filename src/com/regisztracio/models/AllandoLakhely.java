package com.regisztracio.models;

import java.io.Serializable;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: AllandoLakhely
 *
 */
@Entity

public class AllandoLakhely implements Serializable {

	@Transient
	private static final long serialVersionUID = 1L;

	public AllandoLakhely() {
		super();
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	private Orszag orszag;
	
	private Integer iranyitoszam;
	
	private String helyseg;
	
	private String utcaHazszam;
	
	@OneToOne(mappedBy = "allandoLakhely")
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

	public Integer getId() {
		return id;
	}

	@Override
	public String toString() {
		return "AllandoLakhely [id=" + id + ", orszag=" + orszag + ", iranyitoszam=" + iranyitoszam + ", helyseg="
				+ helyseg + ", utcaHazszam=" + utcaHazszam + "]";
	}	

   
}
