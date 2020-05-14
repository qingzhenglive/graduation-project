package pageObject;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import utils.ObjectMap;

public class StudentPersonalCenterPage {
	public WebElement element;
	public WebDriver driver;
	ObjectMap objMap = new ObjectMap("ObjectMap/studentPersonalCenter.properties");
	
	public StudentPersonalCenterPage(WebDriver wd) {
		this.driver = wd;
	}
	//个人中心
	public WebElement getPersonalCenter() throws Exception {
		this.element=driver.findElement(objMap.getlocator("personalCenter.personalCenter"));
		return element;
	}
	//电话
	public WebElement getPhone() throws Exception {
		this.element=driver.findElement(objMap.getlocator("personalCenter.phone"));
		return element;
	}
	//提交修改
	public WebElement getCommit() throws Exception {
		this.element=driver.findElement(objMap.getlocator("personalCenter.commit"));
		return element;
	}
	//修改密码
	public WebElement getChangePassword() throws Exception {
		this.element=driver.findElement(objMap.getlocator("personalCenter.changePassword"));
		return element;
	}
	//原密码
	public WebElement getOldPassword() throws Exception {
		this.element=driver.findElement(objMap.getlocator("personalCenter.oldPassword"));
		return element;
	}
	//原密码
	public WebElement getNewPassword() throws Exception {
		this.element=driver.findElement(objMap.getlocator("personalCenter.newPassword"));
		return element;
	}
	//确认新密码
	public WebElement getConfirmNewPassword() throws Exception {
		this.element=driver.findElement(objMap.getlocator("personalCenter.confirmNewPassword"));
		return element;
	}
	//确认按钮
	public WebElement getSubmit() throws Exception {
		this.element=driver.findElement(objMap.getlocator("personalCenter.submitBtn"));
		return element;
	}

}
