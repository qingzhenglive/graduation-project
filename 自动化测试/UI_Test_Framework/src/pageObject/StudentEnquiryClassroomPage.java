package pageObject;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import utils.ObjectMap;

public class StudentEnquiryClassroomPage {//查询空余教室
	public WebElement element;
	public WebDriver driver;
	ObjectMap objMap = new ObjectMap("ObjectMap/studentEnquiryClassroom.properties");
	
	public StudentEnquiryClassroomPage(WebDriver wd) {
		this.driver = wd;
	}
	//查询空余教室
	public WebElement getEnquiryClassroom() throws Exception {
		this.element=driver.findElement(objMap.getlocator("room.enquiryClassroom"));
		return element;
	}
	//查询
	public WebElement getCheck() throws Exception {
		this.element=driver.findElement(objMap.getlocator("room.check"));
		return element;
	}
	//PDF
	public WebElement getPDF() throws Exception {
		this.element=driver.findElement(objMap.getlocator("room.pdf"));
		return element;
	}
	//周次
	public WebElement getWeek() throws Exception {
		this.element=driver.findElement(objMap.getlocator("room.week"));
		return element;
	}
	//星期1
	public WebElement getWeekDay1() throws Exception {
		this.element=driver.findElement(objMap.getlocator("room.weekDay1"));
		return element;
	}
	//星期2
	public WebElement getWeekDay2() throws Exception {
		this.element=driver.findElement(objMap.getlocator("room.weekDay2"));
		return element;
	}
	//星期3
	public WebElement getWeekDay3() throws Exception {
		this.element=driver.findElement(objMap.getlocator("room.weekDay3"));
		return element;
	}
	//星期4
	public WebElement getWeekDay4() throws Exception {
		this.element=driver.findElement(objMap.getlocator("room.weekDay4"));
		return element;
	}
	//星期5
	public WebElement getWeekDay5() throws Exception {
		this.element=driver.findElement(objMap.getlocator("room.weekDay5"));
		return element;
	}
	//星期6
	public WebElement getWeekDay6() throws Exception {
		this.element=driver.findElement(objMap.getlocator("room.weekDay6"));
		return element;
	}
	//星期7
	public WebElement getWeekDay7() throws Exception {
		this.element=driver.findElement(objMap.getlocator("room.weekDay7"));
		return element;
	}
	//时间8:00-9:30
	public WebElement getTime1() throws Exception {
		this.element=driver.findElement(By.xpath("//input[@value='8:00-9:30'and @class='sunday']"));
		//this.element=driver.findElement(objMap.getlocator("room.time1"));
		return element;
	}
	//时间9:45-12:10
	public WebElement getTime2() throws Exception {
		this.element=driver.findElement(By.xpath("//input[@value='9:45-12:10'and @class='sunday']"));
		//this.element=driver.findElement(objMap.getlocator("room.time2"));
		return element;
	}
	//时间14:00-16:20
	public WebElement getTime3() throws Exception {
		this.element=driver.findElement(By.xpath("//input[@value='14:00-16:20'and @class='sunday']"));
		this.element=driver.findElement(objMap.getlocator("room.time3"));
		return element;
	}
	//时间15:45-18:10
	public WebElement getTime4() throws Exception {
		this.element=driver.findElement(By.xpath("//input[@value='15:45-16:10'and @class='sunday']"));
		//this.element=driver.findElement(objMap.getlocator("room.time4"));
		return element;
	}
	//时间19:00-22:00
	public WebElement getTime5() throws Exception {
		this.element=driver.findElement(By.xpath("//input[@value='19:00-22:00'and @class='sunday']"));
		//this.element=driver.findElement(objMap.getlocator("room.time5"));
		return element;
	}

}
