package pageObject;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import utils.ObjectMap;

public class TeacherAchievementInquiryPage {
	public WebElement element;
	public WebDriver driver;
	ObjectMap objMap = new ObjectMap("ObjectMap/teacherAchievementInquiry.properties");
	
	public TeacherAchievementInquiryPage(WebDriver wd) {
		this.driver = wd;
	}
	//成绩查询
	public WebElement getAchievement() throws Exception {
		this.element=driver.findElement(objMap.getlocator("achievement.check"));
		return element;
	}
	//学年
	public WebElement getYear() throws Exception {
		this.element=driver.findElement(objMap.getlocator("achievement.year"));
		return element;
	}
	//学期
	public WebElement getTerm() throws Exception {
		this.element=driver.findElement(objMap.getlocator("achievement.term"));
		return element;
	}
	//课程
	public WebElement getCourse() throws Exception {
		this.element=driver.findElement(objMap.getlocator("achievement.course"));
		return element;
	}
	//查找按钮
	public WebElement getSearch() throws Exception {
		this.element=driver.findElement(objMap.getlocator("achievement.search"));
		return element;
	}
	//查看学生成绩-表格
	public WebElement getStudent(int row) throws Exception {
		this.element=driver.findElements(objMap.getlocator("achievement.achievement")).get(row);
		return element;
	}
	//下一页
	public WebElement getNextPage() throws Exception {
		this.element=driver.findElement(objMap.getlocator("achievement.next"));
		return element;
	}
	//上一页
	public WebElement getPrePage() throws Exception {
		this.element=driver.findElement(objMap.getlocator("achievement.pre"));
		return element;
	}
	//页面跳转框
	public WebElement getPage() throws Exception {
		this.element=driver.findElement(objMap.getlocator("achievement.pageNum"));
		return element;
	}
	//GO
	public WebElement getGo() throws Exception {
		this.element=driver.findElement(objMap.getlocator("achievement.go"));
		return element;
	}

}
