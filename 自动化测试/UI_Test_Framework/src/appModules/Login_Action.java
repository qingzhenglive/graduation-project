package appModules;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.Select;

import pageObject.LoginPage;


public class Login_Action {
	//登录
	public static void login(WebDriver wd,String name,String password,String role) throws Exception {
		LoginPage loginPage = new LoginPage(wd);
		loginPage.getUsername().sendKeys(name);
		loginPage.getPassword().sendKeys(password);
		Select dropList=new Select(loginPage.getRole());
		dropList.selectByVisibleText(role);
		loginPage.getLogin().click();
		Thread.sleep(3000);
	}
	//退出登录-xs
	public static void back(WebDriver wd) throws Exception {
		LoginPage loginPage = new LoginPage(wd);
		loginPage.getBack().click();
		Thread.sleep(3000);
	}

}
