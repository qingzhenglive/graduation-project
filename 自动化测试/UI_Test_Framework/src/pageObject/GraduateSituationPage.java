package pageObject;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import utils.ObjectMap;

public class GraduateSituationPage {
	public WebElement element;
	public WebDriver driver;
	ObjectMap objMap = new ObjectMap("ObjectMap/graduateSituation.properties");
	
	public GraduateSituationPage(WebDriver wd) {
		this.driver = wd;
	}
	//历年毕业生就业情况
	public WebElement getGraduateEmployment() throws Exception {
		this.element=driver.findElement(objMap.getlocator("graduate.employment"));
		return element;
	}
	//历年毕业生考研情况
	public WebElement getGraduateExam() throws Exception {
		this.element=driver.findElement(objMap.getlocator("graduate.exam"));
		return element;
	}
	//某年就业情况
	public WebElement getCertainYearEmployment(int row) throws Exception {
		this.element=driver.findElements(objMap.getlocator("graduate.certainYearEmployment")).get(row);
		return element;
	}
	//某年考研情况
	public WebElement getCertainYearExam(int row) throws Exception {
		this.element=driver.findElements(objMap.getlocator("graduate.certainYearExam")).get(row);
		return element;
	}

}
