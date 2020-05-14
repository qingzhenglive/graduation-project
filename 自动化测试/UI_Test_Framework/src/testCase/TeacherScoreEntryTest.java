package testCase;

import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Listeners;
import org.testng.annotations.Test;

import appModules.TeacherAchievementInquiry_Action;
import appModules.TeacherInforInquiry_Action;
import appModules.TeacherScoreEntry_Action;
import core.BaseTest;
import core.WebTestListener;

@Listeners(WebTestListener.class)
public class TeacherScoreEntryTest extends BaseTest{
	public TeacherScoreEntryTest(String type) throws Exception  {
		super("firefox");
		// TODO Auto-generated constructor stub
	}
	String url = "http://localhost:8080/educationalsystem/preIndex";
	@BeforeMethod
	public void openbrowser() throws Exception {
		webtest.open(url);
	}
	//进入概览页面
	@Test
	public void testOverview() throws Exception {
		TeacherScoreEntry_Action.scoreEntryClick(getDriver());
		TeacherScoreEntry_Action.overviewClick(getDriver());
		Assert.assertTrue(ifContains("录入状态"));
	}
	//进入课程比例页面
	@Test
	public void testProportion() throws Exception {
		TeacherScoreEntry_Action.scoreEntryClick(getDriver());
		TeacherScoreEntry_Action.proportionClick(getDriver());
		Assert.assertTrue(ifContains("期末"));
	}
	//进入录入成绩页面
	@Test
	public void testScorePage() throws Exception {
		TeacherScoreEntry_Action.scoreEntryClick(getDriver());
		TeacherScoreEntry_Action.overviewClick(getDriver());
		TeacherScoreEntry_Action.ScoreClick(getDriver(),0);
		Assert.assertTrue(ifContains("姓名"));
	}
	//录入成绩
	@Test
	public void testScore() throws Exception {
		TeacherScoreEntry_Action.scoreEntryClick(getDriver());
		TeacherScoreEntry_Action.overviewClick(getDriver());
		TeacherScoreEntry_Action.ScoreClick(getDriver(),0);
		TeacherScoreEntry_Action.InputScore(getDriver(), "65", "95", "64", "73", "正常考试");
		//Assert.assertTrue(ifContains("录入成绩"));
	}
	//查询我的教学班安排
	@Test
	public void testMycourse() throws Exception {
		TeacherScoreEntry_Action.scoreEntryClick(getDriver());
		TeacherScoreEntry_Action.overviewClick(getDriver());
		TeacherScoreEntry_Action.selectYear(getDriver(), 1);
		TeacherScoreEntry_Action.selectTerm(getDriver(), 1);
		TeacherScoreEntry_Action.selectTCourse(getDriver(), 1);
		TeacherScoreEntry_Action.searchButton(getDriver());
		Assert.assertTrue(ifContains("课程名称"));
	}
	//点击下一页
	@Test
	public void testNextPage() throws Exception {
		TeacherScoreEntry_Action.scoreEntryClick(getDriver());
		TeacherScoreEntry_Action.overviewClick(getDriver());
		TeacherScoreEntry_Action.clickNextPage(getDriver());
		Assert.assertTrue(ifContains("录入状态"));
	}
	//跳转第2页
	@Test
	public void testGoPage() throws Exception {
		TeacherScoreEntry_Action.scoreEntryClick(getDriver());
		TeacherScoreEntry_Action.overviewClick(getDriver());
		TeacherScoreEntry_Action.goCertainPage(getDriver(), "2");
		Assert.assertTrue(ifContains("录入状态"));
	}
	//进入课程比例页面
	@Test
	public void testCourseProportion() throws Exception {
		TeacherScoreEntry_Action.scoreEntryClick(getDriver());
		TeacherScoreEntry_Action.proportionClick(getDriver());
		TeacherScoreEntry_Action.inputCourseProportion(getDriver(), "20", "30", "10", "15", "25");
		Assert.assertTrue(ifContains("课程名称"));
	}
	@AfterClass
	public void closebrowser() throws Exception {
		webtest.quit();
	}

}
