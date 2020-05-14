package appModules;

import org.openqa.selenium.WebDriver;

import pageObject.StudentEnquiryClassroomPage;
import pageObject.StudentEvaluatePage;

public class StudentEvaluate_Action {
	//点击评价
	public static void evaluate(WebDriver wd) throws Exception {
		StudentEvaluatePage sp=new StudentEvaluatePage(wd);
		sp.getEvaluate().click();
	}
	//选择老师
	public static void selectTeacher(WebDriver wd,String teacherNum) throws Exception {
		StudentEvaluatePage sp=new StudentEvaluatePage(wd);
			if(teacherNum=="张海云") {
				sp.getTeacher1().click();
			}else if(teacherNum=="王晓") {
				sp.getTeacher2().click();
			}else {
				System.out.println("Wrong format, please select the name of the person");
			}
	}
	//成绩1
	public static void enterScore1(WebDriver wd,String score) throws Exception {
		StudentEvaluatePage sp=new StudentEvaluatePage(wd);
		sp.getScore1().sendKeys(score);
	}
	//成绩2
	public static void enterScore2(WebDriver wd,String score) throws Exception {
		StudentEvaluatePage sp=new StudentEvaluatePage(wd);
		sp.getScore2().sendKeys(score);
	}
	//成绩3
	public static void enterScore3(WebDriver wd,String score) throws Exception {
		StudentEvaluatePage sp=new StudentEvaluatePage(wd);
		sp.getScore3().sendKeys(score);
	}
	//成绩4
	public static void enterScore4(WebDriver wd,String score) throws Exception {
		StudentEvaluatePage sp=new StudentEvaluatePage(wd);
		sp.getScore4().sendKeys(score);
	}
	//成绩5
	public static void enterScore5(WebDriver wd,String score) throws Exception {
		StudentEvaluatePage sp=new StudentEvaluatePage(wd);
		sp.getScore5().sendKeys(score);
	}
	//成绩6
	public static void enterScore6(WebDriver wd,String score) throws Exception {
		StudentEvaluatePage sp=new StudentEvaluatePage(wd);
		sp.getScore6().sendKeys(score);
	}
	//成绩7
	public static void enterScore7(WebDriver wd,String score) throws Exception {
		StudentEvaluatePage sp=new StudentEvaluatePage(wd);
		sp.getScore7().sendKeys(score);
	}
	//成绩8
	public static void enterScore8(WebDriver wd,String score) throws Exception {
		StudentEvaluatePage sp=new StudentEvaluatePage(wd);
		sp.getScore8().sendKeys(score);
	}
	//成绩9
	public static void enterScore9(WebDriver wd,String score) throws Exception {
		StudentEvaluatePage sp=new StudentEvaluatePage(wd);
		sp.getScore9().sendKeys(score);
	}
	//成绩10
	public static void enterScore10(WebDriver wd,String score) throws Exception {
		StudentEvaluatePage sp=new StudentEvaluatePage(wd);
		sp.getScore10().sendKeys(score);
	}
	//保存
	public static void saveBtnClick(WebDriver wd) throws Exception {
		StudentEvaluatePage sp=new StudentEvaluatePage(wd);
		sp.getSaveBtn().click();
	}

}
