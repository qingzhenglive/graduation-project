package testCase;

import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Listeners;
import org.testng.annotations.Test;

import appModules.Login_Action;
import appModules.StudentQuerySchedule_Action;
import core.BaseTest;
import core.WebTestListener;

@Listeners(WebTestListener.class)
public class StudentQueryScheduleTest extends BaseTest{
	public StudentQueryScheduleTest(String type) throws Exception  {
		super("firefox");
		// TODO Auto-generated constructor stub
	}
	String url = "http://localhost:8080/educationalsystemstudent/login.jsp";
	@BeforeMethod
	public void openbrowser() throws Exception {
		webtest.open(url);
		Login_Action.login(getDriver(), "2016011678", "123456cs", "学生");
	}
	//点击课表查询
	@Test
	public void testQuerySchedule() throws Exception {
		StudentQuerySchedule_Action.chooseCourseClick(getDriver());
		 Assert.assertTrue(ifContains("时间"));
	}
	//查询课表2016-2017 2  2
	@Test
	public void testQueryScheduleAll() throws Exception {
		StudentQuerySchedule_Action.chooseCourseClick(getDriver());
		StudentQuerySchedule_Action.selectYear(getDriver(), "2016-2017");
		StudentQuerySchedule_Action.selectTerm(getDriver(), "2");
		StudentQuerySchedule_Action.selectWeek(getDriver(), "2");
		StudentQuerySchedule_Action.searchButton(getDriver());
		 Assert.assertTrue(ifContains("时间"));
	}
	//pdf输出
	@Test
	public void testPDF() throws Exception {
		StudentQuerySchedule_Action.chooseCourseClick(getDriver());
		StudentQuerySchedule_Action.PDFClick(getDriver());
		// Assert.assertTrue(ifContains("时间"));
	}
	@AfterClass
	public void closebrowser() throws Exception {
		webtest.quit();
	}

}
