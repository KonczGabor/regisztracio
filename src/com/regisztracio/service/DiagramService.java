package com.regisztracio.service;

import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

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
    
    @PersistenceContext(unitName = "regisztracio")
	private EntityManager em;
    
    public void createAllDiagrams(){
    	
    	Diagram diagram = new Diagram();
    	
    	diagram.setName("BUX");
    	
    	diagram.setData("data.addRows([ [ '2016.03.29', 25872 ],[ '2016.04.04', 26438 ], [ '2016.04.05', 26402 ],[ '2016.04.06', 26309 ], [ '2016.04.07', 26440 ],[ '2016.04.08', 26528 ], [ '2016.04.11', 26650 ],[ '2016.04.12', 26365 ] ]);");
    	
//    	diagram.setData("[ '2016.04.12', 26365 ];");

    	
    	em.persist(diagram);
    }
    
    
    public String getDiagramBuxData(){
    	
    	TypedQuery<Diagram> query = em.createQuery("SELECT diagram FROM Diagram diagram" , Diagram.class);
				
//    	Diagram query = em.createQuery("SELECT d.data FROM Diagram d WHERE diagram.name='BUX'");
    
    	List<Diagram> diagramList = query.getResultList();
    	
    	return diagramList.get(0).getData();
    }
    
    public void deleteDiagramBux(){
    	
    	em.createQuery("DELETE FROM Diagram " , Diagram.class);
    	
    }
}
