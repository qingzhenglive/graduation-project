package testCase;

import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Listeners;
import org.testng.annotations.Test;

import appModules.GraduateClassroom_Action;
import appModules.GraudatePracticeSquare_Action;
import core.BaseTest;
import core.WebTestListener;

@Listeners(WebTestListener.class)
public class GraudatePracticeSquareTest extends BaseTest{
	public GraudatePracticeSquareTest(String type) throws Exception  {
		super("firefox");
		// TODO Auto-generated constructor stub
	}
	String url = "http://localhost:8080/%E6%95%99%E5%8A%A1/getRecruitByPage?currentPage=1";
	@BeforeMethod
	public void openbrowser() throws Exception {
		webtest.open(url);
	}
	//进入实习广场
	@Test
	public void testPracticeSquare() throws Exception {
		GraudatePracticeSquare_Action.practiceSquareClick(getDriver());
		Assert.assertTrue(ifContains("学长学姐课堂"));
	}
	//寻找招聘信息
	@Test
	public void testPracticeMessage() throws Exception {
		GraudatePracticeSquare_Action.practiceSquareClick(getDriver());
		GraudatePracticeSquare_Action.practicePlaceChoose(getDriver(), 2);
		Assert.assertTrue(ifContains("北京"));
	}
	//查看招聘信息
	@Test
	public void testMessage() throws Exception {
		GraudatePracticeSquare_Action.practiceSquareClick(getDriver());
		GraudatePracticeSquare_Action.practiceMessageChoose(getDriver(), 0);
		//Assert.assertTrue(ifContains("计算机软件 "));
		}
	//查看推荐第2页
	@Test
	public void testPage() throws Exception {
		GraudatePracticeSquare_Action.practiceSquareClick(getDriver());
		GraudatePracticeSquare_Action.Page(getDriver(), 2);
		Assert.assertTrue(ifContains("北京"));
		}
	//查看其他职位
	@Test
	public void testOtherJob() throws Exception {
		GraudatePracticeSquare_Action.practiceSquareClick(getDriver());
		GraudatePracticeSquare_Action.practiceMessageChoose(getDriver(), 0);
		//GraudatePracticeSquare_Action.OtherJob(getDriver(), 1);
		//Assert.assertTrue(ifContains("北京"));
		}
	@AfterClass
	public void closebrowser() throws Exception {
		webtest.quit();
	}

}
