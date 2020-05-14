package appModules;

import org.openqa.selenium.WebDriver;

import pageObject.GraduateClassroomPage;
import pageObject.StudentCoursePage;

public class StudentCourse_Action {
	//点击选课
	public static void chooseCourseClick(WebDriver wd) throws Exception {
		StudentCoursePage sp=new StudentCoursePage(wd);
		sp.getChooseCourse().click();
	}
	//点击可选课程
	public static void enableCourseClick(WebDriver wd) throws Exception {
		StudentCoursePage sp=new StudentCoursePage(wd);
		sp.getEnableCourse().click();
	}
	//点击已选课程
	public static void selectedCourseClick(WebDriver wd) throws Exception {
		StudentCoursePage sp=new StudentCoursePage(wd);
		sp.getSelectedCourse().click();
	}
	//提交
	public static void submitBtnClick(WebDriver wd) throws Exception {
		StudentCoursePage sp=new StudentCoursePage(wd);
		sp.getSubmitBtn().click();
	}
	//选择页数
	public static void pageClick(WebDriver wd,int row) throws Exception {
		StudentCoursePage sp=new StudentCoursePage(wd);
		sp.getPage(row).click();
	}

}
