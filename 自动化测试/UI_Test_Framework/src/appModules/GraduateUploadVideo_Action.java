package appModules;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.Select;

import pageObject.GraduateSituationPage;
import pageObject.GraduateUploadVideoPage;

public class GraduateUploadVideo_Action {
	
	//点击上传视频
	public static void uploadVideoClick(WebDriver wd) throws Exception {
		GraduateUploadVideoPage gp=new GraduateUploadVideoPage(wd);
		gp.getUploadVideo().click();
	}
	//输入名字
	public static void enterName(WebDriver wd,String name) throws Exception {
		GraduateUploadVideoPage gp=new GraduateUploadVideoPage(wd);
		gp.getClassroomName().sendKeys(name);
	}
	//输入描述
	public static void enterDescription(WebDriver wd,String description) throws Exception {
		GraduateUploadVideoPage gp=new GraduateUploadVideoPage(wd);
		gp.getClassroomDescription().sendKeys(description);
	}
	//输入简介
	public static void enterIntroduction(WebDriver wd,String introduction) throws Exception {
		GraduateUploadVideoPage gp=new GraduateUploadVideoPage(wd);
		gp.getClassroomIntroduction().sendKeys(introduction);
	}
	//选择类型
	public static void chooseType(WebDriver wd,String type) throws Exception {
		GraduateUploadVideoPage gp=new GraduateUploadVideoPage(wd);
		Select dropList=new Select(gp.getClassroomType());
		//dropList.selectByIndex(type);	
		dropList.selectByVisibleText(type);
	}
	//选择封面
	public static void chooseCover(WebDriver wd,String file) throws Exception {
		GraduateUploadVideoPage gp=new GraduateUploadVideoPage(wd);
		gp.getCover().sendKeys(file);
	}
	//选择视频
	public static void chooseVideo(WebDriver wd,String file) throws Exception {
		GraduateUploadVideoPage gp=new GraduateUploadVideoPage(wd);
		gp.getVideo().sendKeys(file);
	}
	//提交
	public static void submit(WebDriver wd) throws Exception {
		GraduateUploadVideoPage gp=new GraduateUploadVideoPage(wd);
		gp.getSubmit().click();
	}

}
