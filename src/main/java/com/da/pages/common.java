package com.da.pages;

import java.io.File;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import cucumber.api.Scenario;

public class common {
	
	WebDriver driver;

	public common(WebDriver driver) {
		this.driver = driver;
	}

	public static String ScenarioName = null;
	public static int ScenarioID = 0;



	public void setscenario(Scenario scenario) {
		ScenarioName = scenario.getName();
		ScenarioID++;
	}

	

	public String getScreenshot(WebDriver driver) throws Exception {
		
		TakesScreenshot ts = ((TakesScreenshot) driver);
		File source = ts.getScreenshotAs(OutputType.FILE);
		File finalDestination = new File(".target/screenshots/" + ScenarioID + "_" + ScenarioName + ".jpeg");
		FileUtils.copyFile(source, finalDestination);
		return finalDestination.getAbsolutePath();

	}


	

}
