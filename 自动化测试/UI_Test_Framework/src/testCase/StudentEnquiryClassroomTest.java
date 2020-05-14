package testCase;

import org.openqa.selenium.By;
import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Listeners;
import org.testng.annotations.Test;

import appModules.Login_Action;
import appModules.StudentEnquiryClassroom_Action;
import appModules.StudentCheckResults_Action;
import core.BaseTest;
import core.WebTestListener;

@Listeners(WebTestListener.class)
public class StudentEnquiryClassroomTest extends BaseTest{
	public StudentEnquiryClassroomTest(String type) throws Exception  {
		super("firefox");
		// TODO Auto-generated constructor stub
	}
	String url = "http://localhost:8080/educationalsystemstudent/login.jsp";
	@BeforeMethod
	public void openbrowser() throws Exception {
		webtest.open(url);
		Login_Action.login(getDriver(), "2016011678", "123456cs", "学生");
	}
	//点击空闲教室查询
	@Test
	public void testEnquiryClassroom() throws Exception {
		StudentEnquiryClassroom_Action.enquiryClassroomClick(getDriver());
		 Assert.assertTrue(ifContains("空闲教室查询"));
	}
	//空闲教室查询
	@Test
	public void testEnquiryClassroomAll() throws Exception {
		StudentEnquiryClassroom_Action.enquiryClassroomClick(getDriver());
		StudentEnquiryClassroom_Action.selectWeek(getDriver(), "2");
		StudentEnquiryClassroom_Action.selectWeekDay(getDriver(), "星期一");
		StudentEnquiryClassroom_Action.selectWTime(getDriver(), "8:00-9:30");
		StudentEnquiryClassroom_Action.searchButton(getDriver());
		 Assert.assertTrue(ifContains("教室名称"));
	}
	//空闲教室查询不选择
	@Test
	public void testEnquiryClassroomWithoutNothing() throws Exception {
		StudentEnquiryClassroom_Action.enquiryClassroomClick(getDriver());
		StudentEnquiryClassroom_Action.searchButton(getDriver());
		 //Assert.assertTrue(ifContains("空闲教室查询"));
	}
	//空闲教室查询-不选周次
	@Test
	public void testEnquiryClassroomWithoutWeek() throws Exception {
		StudentEnquiryClassroom_Action.enquiryClassroomClick(getDriver());
		StudentEnquiryClassroom_Action.selectWeekDay(getDriver(), "星期一");
		StudentEnquiryClassroom_Action.selectWTime(getDriver(), "8:00-9:30");
		StudentEnquiryClassroom_Action.searchButton(getDriver());
		 //Assert.assertTrue(ifContains("空闲教室查询"));
	}
	//空闲教室查询-不选星期
	@Test
	public void testEnquiryClassroomWithoutWeekday() throws Exception {
		StudentEnquiryClassroom_Action.enquiryClassroomClick(getDriver());
		StudentEnquiryClassroom_Action.selectWeek(getDriver(), "2");
		StudentEnquiryClassroom_Action.selectWTime(getDriver(), "8:00-9:30");
		StudentEnquiryClassroom_Action.searchButton(getDriver());
//			Assert.assertTrue(ifContains("空闲教室查询"));
	}
	//空闲教室查询-不选时间
	@Test
	public void testEnquiryClassroomWithoutTime() throws Exception {
		StudentEnquiryClassroom_Action.enquiryClassroomClick(getDriver());
		StudentEnquiryClassroom_Action.selectWeek(getDriver(), "2");
		StudentEnquiryClassroom_Action.selectWeekDay(getDriver(), "星期一");
		StudentEnquiryClassroom_Action.searchButton(getDriver());
		// Assert.assertTrue(ifContains("空闲教室查询"));
	}
	//pdf
		@Test
		public void testPDF() throws Exception {
			StudentEnquiryClassroom_Action.enquiryClassroomClick(getDriver());
			StudentEnquiryClassroom_Action.PDFClick(getDriver());
		}
		
//	@Test
//	public void test() {
//		driver.findElement(By.linkText("查询空闲教室")).click();
//		driver.findElement(By.xpath("//input[@value='8:00-9:30'and @class='sunday']")).click();
//		driver.findElement(By.xpath("//input[@value='9:45-12:10'and @class='sunday']")).click();
//	}
		@AfterClass
		public void closebrowser() throws Exception {
			webtest.quit();
		}
}
