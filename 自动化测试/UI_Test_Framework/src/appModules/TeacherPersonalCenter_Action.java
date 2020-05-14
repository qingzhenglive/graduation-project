package appModules;

import org.openqa.selenium.WebDriver;

import pageObject.TeacherPersonalCenterPage;
import pageObject.TeacherScoreEntryPage;

public class TeacherPersonalCenter_Action {
	//修改基本信息
	public static void changeBasicMessage(WebDriver wd,String birth,String nation) throws Exception {
		TeacherPersonalCenterPage tp=new TeacherPersonalCenterPage(wd);
		tp.getBirthday().clear();
		tp.getBirthday().sendKeys(birth);
		tp.getNation().clear();
		tp.getNation().sendKeys(nation);
		tp.getSave().click();
		Thread.sleep(3000);
	}
	//进入修改密码页面
	public static void changePasswordPage(WebDriver wd) throws Exception {
		TeacherPersonalCenterPage tp=new TeacherPersonalCenterPage(wd);
		tp.getChangePsw().click();
		Thread.sleep(3000);
	}
	//修改密码
	public static void changePassword(WebDriver wd,String oldPsw,String newPsw) throws Exception {
		TeacherPersonalCenterPage tp=new TeacherPersonalCenterPage(wd);
		tp.getChangePsw().click();
		tp.getOldPsw().sendKeys(oldPsw);
		tp.getNewPsw().sendKeys(newPsw);
		tp.getConfirmNewPsw().sendKeys(newPsw);
		tp.getConfirmChange().click();
	}

}
