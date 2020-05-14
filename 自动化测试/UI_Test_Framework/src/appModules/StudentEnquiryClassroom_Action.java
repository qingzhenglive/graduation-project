package appModules;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.Select;

import pageObject.StudentCheckResultsPage;
import pageObject.StudentEnquiryClassroomPage;
import pageObject.StudentQuerySchedulePage;

public class StudentEnquiryClassroom_Action {
	//点击查询空余教室
	public static void enquiryClassroomClick(WebDriver wd) throws Exception {
		StudentEnquiryClassroomPage sp=new StudentEnquiryClassroomPage(wd);
		sp.getEnquiryClassroom().click();
	}
	//查询
	public static void searchButton(WebDriver wd) throws Exception {
		StudentEnquiryClassroomPage sp=new StudentEnquiryClassroomPage(wd);
		sp.getCheck().click();
	}
	//pdf
	public static void PDFClick(WebDriver wd) throws Exception {
		StudentEnquiryClassroomPage sp=new StudentEnquiryClassroomPage(wd);
		sp.getPDF().click();
	}

	//选择周次
	public static void selectWeek(WebDriver wd,String weekNum) throws Exception {
		StudentEnquiryClassroomPage sp=new StudentEnquiryClassroomPage(wd);
		Select dropList=new Select(sp.getWeek());
		//dropList.selectByIndex(weekNum);
		dropList.selectByVisibleText(weekNum);
	}
	//选择星期
	public static void selectWeekDay(WebDriver wd,String weekNum) throws Exception {
		StudentEnquiryClassroomPage sp=new StudentEnquiryClassroomPage(wd);
		if(weekNum=="星期一") {
			sp.getWeekDay1().click();
		}else if(weekNum=="星期二") {
			sp.getWeekDay2().click();
		}else if(weekNum=="星期三") {
			sp.getWeekDay3().click();
		}else if(weekNum=="星期四") {
			sp.getWeekDay4().click();
		}else if(weekNum=="星期五") {
			sp.getWeekDay5().click();
		}else if(weekNum=="星期六") {
			sp.getWeekDay6().click();
		}else if(weekNum=="星期日") {
			sp.getWeekDay7().click();
		}else {
			System.out.println("Incorrect format");
		}
	}
	//选择时间
		public static void selectWTime(WebDriver wd,String time) throws Exception {
			StudentEnquiryClassroomPage sp=new StudentEnquiryClassroomPage(wd);
			if(time=="8:00-9:30") {
				sp.getTime1().click();
			}else if(time=="9:45-12:10") {
				sp.getTime2().click();
			}else if(time=="14:00-16:20") {
				sp.getTime3().click();
			}else if(time=="15:45-16:10") {
				sp.getTime4().click();
			}else if(time=="19:00-22:00") {
				sp.getTime5().click();
			}else {
				System.out.println("Incorrect format");
			}
	}

}
