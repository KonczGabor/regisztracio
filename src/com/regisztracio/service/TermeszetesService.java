package com.regisztracio.service;

import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import com.regisztracio.models.BelfoldiTermeszetesSzemely;

/**
 * Session Bean implementation class TermeszetesService
 */
@Stateless
@LocalBean
public class TermeszetesService {

	/**
	 * Default constructor.
	 */
	public TermeszetesService() {
		// TODO Auto-generated constructor stub
	}

	@PersistenceContext(unitName = "regisztracio")
	private EntityManager em;

	public void addNewBTSZ(BelfoldiTermeszetesSzemely btsz) {
		em.persist(btsz);
	}

	public List<BelfoldiTermeszetesSzemely> getBTSZList() {

		TypedQuery<BelfoldiTermeszetesSzemely> query = em.createQuery("SELECT btsz FROM BelfoldiTermeszetesSzemely btsz",
				BelfoldiTermeszetesSzemely.class);

		List<BelfoldiTermeszetesSzemely> bTSZList = query.getResultList(); // execute
																			// the
																			// query

		return bTSZList;

	}

}
