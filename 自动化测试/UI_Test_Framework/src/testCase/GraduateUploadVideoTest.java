package testCase;

import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Listeners;
import org.testng.annotations.Test;

import appModules.GraduateSituation_Action;
import appModules.GraduateUploadVideo_Action;
import core.BaseTest;
import core.WebTestListener;

@Listeners(WebTestListener.class)
public class GraduateUploadVideoTest extends BaseTest{
	public GraduateUploadVideoTest(String type) throws Exception  {
		super("firefox");
		// TODO Auto-generated constructor stub
	}
	String url = "http://localhost:8080/%E6%95%99%E5%8A%A1/getRecruitByPage?currentPage=1";
	@BeforeMethod
	public void openbrowser() throws Exception {
		webtest.open(url);
	}
	//进入上传视频页面
	@Test
	public void testUploadVideo() throws Exception {
		GraduateUploadVideo_Action.uploadVideoClick(getDriver());
		Assert.assertTrue(ifContains("课堂名字"));
	}
	//上传视频
	@Test
	public void testUploadVideoAll() throws Exception {
		GraduateUploadVideo_Action.uploadVideoClick(getDriver());
		GraduateUploadVideo_Action.enterName(getDriver(), "java进阶");
		GraduateUploadVideo_Action.enterDescription(getDriver(), "java是一门语言");
		GraduateUploadVideo_Action.enterIntroduction(getDriver(), "java很有用");
		GraduateUploadVideo_Action.chooseType(getDriver(), "工作");
		GraduateUploadVideo_Action.chooseCover(getDriver(), "G:\\demo\\1.png");
		GraduateUploadVideo_Action.chooseVideo(getDriver(), "G:\\demo\\2.mp4");
		GraduateUploadVideo_Action.submit(getDriver());
		Assert.assertTrue(ifContains("去观看"));
	}
	//上传视频
		@Test
		public void testUploadVideoWithoutName() throws Exception {
			GraduateUploadVideo_Action.uploadVideoClick(getDriver());
			GraduateUploadVideo_Action.enterDescription(getDriver(), "java是一门语言");
			GraduateUploadVideo_Action.enterIntroduction(getDriver(), "java很有用");
			GraduateUploadVideo_Action.chooseType(getDriver(), "工作");
			GraduateUploadVideo_Action.chooseCover(getDriver(), "G:\\demo\\1.png");
			GraduateUploadVideo_Action.chooseVideo(getDriver(), "G:\\demo\\2.mp4");
			GraduateUploadVideo_Action.submit(getDriver());
			Assert.assertTrue(ifContains("去观看"));
		}
		//上传视频
		@Test
		public void testUploadVideoWithoutDescription() throws Exception {
			GraduateUploadVideo_Action.uploadVideoClick(getDriver());
			GraduateUploadVideo_Action.enterName(getDriver(), "java进阶");
			GraduateUploadVideo_Action.enterIntroduction(getDriver(), "java很有用");
			GraduateUploadVideo_Action.chooseType(getDriver(), "工作");
			GraduateUploadVideo_Action.chooseCover(getDriver(), "G:\\demo\\1.png");
			GraduateUploadVideo_Action.chooseVideo(getDriver(), "G:\\demo\\2.mp4");
			GraduateUploadVideo_Action.submit(getDriver());
			Assert.assertTrue(ifContains("去观看"));
		}
		//上传视频
		@Test
		public void testUploadVideoWithoutIntroduction() throws Exception {
			GraduateUploadVideo_Action.uploadVideoClick(getDriver());
			GraduateUploadVideo_Action.enterName(getDriver(), "java进阶");
			GraduateUploadVideo_Action.enterDescription(getDriver(), "java是一门语言");
			GraduateUploadVideo_Action.chooseType(getDriver(), "工作");
			GraduateUploadVideo_Action.chooseCover(getDriver(), "G:\\demo\\1.png");
			GraduateUploadVideo_Action.chooseVideo(getDriver(), "G:\\demo\\2.mp4");
			GraduateUploadVideo_Action.submit(getDriver());
			Assert.assertTrue(ifContains("去观看"));
		}
		//上传视频
		@Test
		public void testUploadVideoWithoutType() throws Exception {
			GraduateUploadVideo_Action.uploadVideoClick(getDriver());
			GraduateUploadVideo_Action.enterName(getDriver(), "java进阶");
			GraduateUploadVideo_Action.enterDescription(getDriver(), "java是一门语言");
			GraduateUploadVideo_Action.enterIntroduction(getDriver(), "java很有用");
			GraduateUploadVideo_Action.chooseCover(getDriver(), "G:\\demo\\1.png");
			GraduateUploadVideo_Action.chooseVideo(getDriver(), "G:\\demo\\2.mp4");
			GraduateUploadVideo_Action.submit(getDriver());
			Assert.assertTrue(ifContains("去观看"));
		}
		//上传视频
		@Test
		public void testUploadVideoWithoutCover() throws Exception {
			GraduateUploadVideo_Action.uploadVideoClick(getDriver());
			GraduateUploadVideo_Action.enterName(getDriver(), "java进阶");
			GraduateUploadVideo_Action.enterDescription(getDriver(), "java是一门语言");
			GraduateUploadVideo_Action.enterIntroduction(getDriver(), "java很有用");
			GraduateUploadVideo_Action.chooseType(getDriver(), "工作");
			GraduateUploadVideo_Action.chooseVideo(getDriver(), "G:\\demo\\2.mp4");
			GraduateUploadVideo_Action.submit(getDriver());
			Assert.assertTrue(ifContains("去观看"));
		}
		//上传视频
		@Test
		public void testUploadVideoWithoutVideo() throws Exception {
			GraduateUploadVideo_Action.uploadVideoClick(getDriver());
			GraduateUploadVideo_Action.enterName(getDriver(), "java进阶");
			GraduateUploadVideo_Action.enterDescription(getDriver(), "java是一门语言");
			GraduateUploadVideo_Action.enterIntroduction(getDriver(), "java很有用");
			GraduateUploadVideo_Action.chooseType(getDriver(), "工作");
			GraduateUploadVideo_Action.chooseCover(getDriver(), "G:\\demo\\1.png");
			GraduateUploadVideo_Action.submit(getDriver());
			Assert.assertTrue(ifContains("去观看"));
		}
		@AfterClass
		public void closebrowser() throws Exception {
			webtest.quit();
		}

}
