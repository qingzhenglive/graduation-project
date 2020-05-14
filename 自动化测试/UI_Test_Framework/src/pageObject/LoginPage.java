package pageObject;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import utils.ObjectMap;

public class LoginPage {
	public WebElement element;
	public WebDriver driver;
	ObjectMap objMap = new ObjectMap("ObjectMap/login.properties");
	
	public LoginPage(WebDriver wd) {
		this.driver = wd;
	}
	//用户名
	public WebElement getUsername() throws Exception {
		this.element=driver.findElement(objMap.getlocator("login.username"));
		return element;
	}
	//密码
	public WebElement getPassword() throws Exception {
		this.element=driver.findElement(objMap.getlocator("login.password"));
		return element;
	}
	//角色
	public WebElement getRole() throws Exception {
		this.element=driver.findElement(objMap.getlocator("login.role"));
		return element;
	}
	//登录
	public WebElement getLogin() throws Exception {
		this.element=driver.findElement(objMap.getlocator("login.loginBtn"));
		return element;
	}
	//退出登录-学生
	public WebElement getBack() throws Exception {
		this.element=driver.findElement(objMap.getlocator("login.backBtn"));
		return element;
	}

}
