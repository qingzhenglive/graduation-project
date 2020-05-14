package appModules;

import org.openqa.selenium.WebDriver;

import pageObject.StudentEvaluatePage;
import pageObject.StudentPersonalCenterPage;

public class StudentPersonalCenter_Action {
	//点击个人中心
	public static void personalCenterClick(WebDriver wd) throws Exception {
		StudentPersonalCenterPage sp=new StudentPersonalCenterPage(wd);
		sp.getPersonalCenter().click();
	}
	//修改电话号码
	public static void changePhone(WebDriver wd,String phone) throws Exception {
		StudentPersonalCenterPage sp=new StudentPersonalCenterPage(wd);
		sp.getPhone().clear();
		sp.getPhone().sendKeys(phone);
		sp.getCommit().click();
	}
	//进入修改密码界面
	public static void intoChangePassword(WebDriver wd) throws Exception {
		StudentPersonalCenterPage sp=new StudentPersonalCenterPage(wd);
		sp.getChangePassword().click();
	}
	//修改密码
	public static void changePassword(WebDriver wd,String oldPsw,String newPsw) throws Exception {
		StudentPersonalCenterPage sp=new StudentPersonalCenterPage(wd);
		sp.getOldPassword().sendKeys(newPsw);
		sp.getNewPassword().sendKeys(newPsw);
		sp.getConfirmNewPassword().sendKeys(newPsw);
		sp.getSubmit().click();
	}
	

}
