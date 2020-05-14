package pageObject;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import utils.ObjectMap;

public class GraduateClassroomPage {
	public WebElement element;
	public WebDriver driver;
	ObjectMap objMap = new ObjectMap("ObjectMap/graduateClassroom.properties");
	
	public GraduateClassroomPage(WebDriver wd) {
		this.driver = wd;
	}
	//学长学姐课堂
	public WebElement getGraduateClassroom() throws Exception {
		this.element=driver.findElement(objMap.getlocator("classroom.classroom"));
		return element;
	}
	//去观看
	public WebElement getGoWatch(int row) throws Exception {
		this.element=driver.findElements(objMap.getlocator("classroom.goWatch")).get(row);
		return element;
	}
	//评论框
	public WebElement getWritecomment() throws Exception {
		this.element=driver.findElement(objMap.getlocator("classroom.Writecomment"));
		return element;
	}
	//发表按钮
	public WebElement getcommentBtn() throws Exception {
		this.element=driver.findElement(objMap.getlocator("classroom.commentBtn"));
		return element;
	}
	//评论
	public WebElement getReadcomment() throws Exception {
		this.element=driver.findElement(objMap.getlocator("classroom.readComment"));
		return element;
	}
	//推荐
	public WebElement getRecommend() throws Exception {
		this.element=driver.findElement(objMap.getlocator("classroom.recommend"));
		return element;
	}
	//页数
	public WebElement getPage(int row) throws Exception {
		this.element=driver.findElements(objMap.getlocator("classroom.page")).get(row);
		return element;
	}
	//视频页面
	public WebElement getVideo() throws Exception {
		this.element=driver.findElement(objMap.getlocator("classroom.video"));
		return element;
	}

}
