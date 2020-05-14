package pageObject;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

import utils.ObjectMap;

public class TeacherChangeClassPage {
	public WebElement element;
	public WebDriver driver;
	ObjectMap objMap = new ObjectMap("ObjectMap/teacherChangeClass.properties");
	
	public TeacherChangeClassPage(WebDriver wd) {
		this.driver = wd;
	}
	//调课申请
	public WebElement getChange() throws Exception {
		this.element=driver.findElement(objMap.getlocator("change.link"));
		return element;
	}
	//星期
	public WebElement getDay() throws Exception {
		this.element=driver.findElement(objMap.getlocator("change.name"));
		return element;
	}
	//查找按钮
	public WebElement getSearch() throws Exception {
		this.element=driver.findElement(objMap.getlocator("change.id"));
		return element;
	}
	//调课申请
	public WebElement getApplacation(int row) throws Exception {
		this.element=driver.findElements(objMap.getlocator("change.linkApp")).get(row);
		return element;
	}
	//调课申请中的星期
	public WebElement getNewDay() throws Exception {
		this.element=driver.findElement(objMap.getlocator("change.newName"));
		return element;
	}
	//调课申请中的时间
	public WebElement getNewTime() throws Exception {
		this.element=driver.findElement(objMap.getlocator("change.timeName"));
		return element;
	}
	//调课申请中的教室
	public WebElement getNewRoom() throws Exception {
		this.element=driver.findElement(objMap.getlocator("change.roomName"));
		return element;
	}
	//申请理由
	public WebElement getReason() throws Exception {
		this.element=driver.findElement(objMap.getlocator("change.reason"));
		return element;
	}
	//提交按钮
	public WebElement getSubmit() throws Exception {
		this.element=driver.findElement(objMap.getlocator("change.submit"));
		return element;
	}
	//下一页
	public WebElement getNextPage() throws Exception {
		this.element=driver.findElement(objMap.getlocator("change.next"));
		return element;
	}
	//上一页
	public WebElement getPrePage() throws Exception {
		this.element=driver.findElement(objMap.getlocator("change.pre"));
		return element;
	}
}
