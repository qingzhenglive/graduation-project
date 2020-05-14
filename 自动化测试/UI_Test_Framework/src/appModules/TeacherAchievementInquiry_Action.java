package appModules;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.Select;

import pageObject.TeacherAchievementInquiryPage;
import pageObject.TeacherChangeClassPage;
import pageObject.TeacherInforInquiryPage;

public class TeacherAchievementInquiry_Action {
	//点击成绩查询
	public static void AchievementInquiryClick(WebDriver wd) throws Exception {
		TeacherAchievementInquiryPage tp=new TeacherAchievementInquiryPage(wd);
		tp.getAchievement().click();
		Thread.sleep(3000);
	}
	//选择学年
	public static void selectYear(WebDriver wd,int yearNum) throws Exception {
		TeacherAchievementInquiryPage tp=new TeacherAchievementInquiryPage(wd);
		Select dropList=new Select(tp.getYear());
		dropList.selectByIndex(yearNum);		
	}
	//选择学期
	public static void selectTerm(WebDriver wd,int termNum) throws Exception {
		TeacherAchievementInquiryPage tp=new TeacherAchievementInquiryPage(wd);
		Select dropList=new Select(tp.getTerm());
		dropList.selectByIndex(termNum);		
	}
	//选择课程
	public static void selectTCourse(WebDriver wd,int coursemNum) throws Exception {
		TeacherAchievementInquiryPage tp=new TeacherAchievementInquiryPage(wd);
		Select dropList=new Select(tp.getCourse());
		dropList.selectByIndex(coursemNum);		
	}
	//查找
	public static void searchButton(WebDriver wd) throws Exception {
		TeacherAchievementInquiryPage tp=new TeacherAchievementInquiryPage(wd);
		tp.getSearch().click();
	}
	//查看学生成绩
	public static void viewAchievement(WebDriver wd,int num) throws Exception {
		TeacherAchievementInquiryPage tp=new TeacherAchievementInquiryPage(wd);
		tp.getStudent(num).click();
	}
	//点击下一页
	public static void clickNextPage(WebDriver wd) throws Exception {
		TeacherAchievementInquiryPage tp=new TeacherAchievementInquiryPage(wd);
		tp.getNextPage().click();
	}
	//跳转指定页数
	public static void goCertainPage(WebDriver wd,String num) throws Exception {
		TeacherAchievementInquiryPage tp=new TeacherAchievementInquiryPage(wd);
		tp.getPage().sendKeys(num);
		tp.getGo().click();
		Thread.sleep(3000);
	}
}
