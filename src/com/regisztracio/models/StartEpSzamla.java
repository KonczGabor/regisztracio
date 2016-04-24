package com.regisztracio.models;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

/**
 * Entity implementation class for Entity: 
 *
 */
@Entity

public class StartEpSzamla implements Serializable {

	@Transient
	private static final long serialVersionUID = 1L;

	public StartEpSzamla() {
		super();
	}
   
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	private int proba;
	
	private Date date;

	public Date getDate() {
		return date;
	}



	public void setDate(Date date) {
		this.date = date;
	}



	public int getProba() {
		return proba;
	}
	
	

	public void setProba(int proba) {
		this.proba = proba;
	}
	
//	private String anyjaCsaladiNeve;
//	
//	private String anyjaUtoNeve;
//	
//	private GyermekJogosultsaga GyermekJogosuktsaga;
//	
//	private NevelesJellege nevelesJellege;	


	
}
