package com.regisztracio.service;

import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import com.regisztracio.models.BelfoldiJogiSzemely;

/**
 * Session Bean implementation class TermeszetesService
 */
@Stateless
@LocalBean
public class JogiService {

	/**
	 * Default constructor.
	 */
	public JogiService() {
		// TODO Auto-generated constructor stub
	}

	@PersistenceContext(unitName = "regisztracio")
	private EntityManager em;

	public void addNewBJSZ(BelfoldiJogiSzemely bjsz) {
		em.persist(bjsz);
	}

	public List<BelfoldiJogiSzemely> getBJSZList() {

		TypedQuery<BelfoldiJogiSzemely> query = em.createQuery("SELECT bjsz FROM BelfoldiJogiSzemely bjsz",
				BelfoldiJogiSzemely.class);

		List<BelfoldiJogiSzemely> BJSZList = query.getResultList(); // execute
																			// the
																			// query

		return BJSZList;

	}

}
