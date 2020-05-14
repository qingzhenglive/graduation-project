package appModules;

import org.openqa.selenium.WebDriver;

import pageObject.GraduateClassroomPage;
import pageObject.GraduateSituationPage;
import pageObject.GraudatePracticeSquarePage;

public class GraudatePracticeSquare_Action {
	//点击实习广场
	public static void practiceSquareClick(WebDriver wd) throws Exception {
		GraudatePracticeSquarePage gp=new GraudatePracticeSquarePage(wd);
		gp.getPracticeSquare().click();
		
	}
	//选择地点
	public static void practicePlaceChoose(WebDriver wd,int row) throws Exception {
		GraudatePracticeSquarePage gp=new GraudatePracticeSquarePage(wd);
		gp.getPlace(row).click();
		
	}
	//选择类别
	public static void practiceCategoryChoose(WebDriver wd,int row) throws Exception {
		GraudatePracticeSquarePage gp=new GraudatePracticeSquarePage(wd);
		gp.getCategory(row).click();	
	}
	//点击信息
	public static void practiceMessageChoose(WebDriver wd,int row) throws Exception {
		GraudatePracticeSquarePage gp=new GraudatePracticeSquarePage(wd);
		gp.getMessage(row).click();	
	}
	//跳转页数
	public static void Page(WebDriver wd,int num) throws Exception {
		GraudatePracticeSquarePage gp=new GraudatePracticeSquarePage(wd);
		gp.getPage(num).click();
	}
	//其他职位
	public static void OtherJob(WebDriver wd,int row) throws Exception {
		GraudatePracticeSquarePage gp=new GraudatePracticeSquarePage(wd);
		gp.getOtherJob(row).click();
	}

}
