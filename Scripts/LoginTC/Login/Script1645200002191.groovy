import static com.kms.katalon.core.testobject.ObjectRepository.findTestObject

import com.assertthat.selenium_shutterbug.utils.web.Browser
import com.aventstack.extentreports.MediaEntityBuilder
import com.aventstack.extentreports.Status
import com.kms.katalon.core.exception.StepErrorException
import com.kms.katalon.core.model.FailureHandling
import com.kms.katalon.core.webui.keyword.WebUiBuiltInKeywords as WebUI

import internal.GlobalVariable

//====================================================================================
def extentTest=GlobalVariable.G_ExtentTest
//=====================================================================================



try {
def Browser = GlobalVariable.G_Browser
extentTest.log(Status.PASS, 'Navigated to Acces Instance - '+GlobalVariable.G_BaseUrl)


WebUI.setText(findTestObject('LoginPage/username_txtbx'), GlobalVariable.G_userName)
WebUI.setText(findTestObject('LoginPage/password_txtbx'), GlobalVariable.G_Password)
WebUI.click(findTestObject('LoginPage/login_btn'))
extentTest.log(Status.PASS, 'Entered Creds - username - '+GlobalVariable.G_userName +' password - '+GlobalVariable.G_Password)




def jobsTab = (new customWait.WaitForElement()).WaitForelementPresent(findTestObject('NewJobPage/AppList_ShellScript'),	10,extentTest, 'Application - ShellScript loaded ')

if (jobsTab) {
	WebUI.click(findTestObject('Object Repository/Landing_Page/LandigPage_AltairAccess_Link'))
	extentTest.log(Status.PASS, 'Verified AltairAccess Logo post login ')
}
else {

	def errorMsg=WebUI.verifyElementPresent(findTestObject('Object Repository/GenericObjects/Msg_loginError'), 5, FailureHandling.CONTINUE_ON_FAILURE)
	if(errorMsg) {
		def timeOut=5
		int i=0 
		while (errorMsg == true && i<timeOut) {
			WebUI.delay(1)

			errorMsg=WebUI.verifyElementPresent(findTestObject('Object Repository/GenericObjects/Msg_loginError'), 1)
			i++
		}
	extentTest.log(Status.FAIL, 'Login Error !!! ')
	}
}

}

catch (Exception ex) {
	String screenShotPath = (('ExtentReports/' + TestCaseName) + GlobalVariable.G_Browser) + '.png'
	WebUI.takeScreenshot(screenShotPath)
	String p = (TestCaseName + GlobalVariable.G_Browser) + '.png'
	extentTest.log(Status.FAIL, ex)
	extentTest.fail(MediaEntityBuilder.createScreenCaptureFromPath(p).build())
}
catch (StepErrorException e) {
	String screenShotPath = (('ExtentReports/' + TestCaseName) + GlobalVariable.G_Browser) + '.png'
	WebUI.takeScreenshot(screenShotPath)
	String p = (TestCaseName + GlobalVariable.G_Browser) + '.png'
	extentTest.log(Status.FAIL, ex)
	extentTest.fail(MediaEntityBuilder.createScreenCaptureFromPath(p).build())
	

}
finally {
		extentTest.log(Status.PASS, 'Closing the browser after executinge test case - '+ TestCaseName)
	

}






