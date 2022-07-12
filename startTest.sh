
Suite=$1

case "$Suite" in

#################################################################################################
 "AdminSuite")
echo "Admin"
./katalonc -noSplash -runMode=console -projectPath="/home/KRE/AccessKRE/AccessKRE.prj" -retry=0 -testSuitePath="Test Suites/Sanity/AdminTestCases" -browserType="Firefox (headless)" -executionProfile="FireFox_Admin" -apiKey="bb108546-bd11-4e79-83cf-fd77defc1e35" --config -proxy.auth.option=NO_PROXY -proxy.system.option=NO_PROXY -proxy.system.applyToDesiredCapabilities=true -webui.autoUpdateDrivers=true
;;

#################################################################################################
 "CICD")
 echo "CI_CD"
./katalonc -noSplash -runMode=console -projectPath="/home/KRE/AccessKRE/AccessKRE.prj" -retry=0 -testSuiteCollectionPath="Test Suites/Sanity/CI-CD-FF" -apiKey="bb108546-bd11-4e79-83cf-fd77defc1e35" --config -proxy.auth.option=NO_PROXY -proxy.system.option=NO_PROXY -proxy.system.applyToDesiredCapabilities=true -webui.autoUpdateDrivers=true

;;

#################################################################################################
 "Login")
 echo "Login"

./katalonc -noSplash -runMode=console -projectPath="/home/KRE/AccessKRE/AccessKRE.prj" -retry=0 -testSuitePath="Test Suites/Login" -browserType="Firefox (headless)" -executionProfile="FireFox_JMActions" -apiKey="bb108546-bd11-4e79-83cf-fd77defc1e35" --config -proxy.auth.option=NO_PROXY -proxy.system.option=NO_PROXY -proxy.system.applyToDesiredCapabilities=true -webui.autoUpdateDrivers=true
;;


################################################################################################
 "FileOPs")
 echo "FileOPs"
./katalonc -noSplash -runMode=console -projectPath="/home/KRE/AccessKRE/AccessKRE.prj" -retry=0 -testSuitePath="Test Suites/Sanity/FileOperations" -browserType="Firefox (headless)" -executionProfile="FireFox_Files" -apiKey="bb108546-bd11-4e79-83cf-fd77defc1e35" --config -proxy.auth.option=NO_PROXY -proxy.system.option=NO_PROXY -proxy.system.applyToDesiredCapabilities=true -webui.autoUpdateDrivers=true
;;
#################################################################################################
 "FolderOps")
 echo "FolderOps"

./katalonc -noSplash -runMode=console -projectPath="/home/KRE/AccessKRE/AccessKRE.prj" -retry=0 -testSuitePath="Test Suites/Sanity/FolderModule" -browserType="Firefox (headless)" -executionProfile="FireFox_Folders" -apiKey="bb108546-bd11-4e79-83cf-fd77defc1e35" --config -proxy.auth.option=NO_PROXY -proxy.system.option=NO_PROXY -proxy.system.applyToDesiredCapabilities=true -webui.autoUpdateDrivers=true

;;

#################################################################################################
 "JM")
 echo "JM"

./katalonc -noSplash -runMode=console -projectPath="/home/KRE/AccessKRE/AccessKRE.prj" -retry=0 -testSuitePath="Test Suites/Sanity/JobMonitoring" -browserType="Firefox (headless)" -executionProfile="FireFox_JMActions" -apiKey="bb108546-bd11-4e79-83cf-fd77defc1e35" --config -proxy.auth.option=NO_PROXY -proxy.system.option=NO_PROXY -proxy.system.applyToDesiredCapabilities=true -webui.autoUpdateDrivers=true
;;

#################################################################################################
 "Profiles")
 echo "Profiles"
# ./katalonc -noSplash -runMode=console -projectPath="/home/KRE/AccessKRE/AccessKRE.prj" -retry=0 -testSuitePath="Test Suites/Sanity/ProfileModule" -browserType="Firefox (headless)" -executionProfile="FireFox_ProfileFilesPage" -apiKey="bb108546-bd11-4e79-83cf-fd77defc1e35" --config -proxy.auth.option=NO_PROXY -proxy.system.option=NO_PROXY -proxy.system.applyToDesiredCapabilities=true -webui.autoUpdateDrivers=true
;;

#################################################################################################
 "JS")
 echo "JS"
./katalonc -noSplash -runMode=console -projectPath="/home/KRE/AccessKRE/AccessKRE.prj" -retry=0 -testSuitePath="Test Suites/Sanity/JobSubmision" -browserType="Firefox (headless)" -executionProfile="FireFox_JS" -apiKey="bb108546-bd11-4e79-83cf-fd77defc1e35" --config -proxy.auth.option=NO_PROXY -proxy.system.option=NO_PROXY -proxy.system.applyToDesiredCapabilities=true -webui.autoUpdateDrivers=true
;;
esac