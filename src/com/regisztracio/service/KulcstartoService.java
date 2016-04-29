package com.regisztracio.service;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.regisztracio.models.Kulcstarto;

/**
 * Session Bean implementation class KulcstartoService
 */
@Stateless
@LocalBean
public class KulcstartoService {

    /**
     * Default constructor. 
     */
    public KulcstartoService() {
        // TODO Auto-generated constructor stub
    }
    
    @PersistenceContext(unitName = "regisztracio")
	private EntityManager em;
    
    private void addNewKulcstarto(Kulcstarto kulcstarto){
    	em.persist(kulcstarto);
    }

}
