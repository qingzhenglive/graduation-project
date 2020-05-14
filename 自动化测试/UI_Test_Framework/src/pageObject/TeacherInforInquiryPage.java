package pageObject;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import utils.ObjectMap;

public class TeacherInforInquiryPage {
	public WebElement element;
	public WebDriver driver;
	ObjectMap objMap = new ObjectMap("ObjectMap/teacherInforInquiry.properties");
	
	public TeacherInforInquiryPage(WebDriver wd) {
		this.driver = wd;
	}
	//信息查询
	public WebElement getInforInquiry() throws Exception {
		this.element=driver.findElement(objMap.getlocator("infor.link"));
		return element;
	}
	//我的课程
	public WebElement getMyCourse() throws Exception {
		this.element=driver.findElement(objMap.getlocator("infor.nyCourse"));
		return element;
	}
	//学年
	public WebElement getYear() throws Exception {
		this.element=driver.findElement(objMap.getlocator("infor.year"));
		return element;
	}
	//学期
		public WebElement getTerm() throws Exception {
			this.element=driver.findElement(objMap.getlocator("infor.term"));
			return element;
		}
	//查找按钮
		public WebElement getSearch() throws Exception {
			this.element=driver.findElement(objMap.getlocator("infor.search"));
			return element;
		}
	//学生名单
		public WebElement getListOfStudent() throws Exception {
			this.element=driver.findElement(objMap.getlocator("infor.list"));
			return element;
		}
	//课程
		public WebElement getCourse() throws Exception {
			this.element=driver.findElement(objMap.getlocator("infor.course"));
			return element;
		}
	//学生名单查找
		public WebElement getStudentSearch() throws Exception {
			this.element=driver.findElement(objMap.getlocator("infor.studentSearch"));
			return element;
		}	
	//查看学生-表格
		public WebElement getStudent(int row) throws Exception {
			this.element=driver.findElements(objMap.getlocator("infor.student")).get(row);
			return element;
		}
	//我的教学班
		public WebElement getMyTeacheringClass() throws Exception {
			this.element=driver.findElement(objMap.getlocator("infor.myClass"));
			return element;
		}
	//下一页
		public WebElement getNextPage() throws Exception {
			this.element=driver.findElement(objMap.getlocator("infor.next"));
			return element;
		}
	//上一页
		public WebElement getPrePage() throws Exception {
			this.element=driver.findElement(objMap.getlocator("infor.pre"));
			return element;
		}

}
