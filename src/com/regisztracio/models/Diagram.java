package com.regisztracio.models;

import java.io.Serializable;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: Diagram
 *
 */
@Entity

public class Diagram implements Serializable {

	
	private static final long serialVersionUID = 1L;

	public Diagram() {
		super();
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	private String type;
	
	private String params;
	
	private String data;
	
	
   
}
