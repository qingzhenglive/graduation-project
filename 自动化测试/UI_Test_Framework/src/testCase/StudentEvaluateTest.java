package testCase;

import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Listeners;
import org.testng.annotations.Test;

import appModules.Login_Action;
import appModules.StudentEnquiryClassroom_Action;
import appModules.StudentEvaluate_Action;
import core.BaseTest;
import core.WebTestListener;

@Listeners(WebTestListener.class)
public class StudentEvaluateTest extends BaseTest{
	public StudentEvaluateTest(String type) throws Exception  {
		super("firefox");
		// TODO Auto-generated constructor stub
	}
	String url = "http://localhost:8080/educationalsystemstudent/login.jsp";
	@BeforeMethod
	public void openbrowser() throws Exception {
		webtest.open(url);
		Login_Action.login(getDriver(), "2016011678", "123456cs", "学生");
	}
	//点击评价
	@Test
	public void testEvaluate() throws Exception {
		StudentEvaluate_Action.evaluate(getDriver());
		 Assert.assertTrue(ifContains("任课教师"));
	}
	//王晓老师评分
	@Test
	public void testEvaluateTeacher() throws Exception {
		StudentEvaluate_Action.evaluate(getDriver());
		StudentEvaluate_Action.selectTeacher(getDriver(), "王晓");
		StudentEvaluate_Action.enterScore1(getDriver(), "9");
		StudentEvaluate_Action.enterScore2(getDriver(), "9");
		StudentEvaluate_Action.enterScore3(getDriver(), "9");
		StudentEvaluate_Action.enterScore4(getDriver(), "9");
		StudentEvaluate_Action.enterScore5(getDriver(), "9");
		StudentEvaluate_Action.enterScore6(getDriver(), "9");
		StudentEvaluate_Action.enterScore7(getDriver(), "9");
		StudentEvaluate_Action.enterScore8(getDriver(), "9");
		StudentEvaluate_Action.enterScore9(getDriver(), "9");
		StudentEvaluate_Action.enterScore10(getDriver(), "9");
		StudentEvaluate_Action.saveBtnClick(getDriver());
		 Assert.assertTrue(ifContains("任课教师"));
	}
	//老师评分不评完
	@Test
	public void testEvaluateTeacherRestOne() throws Exception {
		StudentEvaluate_Action.evaluate(getDriver());
		StudentEvaluate_Action.selectTeacher(getDriver(), "王晓");
		StudentEvaluate_Action.enterScore1(getDriver(), "9");
		StudentEvaluate_Action.enterScore2(getDriver(), "9");
		StudentEvaluate_Action.enterScore3(getDriver(), "9");
		StudentEvaluate_Action.enterScore4(getDriver(), "9");
		StudentEvaluate_Action.enterScore5(getDriver(), "9");
		StudentEvaluate_Action.enterScore6(getDriver(), "9");
		StudentEvaluate_Action.enterScore7(getDriver(), "9");
		StudentEvaluate_Action.enterScore8(getDriver(), "9");
		StudentEvaluate_Action.enterScore9(getDriver(), "9");
		StudentEvaluate_Action.saveBtnClick(getDriver());
		 Assert.assertTrue(ifContains("错误的请求"));
	}
	//老师评分评一个
	@Test
	public void testEvaluateTeacherJustOne() throws Exception {
		StudentEvaluate_Action.evaluate(getDriver());
		StudentEvaluate_Action.selectTeacher(getDriver(), "王晓");
		StudentEvaluate_Action.enterScore1(getDriver(), "9");
		StudentEvaluate_Action.saveBtnClick(getDriver());
		 Assert.assertTrue(ifContains("错误的请求"));
	}
	//老师评分全10分
	@Test
	public void testEvaluateTeacherAllTen() throws Exception {
		StudentEvaluate_Action.evaluate(getDriver());
		StudentEvaluate_Action.selectTeacher(getDriver(), "王晓");
		StudentEvaluate_Action.enterScore1(getDriver(), "10");
		StudentEvaluate_Action.enterScore2(getDriver(), "10");
		StudentEvaluate_Action.enterScore3(getDriver(), "10");
		StudentEvaluate_Action.enterScore4(getDriver(), "10");
		StudentEvaluate_Action.enterScore5(getDriver(), "10");
		StudentEvaluate_Action.enterScore6(getDriver(), "10");
		StudentEvaluate_Action.enterScore7(getDriver(), "10");
		StudentEvaluate_Action.enterScore8(getDriver(), "10");
		StudentEvaluate_Action.enterScore9(getDriver(), "10");
		StudentEvaluate_Action.enterScore10(getDriver(), "10");
		StudentEvaluate_Action.saveBtnClick(getDriver());
		Assert.assertTrue(ifContains("任课教师"));
//		 Assert.assertTrue(ifContains("错误的请求"));
		}
	//老师评分全0分
	@Test
	public void testEvaluateTeacherAllZero() throws Exception {
		StudentEvaluate_Action.evaluate(getDriver());
		StudentEvaluate_Action.selectTeacher(getDriver(), "王晓");
		StudentEvaluate_Action.enterScore1(getDriver(), "0");
		StudentEvaluate_Action.enterScore2(getDriver(), "0");
		StudentEvaluate_Action.enterScore3(getDriver(), "0");
		StudentEvaluate_Action.enterScore4(getDriver(), "0");
		StudentEvaluate_Action.enterScore5(getDriver(), "0");
		StudentEvaluate_Action.enterScore6(getDriver(), "0");
		StudentEvaluate_Action.enterScore7(getDriver(), "0");
		StudentEvaluate_Action.enterScore8(getDriver(), "0");
		StudentEvaluate_Action.enterScore9(getDriver(), "0");
		StudentEvaluate_Action.enterScore10(getDriver(), "0");
		StudentEvaluate_Action.saveBtnClick(getDriver());
		Assert.assertTrue(ifContains("任课教师"));
//		 Assert.assertTrue(ifContains("错误的请求"));
			}
	//老师评分有字母
	@Test
	public void testEvaluateTeacherWithLetter() throws Exception {
		StudentEvaluate_Action.evaluate(getDriver());
		StudentEvaluate_Action.selectTeacher(getDriver(), "王晓");
		StudentEvaluate_Action.enterScore1(getDriver(), "9");
		StudentEvaluate_Action.enterScore2(getDriver(), "9");
		StudentEvaluate_Action.enterScore3(getDriver(), "9");
		StudentEvaluate_Action.enterScore4(getDriver(), "ss");
		StudentEvaluate_Action.enterScore5(getDriver(), "9");
		StudentEvaluate_Action.enterScore6(getDriver(), "9");
		StudentEvaluate_Action.enterScore7(getDriver(), "9");
		StudentEvaluate_Action.enterScore8(getDriver(), "9");
		StudentEvaluate_Action.enterScore9(getDriver(), "9");
		StudentEvaluate_Action.enterScore10(getDriver(), "9");
		StudentEvaluate_Action.saveBtnClick(getDriver());
		 Assert.assertTrue(ifContains("错误的请求"));
		}
	//老师评分有特殊符号
		@Test
		public void testEvaluateTeacherWithSpecificSymbol() throws Exception {
			StudentEvaluate_Action.evaluate(getDriver());
			StudentEvaluate_Action.selectTeacher(getDriver(), "王晓");
			StudentEvaluate_Action.enterScore1(getDriver(), "9");
			StudentEvaluate_Action.enterScore2(getDriver(), "9");
			StudentEvaluate_Action.enterScore3(getDriver(), "9");
			StudentEvaluate_Action.enterScore4(getDriver(), "#");
			StudentEvaluate_Action.enterScore5(getDriver(), "9");
			StudentEvaluate_Action.enterScore6(getDriver(), "9");
			StudentEvaluate_Action.enterScore7(getDriver(), "9");
			StudentEvaluate_Action.enterScore8(getDriver(), "9");
			StudentEvaluate_Action.enterScore9(getDriver(), "9");
			StudentEvaluate_Action.enterScore10(getDriver(), "9");
			StudentEvaluate_Action.saveBtnClick(getDriver());
			Assert.assertTrue(ifContains("错误的请求"));
			}
	
		@AfterClass
		public void closebrowser() throws Exception {
			webtest.quit();
		}
}
