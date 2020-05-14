package pageObject;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import utils.ObjectMap;

public class GraduateUploadVideoPage {
	public WebElement element;
	public WebDriver driver;
	ObjectMap objMap = new ObjectMap("ObjectMap/graduateUploadVideo.properties");
	
	public GraduateUploadVideoPage(WebDriver wd) {
		this.driver = wd;
	}
	//上传视频
	public WebElement getUploadVideo() throws Exception {
		this.element=driver.findElement(objMap.getlocator("video.uploadVideo"));
		return element;
	}
	//课堂名字
	public WebElement getClassroomName() throws Exception {
		this.element=driver.findElement(objMap.getlocator("video.classroomName"));
		return element;
	}
	//课堂描述
	public WebElement getClassroomDescription() throws Exception {
		this.element=driver.findElement(objMap.getlocator("video.classroomDescription"));
		return element;
	}
	//课堂简介
	public WebElement getClassroomIntroduction() throws Exception {
		this.element=driver.findElement(objMap.getlocator("video.classroomIntroduction"));
		return element;
	}
	//课堂类型
	public WebElement getClassroomType() throws Exception {
		this.element=driver.findElement(objMap.getlocator("video.classroomType"));
		return element;
	}
	//封面
	public WebElement getCover() throws Exception {
		this.element=driver.findElement(objMap.getlocator("video.cover"));
		return element;
	}
	//视频
	public WebElement getVideo() throws Exception {
		this.element=driver.findElement(objMap.getlocator("video.video"));
		return element;
	}
	//提交
	public WebElement getSubmit() throws Exception {
		this.element=driver.findElement(objMap.getlocator("video.submit"));
		return element;
	}

}
