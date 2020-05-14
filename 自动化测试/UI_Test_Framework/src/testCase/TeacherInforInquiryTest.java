package testCase;

import org.openqa.selenium.By;
import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Listeners;
import org.testng.annotations.Test;

import appModules.ChangeClass_Action;
import appModules.Login_Action;
import appModules.TeacherInforInquiry_Action;
import core.BaseTest;
import core.WebTestListener;
//@Listeners(WebTestListener.class)
public class TeacherInforInquiryTest extends BaseTest{
	public TeacherInforInquiryTest(String type) throws Exception  {
		super("firefox");
		// TODO Auto-generated constructor stub
	}
	String url = "http://localhost:8080/educationalsystem/preIndex";
//	String url = "http://localhost:8080/educationalsystemstudent/login.jsp";
	@BeforeMethod
	public void openbrowser() throws Exception {
		webtest.open(url);
//		Login_Action.login(getDriver(), "1", "12345", "教师");
	}
	//切换到信息查询-我的课程界面
	@Test
	public void testInforInquiry() throws Exception {
		TeacherInforInquiry_Action.InforInquiryClick(getDriver());
		TeacherInforInquiry_Action.MyCourseClick(getDriver());
		Assert.assertTrue(ifContains("课程名称"));
	}
	//查询我的课程安排
	@Test
	public void testMycourse() throws Exception {
		TeacherInforInquiry_Action.InforInquiryClick(getDriver());
		TeacherInforInquiry_Action.MyCourseClick(getDriver());
		TeacherInforInquiry_Action.selectYear(getDriver(), 10);
		TeacherInforInquiry_Action.selectTerm(getDriver(), 1);
		Assert.assertTrue(ifContains("课程名称"));
	}
	//查询学生名单安排
	@Test
	public void testListOfStudent() throws Exception {
		TeacherInforInquiry_Action.InforInquiryClick(getDriver());
		TeacherInforInquiry_Action.getListOfStudentClick(getDriver());
		TeacherInforInquiry_Action.selectYear(getDriver(), 10);
		TeacherInforInquiry_Action.selectTerm(getDriver(), 1);
		TeacherInforInquiry_Action.selectTCourse(getDriver(), 1);
		TeacherInforInquiry_Action.studentSearchButton(getDriver());
		Assert.assertTrue(ifContains("课程名称"));
	}
	//信息查询-学生名单-查看学生
	@Test
	public void testViewStudent() throws Exception {
		TeacherInforInquiry_Action.InforInquiryClick(getDriver());
		TeacherInforInquiry_Action.getListOfStudentClick(getDriver());
		TeacherInforInquiry_Action.viewStudent(getDriver(), 1);
		Assert.assertTrue(ifContains("学号"));
	}
	//查看我的教学班
	@Test
	public void testCheckMyTeachingClass() throws Exception {
		TeacherInforInquiry_Action.InforInquiryClick(getDriver());
		TeacherInforInquiry_Action.myTeachingClassClick(getDriver());
		Assert.assertTrue(ifContains("考试性质"));
	}
	//点击下一页-我的教学班
	@Test
	public void testMyTeachingClassNext() throws Exception {
		TeacherInforInquiry_Action.InforInquiryClick(getDriver());
		TeacherInforInquiry_Action.myTeachingClassClick(getDriver());
		TeacherInforInquiry_Action.clickNextPage(getDriver());
		Assert.assertTrue(ifContains("考试性质"));
	}
	@Test
	public void test() throws Exception {
		driver.findElement(By.linkText("信息查询")).click();
		driver.findElement(By.linkText("我的教学班")).click();
		driver.findElement(By.id("pagingEnd")).click();
		Assert.assertTrue(ifContains("课程名称"));
	}
	@AfterClass
	public void closebrowser() throws Exception {
		webtest.quit();
	}

}
