package pageObject;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import utils.ObjectMap;

public class StudentCheckResultsPage {//查询成绩
	public WebElement element;
	public WebDriver driver;
	ObjectMap objMap = new ObjectMap("ObjectMap/studentCheckResults.properties");
	
	public StudentCheckResultsPage(WebDriver wd) {
		this.driver = wd;
	}
	//查询成绩
	public WebElement getCheckResults() throws Exception {
		this.element=driver.findElement(objMap.getlocator("results.checkResults"));
		return element;
	}
	//学年
	public WebElement getYear() throws Exception {
		this.element=driver.findElement(objMap.getlocator("results.year"));
		return element;
	}
	//学期
	public WebElement getTerm() throws Exception {
		this.element=driver.findElement(objMap.getlocator("results.term"));
		return element;
	}
	//查询
	public WebElement getCheck() throws Exception {
		this.element=driver.findElement(objMap.getlocator("results.check"));
		return element;
	}
	//PDF
	public WebElement getPDF() throws Exception {
		this.element=driver.findElement(objMap.getlocator("results.pdf"));
		return element;
	}

}
