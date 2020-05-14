package appModules;

import org.openqa.selenium.WebDriver;

import pageObject.GraduateSituationPage;
import pageObject.TeacherScoreEntryPage;

public class GraduateSituation_Action {
	//点击历年毕业生就业情况
	public static void graduateEmploymentClick(WebDriver wd) throws Exception {
		GraduateSituationPage gp=new GraduateSituationPage(wd);
		gp.getGraduateEmployment().click();
	}
	//点击某年的就业情况
	public static void graduateCertainYearEmploymentClick(WebDriver wd,int row) throws Exception {
		GraduateSituationPage gp=new GraduateSituationPage(wd);
		gp.getCertainYearEmployment(row).click();
	}
	//点击历年毕业生考研情况
	public static void graduateExamClick(WebDriver wd) throws Exception {
		GraduateSituationPage gp=new GraduateSituationPage(wd);
		gp.getGraduateExam().click();
	}
	//点击某年的考研情况
	public static void graduateCertainYearExamClick(WebDriver wd,int row) throws Exception {
		GraduateSituationPage gp=new GraduateSituationPage(wd);
		gp.getCertainYearExam(row).click();
	}

}
