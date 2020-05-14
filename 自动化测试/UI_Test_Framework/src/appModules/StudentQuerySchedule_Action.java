package appModules;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.Select;

import pageObject.StudentCoursePage;
import pageObject.StudentQuerySchedulePage;
import pageObject.TeacherInforInquiryPage;

public class StudentQuerySchedule_Action {
	//点击查询课表
	public static void chooseCourseClick(WebDriver wd) throws Exception {
		StudentQuerySchedulePage sp=new StudentQuerySchedulePage(wd);
		sp.getQuerySchedule().click();
	}
	//选择学年
	public static void selectYear(WebDriver wd,String yearNum) throws Exception {
		StudentQuerySchedulePage sp=new StudentQuerySchedulePage(wd);
		Select dropList=new Select(sp.getYear());
		//dropList.selectByIndex(yearNum);
		dropList.selectByVisibleText(yearNum);
	}
	//选择学期
	public static void selectTerm(WebDriver wd,String termNum) throws Exception {
		StudentQuerySchedulePage sp=new StudentQuerySchedulePage(wd);
		Select dropList=new Select(sp.getTerm());
		//dropList.selectByIndex(termNum);
		dropList.selectByVisibleText(termNum);
	}
	//选择周次
	public static void selectWeek(WebDriver wd,String weekNum) throws Exception {
		StudentQuerySchedulePage sp=new StudentQuerySchedulePage(wd);
		Select dropList=new Select(sp.getWeek());
		//dropList.selectByIndex(weekNum);
		dropList.selectByVisibleText(weekNum);
	}
	
	//查询
	public static void searchButton(WebDriver wd) throws Exception {
		StudentQuerySchedulePage sp=new StudentQuerySchedulePage(wd);
		sp.getCheck().click();
	}
	//pdf
	public static void PDFClick(WebDriver wd) throws Exception {
		StudentQuerySchedulePage sp=new StudentQuerySchedulePage(wd);
		sp.getPDF().click();
	}

}
