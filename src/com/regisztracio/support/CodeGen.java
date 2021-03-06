package com.regisztracio.support;

import java.util.Random;
import java.util.UUID;

public final class CodeGen {

	public static String generateString(Random rng, String characters, int length) {
		char[] text = new char[length];
		for (int i = 0; i < length; i++) {
			text[i] = characters.charAt(rng.nextInt(characters.length()));
		}
		return new String(text);
	}

//	Starting with Java 5, the UUID class provides a simple means for generating unique ids. 
//	The identifiers generated by UUID are actually universally unique identifiers.
	
	public static String createCode() {

		return UUID.randomUUID().toString();
	}

}
