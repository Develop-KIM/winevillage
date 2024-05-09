package utils;

import java.util.UUID;

public class UuidFunctions {
	
	public static String getUuid() {
		String uuid = UUID.randomUUID().toString();
		uuid = uuid.replaceAll("-", "");
		uuid = uuid.substring(uuid.length()-6);
		return uuid.toUpperCase();
	}
}
