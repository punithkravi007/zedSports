package com.ecommerce.zedSports.Util;

import java.util.Base64;
import java.util.Random;

public class Encrypter {

	public static String asciiEncrypter(String inputString, String prepender) {
		String encryptedString = "";
		char[] inputCharArray = inputString.toCharArray();
		for (int i = 0; i < inputCharArray.length; i++) {
			encryptedString = encryptedString + (int) inputCharArray[i];
		}
		return prepender + encryptedString;
	}

	public static String convertByteToBase64Encoder(byte[] input) {
		String encoded = Base64.getEncoder().encodeToString(input);
		return "data:image/jpeg;base64," + encoded;
	}
	
	public static String generateRandomOrderId(){
		Random rand = new Random(); 
		int orderId = rand.nextInt(1000000000);
		return String.valueOf(orderId);
	}
}
