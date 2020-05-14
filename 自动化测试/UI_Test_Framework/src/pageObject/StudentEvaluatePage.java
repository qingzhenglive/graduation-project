package pageObject;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import utils.ObjectMap;

public class StudentEvaluatePage {
	public WebElement element;
	public WebDriver driver;
	ObjectMap objMap = new ObjectMap("ObjectMap/studentEvaluate.properties");
	
	public StudentEvaluatePage(WebDriver wd) {
		this.driver = wd;
	}
	//评价
	public WebElement getEvaluate() throws Exception {
		this.element=driver.findElement(objMap.getlocator("evaluate.evaluate"));
		return element;
	}
	//teacher
	public WebElement getTeacher1() throws Exception {
		this.element=driver.findElement(objMap.getlocator("evaluate.teacher1"));
		return element;
	}
	//teacher
	public WebElement getTeacher2() throws Exception {
		this.element=driver.findElement(objMap.getlocator("evaluate.teacher2"));
		return element;
	}
	//teacher
	public WebElement getTeacher3() throws Exception {
		this.element=driver.findElement(objMap.getlocator("evaluate.teacher3"));
		return element;
	}
	//成绩
	public WebElement getScore1() throws Exception {
		this.element=driver.findElement(objMap.getlocator("evaluate.score1"));
		return element;
	}
	//成绩
	public WebElement getScore2() throws Exception {
		this.element=driver.findElement(objMap.getlocator("evaluate.score2"));
		return element;
	}
	//成绩
	public WebElement getScore3() throws Exception {
		this.element=driver.findElement(objMap.getlocator("evaluate.score3"));
		return element;
	}
	//成绩
	public WebElement getScore4() throws Exception {
		this.element=driver.findElement(objMap.getlocator("evaluate.score4"));
		return element;
	}
	//成绩
	public WebElement getScore5() throws Exception {
		this.element=driver.findElement(objMap.getlocator("evaluate.score5"));
		return element;
	}
	//成绩
	public WebElement getScore6() throws Exception {
		this.element=driver.findElement(objMap.getlocator("evaluate.score6"));
		return element;
	}
	//成绩
	public WebElement getScore7() throws Exception {
		this.element=driver.findElement(objMap.getlocator("evaluate.score7"));
		return element;
	}
	//成绩
	public WebElement getScore8() throws Exception {
		this.element=driver.findElement(objMap.getlocator("evaluate.score8"));
		return element;
	}
	//成绩
	public WebElement getScore9() throws Exception {
		this.element=driver.findElement(objMap.getlocator("evaluate.score9"));
		return element;
	}
	//成绩
	public WebElement getScore10() throws Exception {
		this.element=driver.findElement(objMap.getlocator("evaluate.score10"));
		return element;
	}
	//保存按钮
	public WebElement getSaveBtn() throws Exception {
		this.element=driver.findElement(objMap.getlocator("evaluate.saveBtn"));
		return element;
	}

}
