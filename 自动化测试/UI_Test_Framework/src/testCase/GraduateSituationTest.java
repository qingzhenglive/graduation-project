package testCase;

import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Listeners;
import org.testng.annotations.Test;

import appModules.GraduateSituation_Action;
import appModules.TeacherScoreEntry_Action;
import core.BaseTest;
import core.WebTestListener;

@Listeners(WebTestListener.class)
public class GraduateSituationTest extends BaseTest{
	public GraduateSituationTest(String type) throws Exception  {
		super("firefox");
		// TODO Auto-generated constructor stub
	}
	String url = "http://localhost:8080/%E6%95%99%E5%8A%A1/getRecruitByPage?currentPage=1";
	@BeforeMethod
	public void openbrowser() throws Exception {
		webtest.open(url);
	}
	//进入历年研究生就业情况页面
	@Test
	public void testIntoGraduateEmploymentSituation() throws Exception {
		GraduateSituation_Action.graduateEmploymentClick(getDriver());
		Assert.assertTrue(ifContains("历年就业情况"));
	}
	//查看2018年研究生就业情况页面
	@Test
	public void testGraduateEmploymentSituation() throws Exception {
		GraduateSituation_Action.graduateEmploymentClick(getDriver());
		GraduateSituation_Action.graduateCertainYearEmploymentClick(getDriver(), 1);
		Assert.assertTrue(ifContains("历年就业情况"));
	}
	//进入历年研究生考研情况页面
	@Test
	public void testIntoGraduateExamSituation() throws Exception {
		GraduateSituation_Action.graduateExamClick(getDriver());
		Assert.assertTrue(ifContains("历年考研情况"));
	}
	//查看2018年研究生考研情况页面
	@Test
	public void testGraduateExamSituation() throws Exception {
		GraduateSituation_Action.graduateExamClick(getDriver());
		GraduateSituation_Action.graduateCertainYearExamClick(getDriver(), 1);
		Assert.assertTrue(ifContains("历年考研情况"));
	}
	@AfterClass
	public void closebrowser() throws Exception {
		webtest.quit();
	}

}
