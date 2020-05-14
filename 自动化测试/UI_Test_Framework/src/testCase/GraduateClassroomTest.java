package testCase;

import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Listeners;
import org.testng.annotations.Test;

import appModules.GraduateClassroom_Action;
import appModules.GraduateSituation_Action;
import core.BaseTest;
import core.WebTestListener;

@Listeners(WebTestListener.class)
public class GraduateClassroomTest extends BaseTest{
	public GraduateClassroomTest(String type) throws Exception  {
		super("firefox");
		// TODO Auto-generated constructor stub
	}
	String url = "http://localhost:8080/%E6%95%99%E5%8A%A1/getRecruitByPage?currentPage=1";
	@BeforeMethod
	public void openbrowser() throws Exception {
		webtest.open(url);
	}
	//进入学长学姐课堂
	@Test
	public void testGraduateClassroom() throws Exception {
		GraduateClassroom_Action.graduateClassroomClick(getDriver());
		Assert.assertTrue(ifContains("去观看"));
	}
	//观看视频
	@Test
	public void testGoWtch() throws Exception {
		GraduateClassroom_Action.graduateClassroomClick(getDriver());
		GraduateClassroom_Action.goWatchClick(getDriver(), 0);
		Assert.assertTrue(ifContains("评论"));
	}
	//暂停视频
	@Test
	public void testVideoStop() throws Exception {
		GraduateClassroom_Action.graduateClassroomClick(getDriver());
		GraduateClassroom_Action.goWatchClick(getDriver(), 0);
		GraduateClassroom_Action.VideoClick(getDriver());
	}
	//发表评论
	@Test
	public void testComment() throws Exception {
		GraduateClassroom_Action.graduateClassroomClick(getDriver());
		GraduateClassroom_Action.goWatchClick(getDriver(), 0);
		GraduateClassroom_Action.WriteComment(getDriver(), "评论");
		Assert.assertTrue(ifContains("评论"));
	}
	//查看评论
	@Test
	public void testReadComment() throws Exception {
		GraduateClassroom_Action.graduateClassroomClick(getDriver());
		GraduateClassroom_Action.goWatchClick(getDriver(), 0);
		GraduateClassroom_Action.ReadComment(getDriver());
		Assert.assertTrue(ifContains("张庭"));
	}
	//查看推荐
	@Test
	public void testReadRecommend() throws Exception {
		GraduateClassroom_Action.graduateClassroomClick(getDriver());
		GraduateClassroom_Action.goWatchClick(getDriver(), 0);
		GraduateClassroom_Action.ReadRecommend(getDriver());
		Assert.assertTrue(ifContains("java进阶"));
	}
	//查看推荐第2页
	@Test
	public void testRecommendPage() throws Exception {
		GraduateClassroom_Action.graduateClassroomClick(getDriver());
		GraduateClassroom_Action.goWatchClick(getDriver(), 0);
		GraduateClassroom_Action.ReadRecommend(getDriver());
		GraduateClassroom_Action.Page(getDriver(), 2);
		Assert.assertTrue(ifContains("大数据"));
	}
	@AfterClass
	public void closebrowser() throws Exception {
		webtest.quit();
	}

}
