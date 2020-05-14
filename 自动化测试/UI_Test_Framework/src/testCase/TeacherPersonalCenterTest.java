package testCase;

import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Listeners;
import org.testng.annotations.Test;

import appModules.TeacherPersonalCenter_Action;
import appModules.TeacherScoreEntry_Action;
import core.BaseTest;
import core.WebTestListener;

@Listeners(WebTestListener.class)
public class TeacherPersonalCenterTest extends BaseTest{
	public TeacherPersonalCenterTest(String type) throws Exception  {
		super("firefox");
		// TODO Auto-generated constructor stub
	}
	String url = "http://localhost:8080/educationalsystem/preIndex";
	@BeforeMethod
	public void openbrowser() throws Exception {
		webtest.open(url);
	}
	//修改基本信息
	@Test
	public void testChangeMessage() throws Exception {
		TeacherPersonalCenter_Action.changeBasicMessage(getDriver(), "1981-2-5", "满");
		Assert.assertTrue(ifContains("基本信息"));
	}
	//进入修改密码页面
	@Test
	public void testIntoChangePassword() throws Exception {
		TeacherPersonalCenter_Action.changePasswordPage(getDriver());
		Assert.assertTrue(ifContains("旧密码"));
	}
	//修改密码
	@Test
	public void testChangePassword() throws Exception {
		TeacherPersonalCenter_Action.changePasswordPage(getDriver());
		TeacherPersonalCenter_Action.changePassword(getDriver(), "123456", "111111");
		Assert.assertTrue(ifContains("修改密码"));
	}
	@AfterClass
	public void closebrowser() throws Exception {
		webtest.quit();
	}

}
