package pageObject;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import utils.ObjectMap;

public class StudentQuerySchedulePage {//查询课表
	public WebElement element;
	public WebDriver driver;
	ObjectMap objMap = new ObjectMap("ObjectMap/studentQuerySchedule.properties");
	
	public StudentQuerySchedulePage(WebDriver wd) {
		this.driver = wd;
	}
	//查询课表
	public WebElement getQuerySchedule() throws Exception {
		this.element=driver.findElement(objMap.getlocator("schedule.querySchedule"));
		return element;
	}
	//学年
	public WebElement getYear() throws Exception {
		this.element=driver.findElement(objMap.getlocator("schedule.year"));
		return element;
	}
	//学期
	public WebElement getTerm() throws Exception {
		this.element=driver.findElement(objMap.getlocator("schedule.term"));
		return element;
	}
	//周次
	public WebElement getWeek() throws Exception {
		this.element=driver.findElement(objMap.getlocator("schedule.week"));
		return element;
	}
	//查询
	public WebElement getCheck() throws Exception {
		this.element=driver.findElement(objMap.getlocator("schedule.check"));
		return element;
	}
	//PDF
	public WebElement getPDF() throws Exception {
		this.element=driver.findElement(objMap.getlocator("schedule.pdf"));
		return element;
	}

}
