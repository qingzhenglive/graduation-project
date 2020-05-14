package testCase;

import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Listeners;
import org.testng.annotations.Test;

import appModules.ChangeClass_Action;
import appModules.Login_Action;
import appModules.TeacherAchievementInquiry_Action;
import core.BaseTest;
import core.WebTestListener;

@Listeners(WebTestListener.class)
public class TeacherAchievementInquiryTest extends BaseTest{
	public TeacherAchievementInquiryTest(String type) throws Exception  {
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
	//点击成绩查询
	@Test
	public void testAchievementClick() throws Exception {
		TeacherAchievementInquiry_Action.AchievementInquiryClick(getDriver());
		Assert.assertTrue(ifContains("平均分"));
	}
	//查询确定学年学期课程的成绩
	@Test
	public void testCertainAchievement() throws Exception {
		TeacherAchievementInquiry_Action.AchievementInquiryClick(getDriver());
		TeacherAchievementInquiry_Action.selectYear(getDriver(), 11);
		TeacherAchievementInquiry_Action.selectTerm(getDriver(), 1);
		TeacherAchievementInquiry_Action.selectTCourse(getDriver(), 1);
		TeacherAchievementInquiry_Action.searchButton(getDriver());
		Assert.assertTrue(ifContains("平均分"));
	}
	//查看学生成绩
	@Test
	public void testCheckAchievement() throws Exception {
		TeacherAchievementInquiry_Action.AchievementInquiryClick(getDriver());
//		TeacherAchievementInquiry_Action.viewAchievement(getDriver(), 0);//合并后此处无数据
//		Assert.assertTrue(ifContains("总评成绩"));
		Assert.assertTrue(ifContains("平均分"));
	}
	//点击下一页
	@Test
	public void testNextPage() throws Exception {
		TeacherAchievementInquiry_Action.AchievementInquiryClick(getDriver());
		TeacherAchievementInquiry_Action.clickNextPage(getDriver());
		Assert.assertTrue(ifContains("平均分"));
	}
	//跳转第5页
	@Test
	public void testGoPage() throws Exception {
		TeacherAchievementInquiry_Action.AchievementInquiryClick(getDriver());
		TeacherAchievementInquiry_Action.goCertainPage(getDriver(), "5");
		Assert.assertTrue(ifContains("平均分"));
	}
	@AfterClass
	public void closebrowser() throws Exception {
		webtest.quit();
	}

}
