package pageObject;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import utils.ObjectMap;

public class TeacherScoreEntryPage {
	public WebElement element;
	public WebDriver driver;
	ObjectMap objMap = new ObjectMap("ObjectMap/teacherScoreEntry.properties");
	
	public TeacherScoreEntryPage(WebDriver wd) {
		this.driver = wd;
	}
	//成绩录入
	public WebElement getScoreEntry() throws Exception {
		this.element=driver.findElement(objMap.getlocator("entry.socreEntry"));
		return element;
	}
	//概览
	public WebElement getOverview() throws Exception {
		this.element=driver.findElement(objMap.getlocator("entry.overview"));
		return element;
	}
	//课程成绩比例
	public WebElement getProportion() throws Exception {
		this.element=driver.findElement(objMap.getlocator("entry.proportion"));
		return element;
	}
	//录入成绩-表格
	public WebElement getScore(int row) throws Exception {
		this.element=driver.findElements(objMap.getlocator("entry.score")).get(row);
		return element;
	}
	//平时
	public WebElement getUaualScore() throws Exception {
		this.element=driver.findElement(objMap.getlocator("entry.uaualScore"));
		return element;
	}
	//期末
	public WebElement getFinalScore() throws Exception {
		this.element=driver.findElement(objMap.getlocator("entry.finalScore"));
		return element;
	}
	//实验
	public WebElement getTestScore() throws Exception {
		this.element=driver.findElement(objMap.getlocator("entry.testScore"));
		return element;
	}
	//小测
	public WebElement getLittleScore() throws Exception {
		this.element=driver.findElement(objMap.getlocator("entry.littleScore"));
		return element;
	}
	//成绩备注
	public WebElement getRemarksOnAchievements() throws Exception {
		this.element=driver.findElement(objMap.getlocator("entry.remarks"));
		return element;
	}
	//提交按钮
	public WebElement getSubmit() throws Exception {
		this.element=driver.findElement(objMap.getlocator("entry.submit"));
		return element;
	}
	//学年
	public WebElement getYear() throws Exception {
		this.element=driver.findElement(objMap.getlocator("entry.year"));
		return element;
	}
	//学期
	public WebElement getTerm() throws Exception {
		this.element=driver.findElement(objMap.getlocator("entry.term"));
		return element;
	}
	//课程
	public WebElement getCourse() throws Exception {
		this.element=driver.findElement(objMap.getlocator("entry.course"));
		return element;
	}
	//查找按钮
	public WebElement getSearch() throws Exception {
		this.element=driver.findElement(objMap.getlocator("entry.search"));
		return element;
	}
	//下一页
	public WebElement getNextPage() throws Exception {
		this.element=driver.findElement(objMap.getlocator("entry.next"));
		return element;
	}
	//上一页
	public WebElement getPrePage() throws Exception {
		this.element=driver.findElement(objMap.getlocator("entry.pre"));
		return element;
	}
	//页面跳转框
	public WebElement getPage() throws Exception {
		this.element=driver.findElement(objMap.getlocator("entry.pageNum"));
		return element;
	}
	//GO
	public WebElement getGo() throws Exception {
		this.element=driver.findElement(objMap.getlocator("entry.go"));
		return element;
	}
	//平时
	public WebElement getDailyProportion() throws Exception {
		this.element=driver.findElement(objMap.getlocator("entry.dailyProportion"));
		return element;
	}
	//其中
	public WebElement getMidProportion() throws Exception {
		this.element=driver.findElement(objMap.getlocator("entry.midProportion"));
		return element;
	}
	//期末
	public WebElement getFinalProportion() throws Exception {
		this.element=driver.findElement(objMap.getlocator("entry.finalProportion"));
		return element;
	}
	//实验
	public WebElement getExpProportion() throws Exception {
		this.element=driver.findElement(objMap.getlocator("entry.expProportion"));
		return element;
	}
	//小测
	public WebElement getQuizProportion() throws Exception {
		this.element=driver.findElement(objMap.getlocator("entry.quizProportion"));
		return element;
	}
	//提交
	public WebElement getSubmitProportion() throws Exception {
		this.element=driver.findElement(objMap.getlocator("entry.submitProportion"));
		return element;
	}


}
