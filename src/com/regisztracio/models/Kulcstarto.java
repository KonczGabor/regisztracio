package com.regisztracio.models;

import java.io.Serializable;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: Kulcstarto
 *
 */
@Entity

public class Kulcstarto implements Serializable {

	
	private static final long serialVersionUID = 1L;

	public Kulcstarto() {
		super();
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	private String userAzonosito;
	
	private String userJelszo;
   
}
