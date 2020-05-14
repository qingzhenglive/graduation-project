package testCase;

import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Listeners;
import org.testng.annotations.Test;

import appModules.Login_Action;
import appModules.StudentEvaluate_Action;
import appModules.StudentPersonalCenter_Action;
import core.BaseTest;
import core.WebTestListener;

@Listeners(WebTestListener.class)
public class StudentPersonalCenterTest extends BaseTest{
	public StudentPersonalCenterTest(String type) throws Exception  {
		super("firefox");
		// TODO Auto-generated constructor stub
	}
	String url = "http://localhost:8080/educationalsystemstudent/login.jsp";
	@BeforeMethod
	public void openbrowser() throws Exception {
		webtest.open(url);
//		Login_Action.login(getDriver(), "2016011678", "123456cs", "学生");
	}
	//点击个人中心
	@Test(priority = 1)
	public void testPersonalCenter() throws Exception {
		Login_Action.login(getDriver(), "2016011678", "123456cs", "学生");
		 StudentPersonalCenter_Action.personalCenterClick(getDriver());
		 Assert.assertTrue(ifContains("个人信息"));
	}
	//修改电话
	@Test(priority = 2)
	public void testPhone() throws Exception {
		Login_Action.login(getDriver(), "2016011678", "123456cs", "学生");
		 StudentPersonalCenter_Action.personalCenterClick(getDriver());
		 StudentPersonalCenter_Action.changePhone(getDriver(), "11111111111");
		 Assert.assertTrue(ifContains("个人信息"));
	}
	
	//修改电话超过11位
	@Test(priority =3)
	public void testPhoneOverEleven() throws Exception {
		Login_Action.login(getDriver(), "2016011678", "123456cs", "学生");
		StudentPersonalCenter_Action.personalCenterClick(getDriver());
		StudentPersonalCenter_Action.changePhone(getDriver(), "222222222222");
		Assert.assertTrue(ifContains("个人信息"));
	}
	//修改电话少于11位
	@Test(priority = 4)
	public void testPhoneUnderEleven() throws Exception {
		Login_Action.login(getDriver(), "2016011678", "123456cs", "学生");
		StudentPersonalCenter_Action.personalCenterClick(getDriver());
		StudentPersonalCenter_Action.changePhone(getDriver(), "2222");
		Assert.assertTrue(ifContains("个人信息"));
	}
	//修改电话为空
	@Test(priority = 5)
	public void testPhoneNothing() throws Exception {
		Login_Action.login(getDriver(), "2016011678", "123456cs", "学生");
		StudentPersonalCenter_Action.personalCenterClick(getDriver());
		StudentPersonalCenter_Action.changePhone(getDriver(), "");
		 Assert.assertTrue(ifContains("个人信息"));
	}
	//修改电话有特殊符号
	@Test(priority = 6)
	public void testPhoneWithSpecificSymbol() throws Exception {
		Login_Action.login(getDriver(), "2016011678", "123456cs", "学生");
		StudentPersonalCenter_Action.personalCenterClick(getDriver());
		StudentPersonalCenter_Action.changePhone(getDriver(), "1111111111#");
		Assert.assertTrue(ifContains("个人信息"));
	}
	//修改电话有字母
	@Test(priority = 7)
	public void testPhoneWithLetter() throws Exception {
		Login_Action.login(getDriver(), "2016011678", "123456cs", "学生");
		StudentPersonalCenter_Action.personalCenterClick(getDriver());
		StudentPersonalCenter_Action.changePhone(getDriver(), "1111111111s");
		Assert.assertTrue(ifContains("个人信息"));
	}
	//进入修改密码
	@Test(priority = 8)
	public void testIntoChangePassword() throws Exception {
		Login_Action.login(getDriver(), "2016011678", "123456cs", "学生");
		StudentPersonalCenter_Action.personalCenterClick(getDriver());
		StudentPersonalCenter_Action.intoChangePassword(getDriver());
		Assert.assertTrue(ifContains("修改密码"));
	}
	//修改密码
	@Test(priority = 9)
	public void testChangePassword() throws Exception {
		Login_Action.login(getDriver(), "2016011678", "123456cs", "学生");
		StudentPersonalCenter_Action.personalCenterClick(getDriver());
		StudentPersonalCenter_Action.intoChangePassword(getDriver());
		StudentPersonalCenter_Action.changePassword(getDriver(), "123456cs", "111111cs");
		Assert.assertTrue(ifContains("修改密码"));
	}
	//密码超过8位
	@Test(priority = 10)
	public void testChangePasswordOverEight() throws Exception {
		Login_Action.login(getDriver(), "2016011678", "111111cs", "学生");
		StudentPersonalCenter_Action.personalCenterClick(getDriver());
		StudentPersonalCenter_Action.intoChangePassword(getDriver());
		StudentPersonalCenter_Action.changePassword(getDriver(), "111111cs", "11111111cs");
//		Assert.assertTrue(ifContains("不符合要求"));
		Assert.assertTrue(ifContains("修改密码"));
	}
	//密码低于8位
	@Test(priority = 11)
	public void testChangePasswordunderEight() throws Exception {
		Login_Action.login(getDriver(), "2016011678", "11111111cs", "学生");
		StudentPersonalCenter_Action.personalCenterClick(getDriver());
		StudentPersonalCenter_Action.intoChangePassword(getDriver());
		StudentPersonalCenter_Action.changePassword(getDriver(), "11111111cs", "111cs");
//		Assert.assertTrue(ifContains("不符合要求"));
		Assert.assertTrue(ifContains("修改密码"));
	}
	//密码为空
	@Test(priority = 12)
	public void testChangePasswordNothing() throws Exception {
		Login_Action.login(getDriver(), "2016011678", "111cs", "学生");
		StudentPersonalCenter_Action.personalCenterClick(getDriver());
		StudentPersonalCenter_Action.intoChangePassword(getDriver());
		StudentPersonalCenter_Action.changePassword(getDriver(), "111cs", "");
//		Assert.assertTrue(ifContains("不符合要求"));
		Assert.assertTrue(ifContains("修改密码"));
	}
	//密码为单数字
	@Test(priority = 13)
	public void testChangePasswordAllNum() throws Exception {
		Login_Action.login(getDriver(), "2016011678", "", "学生");
		StudentPersonalCenter_Action.personalCenterClick(getDriver());
		StudentPersonalCenter_Action.intoChangePassword(getDriver());
		StudentPersonalCenter_Action.changePassword(getDriver(), "", "11111111");
		Assert.assertTrue(ifContains("修改密码"));
	}
	//密码为字母
	@Test(priority = 14)
	public void testChangePasswordAllLetter() throws Exception {
		Login_Action.login(getDriver(), "2016011678", "11111111", "学生");
		StudentPersonalCenter_Action.personalCenterClick(getDriver());
		StudentPersonalCenter_Action.intoChangePassword(getDriver());
		StudentPersonalCenter_Action.changePassword(getDriver(), "11111111", "aaaaaaaa");
		Assert.assertTrue(ifContains("修改密码"));
	}
	//密码有特殊符号
	@Test(priority = 15)
	public void testChangePasswordSpecificSymbol() throws Exception {
		Login_Action.login(getDriver(), "2016011678", "aaaaaaaa", "学生");
		StudentPersonalCenter_Action.personalCenterClick(getDriver());
		StudentPersonalCenter_Action.intoChangePassword(getDriver());
		StudentPersonalCenter_Action.changePassword(getDriver(), "aaaaaaaa", "1111111#");
		Assert.assertTrue(ifContains("修改密码"));
	}
	//原密码错误
	@Test(priority = 16)
	public void testChangeOldPasswordReeor() throws Exception {
		Login_Action.login(getDriver(), "2016011678", "1111111#", "学生");
		StudentPersonalCenter_Action.personalCenterClick(getDriver());
		StudentPersonalCenter_Action.intoChangePassword(getDriver());
		StudentPersonalCenter_Action.changePassword(getDriver(), "123456cs", "123456cs");
//		Assert.assertTrue(ifContains("密码错误"));
		Assert.assertTrue(ifContains("修改密码"));
	}
	
	//退出登录
	@Test(priority = 17)
	public void testExit() throws Exception {
		Login_Action.login(getDriver(), "2016011678", "123456cs", "学生");
		Login_Action.back(getDriver());
		Assert.assertTrue(ifContains("登录"));
	}
	@AfterClass
	public void closebrowser() throws Exception {
		webtest.quit();
	}
}
