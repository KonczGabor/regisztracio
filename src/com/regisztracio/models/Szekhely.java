package com.regisztracio.models;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;

/**
 * Entity implementation class for Entity: Szekhely
 *
 */
@Entity

public class Szekhely implements Serializable {

	@Transient
	private static final long serialVersionUID = 1L;

	public Szekhely() {
		super();
	}
   
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	private Orszag orszag;
	
	private Integer iranyitoszam;
	
	private String helyseg;
	
	private String utcaHazszam;

	public Orszag getOrszag() {
		return orszag;
	}
	
	@OneToMany(mappedBy = "szekhely")
	private List<BelfoldiJogiSzemely> belfJogiSzemelyek;

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
		return "Szekhely [id=" + id + ", orszag=" + orszag + ", iranyitoszam=" + iranyitoszam + ", helyseg=" + helyseg
				+ ", utcaHazszam=" + utcaHazszam + "]";
	}
	
	
}
