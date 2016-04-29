package com.regisztracio.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import com.regisztracio.models.BelfoldiTermeszetesSzemely;
import com.regisztracio.support.CodeGen;

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

	private Random random = new Random();

	private String range = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

	private int userAzonositoLength = 10;

	public void addNewBTSZ(BelfoldiTermeszetesSzemely btsz) {

		em.persist(btsz);
		
	}

	public String generateUserID() {

		return CodeGen.generateString(random, range, userAzonositoLength);

	}
		
	public String generateUserCode() {

		return CodeGen.createCode();
	}

	// A már létezõ személyek userID-jait lekérdezzük

	public List<String> getUserIDs() {

		TypedQuery<BelfoldiTermeszetesSzemely> query = em
				.createQuery("Select btsz FROM BelfoldiTermeszetesSzemely btsz", BelfoldiTermeszetesSzemely.class);

		List<BelfoldiTermeszetesSzemely> btszList = query.getResultList();

		List<String> userIDs = new ArrayList<>();

		for (Integer i = 0; i < btszList.size(); ++i) {
			userIDs.add(btszList.get(i).getUserID());
		}
		return userIDs;
	}

	// Ezzel ellenõrizzük hogy létezik-e már
	// a userID-közt az általunk generált,
	// ha igen, akkor újjat generálunk.

	String tmpID;

	public String egyediUserIDkeszites() {
		tmpID = generateUserID();
		if (getUserIDs().contains(tmpID)) {
			egyediUserIDkeszites();
		}
		return tmpID;
	}

}
