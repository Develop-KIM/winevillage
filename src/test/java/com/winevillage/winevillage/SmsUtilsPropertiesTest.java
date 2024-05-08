package com.winevillage.winevillage;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.assertNotNull;

@SpringBootTest
public class SmsUtilsPropertiesTest {

    @Value("${coolsms.api.key}")
    private String apiKey;

    @Value("${coolsms.api.secret}")
    private String apiSecretKey;

    @Value("${coolsms.api.fromnumber}")
    private String fromNumber;

    @Test
    public void testProperties() {
        assertNotNull(apiKey, "API Key must not be null");
        assertNotNull(apiSecretKey, "API Secret Key must not be null");
        assertNotNull(fromNumber, "From Number must not be null");
    }
}

