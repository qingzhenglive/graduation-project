package pageObject;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import utils.ObjectMap;

public class StudentCoursePage {//选课
	public WebElement element;
	public WebDriver driver;
	ObjectMap objMap = new ObjectMap("ObjectMap/studentCourse.properties");
	
	public StudentCoursePage(WebDriver wd) {
		this.driver = wd;
	}
	//选课
	public WebElement getChooseCourse() throws Exception {
		this.element=driver.findElement(objMap.getlocator("student.chooseCourse"));
		return element;
	}
	//可选课程
	public WebElement getEnableCourse() throws Exception {
		this.element=driver.findElement(objMap.getlocator("student.enableCourse"));
		return element;
	}
	//已选课程
	public WebElement getSelectedCourse() throws Exception {
		this.element=driver.findElement(objMap.getlocator("student.selectedCourse"));
		return element;
	}
	//提交
	public WebElement getSubmitBtn() throws Exception {
		this.element=driver.findElement(objMap.getlocator("student.submitBtn"));
		return element;
	}
	//页数
	public WebElement getPage(int row) throws Exception {
		this.element=driver.findElements(objMap.getlocator("student.page")).get(row);
		return element;
	}

}
