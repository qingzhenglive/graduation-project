package testCase;

import org.openqa.selenium.By;
import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Listeners;
import org.testng.annotations.Test;

import appModules.ChangeClass_Action;
import appModules.Login_Action;
import core.BaseTest;
import core.WebTestListener;
@Listeners(WebTestListener.class)
public class ChangeClassTest extends BaseTest{

	public ChangeClassTest(String type) throws Exception  {
		super("firefox");
		// TODO Auto-generated constructor stub
	}
	String url = "http://localhost:8080/educationalsystem/preIndex";
//	String url = "http://localhost:8080/educationalsystemstudent/login.jsp";
	@BeforeMethod
	public void openbrowser() throws Exception {
		webtest.open(url);
//		 Login_Action.login(getDriver(), "1", "12345", "教师");
	}
	
	//切换到调课申请界面
	@Test
	public void testWeek() throws Exception {
		ChangeClass_Action.changeClassLink(getDriver());
		Assert.assertTrue(ifContains("星期"));
	}
	//查询课程
		@Test
		public void testClass() throws Exception {
			ChangeClass_Action.changeClassLink(getDriver());
			ChangeClass_Action.selectWeek(getDriver(),2);
			ChangeClass_Action.searchButton(getDriver());
		}
	//调课申请
		@Test
		public void testSubmit() throws Exception {
			ChangeClass_Action.changeClassLink(getDriver());
			ChangeClass_Action.application(getDriver(), 1, 0, "时间不方便");
			Assert.assertTrue(ifContains("基本信息"));
		}
		//调课申请-调课时间
		@Test
		public void testTimeChange() throws Exception {
			ChangeClass_Action.changeClassLink(getDriver());
			ChangeClass_Action.application(getDriver(), 1, 0,1,0, "时间段不方便");
			Assert.assertTrue(ifContains("基本信息"));
		}
		//调课申请调课教室
		@Test
		public void testRoomChange() throws Exception {
			ChangeClass_Action.changeClassLink(getDriver());
			ChangeClass_Action.application(getDriver(), 1, 0,1,1, "教室不方便");
			Assert.assertTrue(ifContains("基本信息"));
		}
		//调课申请没有调换
		@Test
		public void testNoneChange() throws Exception {
			ChangeClass_Action.changeClassLink(getDriver());
			ChangeClass_Action.application(getDriver(), 1, 0, 1,1,"不调换");
			Assert.assertTrue(ifContains("基本信息"));
		}
		//调课申请全部调换
		@Test
		public void testAllChange() throws Exception {
			ChangeClass_Action.changeClassLink(getDriver());
			ChangeClass_Action.application(getDriver(), 1, 1,2,2, "星期、时间、教室都不方便");
			Assert.assertTrue(ifContains("基本信息"));
		}
		@Test
		//点击下一页
		public void testNextPage() throws Exception {
			ChangeClass_Action.changeClassLink(getDriver());
			ChangeClass_Action.clickNextPage(getDriver());
			Assert.assertTrue(ifContains("计算机导论"));
		}
//		@Test
//		public void test() throws Exception {
////			String url = "http://localhost:8080/educationalsystem/preIndex";
////			webtest.open(url);
//			driver.findElement(By.linkText("调课申请")).click();
////			driver.findElements(By.linkText("调课申请")).get(1).click();
////			//driver.findElement(By.id("reason")).sendKeys("1111111111");
////			driver.findElement(By.id("submit")).click();
//			driver.findElement(By.id("pagingEnd")).click();
//		}
//		
		@AfterClass
		public void closebrowser() throws Exception {
			webtest.quit();
		}
		
			
}
