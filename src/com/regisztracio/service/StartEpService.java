package com.regisztracio.service;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.regisztracio.models.StartEpSzamla;

/**
 * Session Bean implementation class StartEpService
 */
@Stateless
@LocalBean
public class StartEpService {

    /**
     * Default constructor. 
     */
    public StartEpService() {
        // TODO Auto-generated constructor stub
    }
    
    @PersistenceContext(unitName = "regisztracio")
	private EntityManager em;

    public void addNewStartEp(StartEpSzamla startEpSzamla) {
		em.persist(startEpSzamla);
	}
}
