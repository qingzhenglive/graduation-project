package appModules;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.Select;

import pageObject.TeacherAchievementInquiryPage;
import pageObject.TeacherChangeClassPage;
import pageObject.TeacherInforInquiryPage;
import pageObject.TeacherScoreEntryPage;
	
public class TeacherScoreEntry_Action {
	//点击课程录入
	public static void scoreEntryClick(WebDriver wd) throws Exception {
		TeacherScoreEntryPage tp=new TeacherScoreEntryPage(wd);
		tp.getScoreEntry().click();
		Thread.sleep(3000);
	}
	//点击概览
	public static void overviewClick(WebDriver wd) throws Exception {
		TeacherScoreEntryPage tp=new TeacherScoreEntryPage(wd);
		tp.getOverview().click();
		Thread.sleep(3000);
	}
	//点击课程成绩比例
	public static void proportionClick(WebDriver wd) throws Exception {
		TeacherScoreEntryPage tp=new TeacherScoreEntryPage(wd);
		tp.getProportion().click();
		Thread.sleep(3000);
	}
	//点击录入成绩-表格
	public static void ScoreClick(WebDriver wd,int num) throws Exception {
		TeacherScoreEntryPage tp=new TeacherScoreEntryPage(wd);
		tp.getScore(num).click();
		Thread.sleep(3000);
	}
	//录入成绩
	public static void InputScore(WebDriver wd,String num1,String num2,String num3,String num4,String remark) throws Exception {
		TeacherScoreEntryPage tp=new TeacherScoreEntryPage(wd);
		tp.getUaualScore().sendKeys(num1);
		tp.getFinalScore().sendKeys(num2);
		tp.getTestScore().sendKeys(num3);
		tp.getLittleScore().sendKeys(num4);
		Select dropList=new Select(tp.getRemarksOnAchievements());
		dropList.selectByVisibleText(remark);
		tp.getSubmit().click();
		Thread.sleep(3000);
	}
	//选择学年
	public static void selectYear(WebDriver wd,int yearNum) throws Exception {
		TeacherScoreEntryPage tp=new TeacherScoreEntryPage(wd);
		Select dropList=new Select(tp.getYear());
		dropList.selectByIndex(yearNum);
		//dropList.deselectByVisibleText(yearNum);
	}
	//选择学期
	public static void selectTerm(WebDriver wd,int termNum) throws Exception {
		TeacherScoreEntryPage tp=new TeacherScoreEntryPage(wd);
		Select dropList=new Select(tp.getTerm());
		dropList.selectByIndex(termNum);		
		}
	//选择课程
	public static void selectTCourse(WebDriver wd,int coursemNum) throws Exception {
		TeacherScoreEntryPage tp=new TeacherScoreEntryPage(wd);
		Select dropList=new Select(tp.getCourse());
		dropList.selectByIndex(coursemNum);		
	}
	//查找
	public static void searchButton(WebDriver wd) throws Exception {
		TeacherScoreEntryPage tp=new TeacherScoreEntryPage(wd);
		tp.getSearch().click();
	}
	//点击下一页
	public static void clickNextPage(WebDriver wd) throws Exception {
		TeacherScoreEntryPage tp=new TeacherScoreEntryPage(wd);
		tp.getNextPage().click();
	}
	//跳转指定页数
	public static void goCertainPage(WebDriver wd,String num) throws Exception {
		TeacherScoreEntryPage tp=new TeacherScoreEntryPage(wd);
		tp.getPage().sendKeys(num);
		tp.getGo().click();
		Thread.sleep(3000);
	}
	//课程比例
	public static void inputCourseProportion(WebDriver wd,String num1,String num2,String num3,String num4,String num5) throws Exception {
		TeacherScoreEntryPage tp=new TeacherScoreEntryPage(wd);
		tp.getDailyProportion().sendKeys(num1);
		tp.getMidProportion().sendKeys(num2);
		tp.getFinalProportion().sendKeys(num3);
		tp.getExpProportion().sendKeys(num4);
		tp.getQuizProportion().sendKeys(num5);
		tp.getSubmitProportion().click();
		
	}
}
