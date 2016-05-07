package com.regisztracio.service;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.regisztracio.models.Diagram;

/**
 * Session Bean implementation class DiagramService
 */
@Stateless
@LocalBean
public class DiagramService {

    /**
     * Default constructor. 
     */
    public DiagramService() {
        // TODO Auto-generated constructor stub
    }
    
    @PersistenceContext(unitName = "diagram")
	private EntityManager em;
    
    public void deleteAllDiagrams(){
    	
    	
    }
    
    public void createAllDiagrams(){
    	
    	Diagram diagram = new Diagram();
    	
    	diagram.setName("táblázat");
    	diagram.setParams("táblázat");
    	
    }

}
