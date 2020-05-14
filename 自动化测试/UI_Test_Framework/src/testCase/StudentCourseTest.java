package testCase;

import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Listeners;
import org.testng.annotations.Test;

import appModules.GraudatePracticeSquare_Action;
import appModules.Login_Action;
import appModules.StudentCourse_Action;
import core.BaseTest;
import core.WebTestListener;

@Listeners(WebTestListener.class)
public class StudentCourseTest extends BaseTest{
	public StudentCourseTest(String type) throws Exception  {
		super("firefox");
		// TODO Auto-generated constructor stub
	}
	String url = "http://localhost:8080/educationalsystemstudent/login.jsp";
	@BeforeMethod
	public void openbrowser() throws Exception {
		webtest.open(url);
	}
	//登录
	@Test
	public void testLogin() throws Exception {
		 Login_Action.login(getDriver(), "2016011678", "123456cs", "学生");
		 Assert.assertTrue(ifContains("欢迎"));
	}
	//进入选课页面
	@Test
	public void testIntoChooseCourse() throws Exception {
		 Login_Action.login(getDriver(), "2016011678", "123456cs", "学生");
		 StudentCourse_Action.chooseCourseClick(getDriver());
		 Assert.assertTrue(ifContains("欢迎"));
	}
	//查看可选课程
	@Test
	public void testEnableCourse() throws Exception {
		 Login_Action.login(getDriver(), "2016011678", "123456cs", "学生");
		 StudentCourse_Action.chooseCourseClick(getDriver());
		 StudentCourse_Action.enableCourseClick(getDriver());
		 Assert.assertTrue(ifContains("欢迎"));
	}
	//查看已选课程
	@Test
	public void testSelectedCourse() throws Exception {
			Login_Action.login(getDriver(), "2016011678", "123456cs", "学生");
			StudentCourse_Action.chooseCourseClick(getDriver());
			StudentCourse_Action.selectedCourseClick(getDriver());
			Assert.assertTrue(ifContains("欢迎"));
	}
	//查看下一页
		@Test
		public void testNextPage() throws Exception {
			Login_Action.login(getDriver(), "2016011678", "123456cs", "学生");
			StudentCourse_Action.chooseCourseClick(getDriver());
			StudentCourse_Action.pageClick(getDriver(), 0);
			//Assert.assertTrue(ifContains("欢迎"));
	}
	//直接提交
		@Test
		public void testSubmitDirectly() throws Exception {
			Login_Action.login(getDriver(), "2016011678", "123456cs", "学生");
			StudentCourse_Action.chooseCourseClick(getDriver());
			StudentCourse_Action.submitBtnClick(getDriver());
			//Assert.assertTrue(ifContains("欢迎"));
	}
		@AfterClass
		public void closebrowser() throws Exception {
			webtest.quit();
		}

}
