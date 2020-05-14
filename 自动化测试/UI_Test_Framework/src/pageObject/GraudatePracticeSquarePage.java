package pageObject;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import utils.ObjectMap;

public class GraudatePracticeSquarePage {
	public WebElement element;
	public WebDriver driver;
	ObjectMap objMap = new ObjectMap("ObjectMap/graudatePracticeSquare.properties");
	
	public GraudatePracticeSquarePage(WebDriver wd) {
		this.driver = wd;
	}
	//实习广场
	public WebElement getPracticeSquare() throws Exception {
		this.element=driver.findElement(objMap.getlocator("square.practiceSquare"));
		return element;
	}
	//地点
	public WebElement getPlace(int row) throws Exception {
		this.element=driver.findElements(objMap.getlocator("square.place")).get(row);
		return element;
	}
	//类别
	public WebElement getCategory(int row) throws Exception {
		this.element=driver.findElements(objMap.getlocator("square.category")).get(row);
		return element;
	}
	//招聘信息
	public WebElement getMessage(int row) throws Exception {
		this.element=driver.findElements(objMap.getlocator("square.message")).get(row);
		return element;
	}
	//页数
	public WebElement getPage(int row) throws Exception {
		this.element=driver.findElements(objMap.getlocator("square.page")).get(row);
		return element;
	}
	//其他职位
	public WebElement getOtherJob(int row) throws Exception {
		this.element=driver.findElements(objMap.getlocator("square.other")).get(row);
		return element;
	}

}
