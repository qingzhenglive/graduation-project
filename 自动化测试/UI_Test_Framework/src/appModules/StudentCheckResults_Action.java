package appModules;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.Select;

import pageObject.StudentCheckResultsPage;
import pageObject.StudentQuerySchedulePage;

public class StudentCheckResults_Action {
	//点击查询成绩
	public static void checkResultsClick(WebDriver wd) throws Exception {
		StudentCheckResultsPage sp=new StudentCheckResultsPage(wd);
		sp.getCheckResults().click();
	}
	//选择学年
	public static void selectYear(WebDriver wd,String yearNum) throws Exception {
		StudentCheckResultsPage sp=new StudentCheckResultsPage(wd);
		Select dropList=new Select(sp.getYear());
		//dropList.selectByIndex(yearNum);
		dropList.selectByVisibleText(yearNum);
	}
	//选择学期
	public static void selectTerm(WebDriver wd,String termNum) throws Exception {
		StudentCheckResultsPage sp=new StudentCheckResultsPage(wd);
		Select dropList=new Select(sp.getTerm());
		//dropList.selectByIndex(termNum);
		dropList.selectByVisibleText(termNum);
	}
		
	//查询
	public static void searchButton(WebDriver wd) throws Exception {
		StudentCheckResultsPage sp=new StudentCheckResultsPage(wd);
		sp.getCheck().click();
	}
	//pdf
	public static void PDFClick(WebDriver wd) throws Exception {
		StudentCheckResultsPage sp=new StudentCheckResultsPage(wd);
		sp.getPDF().click();
	}


}
