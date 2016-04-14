package com.regisztracio.models;

import java.io.Serializable;
import javax.persistence.*;

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
	
	private String keresztnev;

	private String vezeteknev;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getKeresztnev() {
		return keresztnev;
	}

	public void setKeresztnev(String keresztnev) {
		this.keresztnev = keresztnev;
	}

	public String getVezeteknev() {
		return vezeteknev;
	}

	public void setVezeteknev(String vezeteknev) {
		this.vezeteknev = vezeteknev;
	}
   
}
