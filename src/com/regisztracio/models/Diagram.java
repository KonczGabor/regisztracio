package com.regisztracio.models;

import java.io.Serializable;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: Diagram
 *
 */
@Entity

public class Diagram implements Serializable {

	@Transient
	private static final long serialVersionUID = 1L;

	public Diagram() {
		super();
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	private String name;
	
	private String params;
	
	private String data;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getParams() {
		return params;
	}

	public void setParams(String params) {
		this.params = params;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public Integer getId() {
		return id;
	}

	@Override
	public String toString() {
		return "Diagram [id=" + id + ", name=" + name + ", params=" + params + ", data=" + data + "]";
	}
	
	
	
	
   
}
