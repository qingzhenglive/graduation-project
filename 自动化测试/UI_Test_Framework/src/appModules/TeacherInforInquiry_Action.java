package appModules;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.Select;

import pageObject.TeacherChangeClassPage;
import pageObject.TeacherInforInquiryPage;

public class TeacherInforInquiry_Action {
	//点击信息查询
	public static void InforInquiryClick(WebDriver wd) throws Exception {
		TeacherInforInquiryPage  tp=new TeacherInforInquiryPage (wd);
		tp.getInforInquiry().click();
		Thread.sleep(3000);
	}
	//点击我的课程
	public static void MyCourseClick(WebDriver wd) throws Exception {
		TeacherInforInquiryPage  tp=new TeacherInforInquiryPage (wd);
		tp.getMyCourse().click();
		Thread.sleep(3000);
	}
	//选择学年
	public static void selectYear(WebDriver wd,int yearNum) throws Exception {
		TeacherInforInquiryPage tp=new TeacherInforInquiryPage (wd);
		Select dropList=new Select(tp.getYear());
		dropList.selectByIndex(yearNum);		
		}
	//选择学期
	public static void selectTerm(WebDriver wd,int termNum) throws Exception {
		TeacherInforInquiryPage tp=new TeacherInforInquiryPage (wd);
		Select dropList=new Select(tp.getTerm());
		dropList.selectByIndex(termNum);		
		}
	//查找
		public static void searchButton(WebDriver wd) throws Exception {
			TeacherInforInquiryPage tp=new TeacherInforInquiryPage (wd);
			tp.getSearch().click();
		}
	//点击学生名单
		public static void getListOfStudentClick(WebDriver wd) throws Exception {
			TeacherInforInquiryPage  tp=new TeacherInforInquiryPage (wd);
			tp.getListOfStudent().click();
			Thread.sleep(3000);
		}
	//选择课程
		public static void selectTCourse(WebDriver wd,int coursemNum) throws Exception {
			TeacherInforInquiryPage tp=new TeacherInforInquiryPage (wd);
			Select dropList=new Select(tp.getCourse());
			dropList.selectByIndex(coursemNum);		
		}
	//学生名单-查找
		public static void studentSearchButton(WebDriver wd) throws Exception {
			TeacherInforInquiryPage tp=new TeacherInforInquiryPage (wd);
			tp.getStudentSearch().click();
		}
	//点击学生名单-表格
		public static void viewStudent(WebDriver wd,int num) throws Exception {
			TeacherInforInquiryPage tp=new TeacherInforInquiryPage (wd);
			tp.getStudent(num).click();
		}
	//点击我的教学班
		public static void myTeachingClassClick(WebDriver wd) throws Exception {
			TeacherInforInquiryPage tp=new TeacherInforInquiryPage (wd);
			tp.getMyTeacheringClass().click();
		}
	//点击下一页
		public static void clickNextPage(WebDriver wd) throws Exception {
			TeacherInforInquiryPage tp=new TeacherInforInquiryPage (wd);
			tp.getNextPage().click();
		}

}
