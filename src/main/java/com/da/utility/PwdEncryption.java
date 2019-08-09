package com.da.utility;

import java.io.IOException;
import org.apache.commons.codec.binary.Base64;
import org.openqa.selenium.WebDriver;


public class PwdEncryption 
{
	WebDriver driver;
	public PwdEncryption(WebDriver driver)
	{
		this.driver=driver;
	}

	public String passwordDecoder(String key)throws IOException
	{	
		byte[] decodePwdBytes = Base64.decodeBase64(key);
		String decodedPWD = new String(decodePwdBytes);

		return(decodedPWD);
	}
}
	
