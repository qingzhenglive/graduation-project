package appModules;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.Select;

import pageObject.TeacherChangeClassPage;

public class ChangeClass_Action {
	
	public static void changeClassLink(WebDriver wd) throws Exception {
		TeacherChangeClassPage ta=new TeacherChangeClassPage(wd);
		ta.getChange().click();
		Thread.sleep(3000);
	}
	//选择星期
	public static void selectWeek(WebDriver wd,int weekNum) throws Exception {
		TeacherChangeClassPage ta=new TeacherChangeClassPage(wd);
		Select dropList=new Select(ta.getDay());
		dropList.selectByIndex(weekNum);		
	}
	//选择时间
	public static void selectTime(WebDriver wd,int timeNum) throws Exception {
		TeacherChangeClassPage ta=new TeacherChangeClassPage(wd);
		Select dropList=new Select(ta.getNewTime());
		dropList.selectByIndex(timeNum);
	}
	//选择教室
	public static void selectRoom(WebDriver wd,int roomNum) throws Exception {
		TeacherChangeClassPage ta=new TeacherChangeClassPage(wd);
		Select dropList=new Select(ta.getNewRoom());
		dropList.selectByIndex(roomNum);
	}
	//查找
	public static void searchButton(WebDriver wd) throws Exception {
		TeacherChangeClassPage ta=new TeacherChangeClassPage(wd);
		ta.getSearch().click();
	}
	//点击调课申请
	public static void application(WebDriver wd,int num,int weekNum,String reason) throws Exception {
		TeacherChangeClassPage ta=new TeacherChangeClassPage(wd);
		ta.getApplacation(num).click();
		Thread.sleep(1000);
		Select dropList=new Select(ta.getNewDay());
		dropList.selectByIndex(weekNum);
		ta.getReason().sendKeys(reason);
		ta.getSubmit().click();
	}
	public static void application(WebDriver wd,int num,int weekNum,int timeNum,int roomName,String reason) throws Exception {
		TeacherChangeClassPage ta=new TeacherChangeClassPage(wd);
		ta.getApplacation(num).click();
		Thread.sleep(1000);
		Select dropList=new Select(ta.getNewDay());
		dropList.selectByIndex(weekNum);
		Select dropList2=new Select(ta.getNewDay());
		dropList.selectByIndex(timeNum);
		Select dropList3=new Select(ta.getNewDay());
		dropList.selectByIndex(roomName);
		ta.getReason().sendKeys(reason);
		ta.getSubmit().click();
	}
	//点击下一页
	public static void clickNextPage(WebDriver wd) throws Exception {
		TeacherChangeClassPage ta=new TeacherChangeClassPage(wd);
		ta.getNextPage().click();
	}
	
}
