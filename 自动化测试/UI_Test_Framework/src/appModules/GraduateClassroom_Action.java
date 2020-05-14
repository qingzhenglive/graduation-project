package appModules;

import org.openqa.selenium.WebDriver;

import pageObject.GraduateClassroomPage;
import pageObject.GraduateSituationPage;

public class GraduateClassroom_Action {
	//点击学长学姐课堂
	public static void graduateClassroomClick(WebDriver wd) throws Exception {
		GraduateClassroomPage gp=new GraduateClassroomPage(wd);
		gp.getGraduateClassroom().click();
	}
	//去观看视频
	public static void goWatchClick(WebDriver wd,int row) throws Exception {
		GraduateClassroomPage gp=new GraduateClassroomPage(wd);
		gp.getGoWatch(row).click();
	}
	//发表评论
	public static void WriteComment(WebDriver wd,String comment) throws Exception {
		GraduateClassroomPage gp=new GraduateClassroomPage(wd);
		gp.getWritecomment().sendKeys(comment);
		gp.getcommentBtn().click();
	}
	//查看评论
	public static void ReadComment(WebDriver wd) throws Exception {
		GraduateClassroomPage gp=new GraduateClassroomPage(wd);
		gp.getReadcomment().click();
	}
	//查看推荐
	public static void ReadRecommend(WebDriver wd) throws Exception {
		GraduateClassroomPage gp=new GraduateClassroomPage(wd);
		gp.getRecommend().click();
	}
	//跳转页数
	public static void Page(WebDriver wd,int num) throws Exception {
		GraduateClassroomPage gp=new GraduateClassroomPage(wd);
		gp.getPage(num).click();
	}
	//视频点击
	public static void VideoClick(WebDriver wd) throws Exception {
		GraduateClassroomPage gp=new GraduateClassroomPage(wd);
		gp.getVideo().click();
	}

}
