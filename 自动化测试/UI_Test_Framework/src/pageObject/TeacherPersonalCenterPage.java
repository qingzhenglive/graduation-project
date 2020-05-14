package pageObject;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import utils.ObjectMap;

public class TeacherPersonalCenterPage {
	public WebElement element;
	public WebDriver driver;
	ObjectMap objMap = new ObjectMap("ObjectMap/teacherPersonalCenter.properties");
	
	public TeacherPersonalCenterPage(WebDriver wd) {
		this.driver = wd;
	}
	//基本信息
	public WebElement getBasicMessage() throws Exception {
		this.element=driver.findElement(objMap.getlocator("center.basicMessage"));
		return element;
	}
	//生日
	public WebElement getBirthday() throws Exception {
		this.element=driver.findElement(objMap.getlocator("center.birthday"));
		return element;
	}
	//民族
	public WebElement getNation() throws Exception {
		this.element=driver.findElement(objMap.getlocator("center.nation"));
		return element;
	}
	//保存
	public WebElement getSave() throws Exception {
		this.element=driver.findElement(objMap.getlocator("center.saveBtn"));
		return element;
	}
	//修改密码
	public WebElement getChangePsw() throws Exception {
		this.element=driver.findElement(objMap.getlocator("center.changePsw"));
		return element;
	}
	//旧密码
	public WebElement getOldPsw() throws Exception {
		this.element=driver.findElement(objMap.getlocator("center.oldPsw"));
		return element;
	}
	//新密码
	public WebElement getNewPsw() throws Exception {
		this.element=driver.findElement(objMap.getlocator("center.newPsw"));
		return element;
	}
	//新密码确认
	public WebElement getConfirmNewPsw() throws Exception {
		this.element=driver.findElement(objMap.getlocator("center.confirmNewPsw"));
		return element;
	}
	//确认修改
	public WebElement getConfirmChange() throws Exception {
		this.element=driver.findElement(objMap.getlocator("center.confirmBtn"));
		return element;
	}

}
