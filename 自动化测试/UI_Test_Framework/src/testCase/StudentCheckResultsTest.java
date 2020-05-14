package testCase;

import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Listeners;
import org.testng.annotations.Test;

import appModules.Login_Action;
import appModules.StudentCheckResults_Action;
import appModules.StudentQuerySchedule_Action;
import core.BaseTest;
import core.WebTestListener;

@Listeners(WebTestListener.class)
public class StudentCheckResultsTest extends BaseTest{
	public StudentCheckResultsTest(String type) throws Exception  {
		super("firefox");
		// TODO Auto-generated constructor stub
	}
	String url = "http://localhost:8080/educationalsystemstudent/login.jsp";
	@BeforeMethod
	public void openbrowser() throws Exception {
		webtest.open(url);
		Login_Action.login(getDriver(), "2016011678", "123456cs", "学生");
	}
	//点击成绩查询
	@Test
	public void testCheckResults() throws Exception {
		StudentCheckResults_Action.checkResultsClick(getDriver());
		 Assert.assertTrue(ifContains("成绩"));
	}
	//查询成绩2016-2017 2  
	@Test
	public void testQueryScheduleAll() throws Exception {
		StudentCheckResults_Action.checkResultsClick(getDriver());
		StudentCheckResults_Action.selectYear(getDriver(), "2016-2017");
		StudentCheckResults_Action.selectTerm(getDriver(), "2");
		StudentCheckResults_Action.searchButton(getDriver());
		 Assert.assertTrue(ifContains("成绩"));
	}
	//pdf输出
	@Test
	public void testPDF() throws Exception {
		StudentCheckResults_Action.checkResultsClick(getDriver());
		StudentCheckResults_Action.PDFClick(getDriver());
		// Assert.assertTrue(ifContains("时间"));
	}
	@AfterClass
	public void closebrowser() throws Exception {
		webtest.quit();
	}

}
