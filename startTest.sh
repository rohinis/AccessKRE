
Suite=$1

case "$Suite" in

#################################################################################################
 "AdminSuite")
echo "Admin"
./katalonc -noSplash -runMode=console -projectPath="/tmp/AccessKRE/AccessKRE.prj" -retry=0 -testSuitePath="Test Suites/Sanity/AdminTestCases" -browserType="Firefox (headless)" -executionProfile="ExecProfile-david" -apiKey="45b931a2-d0c7-4269-a438-a0a72aeef2d8" --config -proxy.auth.option=NO_PROXY -proxy.system.option=NO_PROXY -proxy.system.applyToDesiredCapabilities=true -webui.autoUpdateDrivers=true
;;

#################################################################################################
 "CICD")
 echo "CI_CD"
./katalonc -noSplash -runMode=console -projectPath="/tmp/AccessKRE/AccessKRE.prj" -retry=0 -testSuiteCollectionPath="Test Suites/Sanity/CI-CD-FF" -apiKey="773f8ea1-88cc-4327-bc3f-92bce9a403c4" --config -proxy.auth.option=NO_PROXY -proxy.system.option=NO_PROXY -proxy.system.applyToDesiredCapabilities=true -webui.autoUpdateDrivers=true

;;

#################################################################################################
 "Login")
 echo "Login"

./katalonc -noSplash -runMode=console -projectPath="/tmp/AccessKRE/AccessKRE.prj" -retry=0 -testSuitePath="Test Suites/Login" -browserType="Firefox (headless)" -executionProfile="ExecProfile-david" -apiKey="45b931a2-d0c7-4269-a438-a0a72aeef2d8" --config -proxy.auth.option=NO_PROXY -proxy.system.option=NO_PROXY -proxy.system.applyToDesiredCapabilities=true -webui.autoUpdateDrivers=true
;;


################################################################################################
 "FileOPs")
 echo "FileOPs"
./katalonc -noSplash -runMode=console -projectPath="/tmp/AccessKRE/AccessKRE.prj" -retry=0 -testSuitePath="Test Suites/Sanity/FileOperations" -browserType="Firefox (headless)" -executionProfile="ExecProfile-serviceuser" -apiKey="45b931a2-d0c7-4269-a438-a0a72aeef2d8" --config -proxy.auth.option=NO_PROXY -proxy.system.option=NO_PROXY -proxy.system.applyToDesiredCapabilities=true -webui.autoUpdateDrivers=true
;;
#################################################################################################
 "FolderOps")
 echo "FolderOps"

./katalonc -noSplash -runMode=console -projectPath="/tmp/AccessKRE/AccessKRE.prj" -retry=0 -testSuitePath="Test Suites/Sanity/FolderModule" -browserType="Firefox (headless)" -executionProfile="ExecProfile-raju" -apiKey="45b931a2-d0c7-4269-a438-a0a72aeef2d8" --config -proxy.auth.option=NO_PROXY -proxy.system.option=NO_PROXY -proxy.system.applyToDesiredCapabilities=true -webui.autoUpdateDrivers=true

;;

#################################################################################################
 "JM")
 echo "JM"

./katalonc -noSplash -runMode=console -projectPath="/tmp/AccessKRE/AccessKRE.prj" -retry=0 -testSuitePath="Test Suites/Sanity/JobMonitoring" -browserType="Firefox (headless)" -executionProfile="ExecProfile-david" -apiKey="45b931a2-d0c7-4269-a438-a0a72aeef2d8" --config -proxy.auth.option=NO_PROXY -proxy.system.option=NO_PROXY -proxy.system.applyToDesiredCapabilities=true -webui.autoUpdateDrivers=true
;;

#################################################################################################
 "Profiles")
 echo "Profiles"
./katalonc -noSplash -runMode=console -projectPath="/tmp/AccessKRE/AccessKRE.prj" -retry=0 -testSuitePath="Test Suites/Sanity/ProfileModule" -browserType="Firefox (headless)" -executionProfile="ExecProfile-david" -apiKey="45b931a2-d0c7-4269-a438-a0a72aeef2d8" --config -proxy.auth.option=NO_PROXY -proxy.system.option=NO_PROXY -proxy.system.applyToDesiredCapabilities=true -webui.autoUpdateDrivers=true
;;

#################################################################################################
 "JS")
 echo "JS"
./katalonc -noSplash -runMode=console -projectPath="/tmp/AccessKRE/AccessKRE.prj" -retry=0 -testSuitePath="Test Suites/Sanity/JobSubmision" -browserType="Firefox (headless)" -executionProfile="ExecProfile-david" -apiKey="45b931a2-d0c7-4269-a438-a0a72aeef2d8" --config -proxy.auth.option=NO_PROXY -proxy.system.option=NO_PROXY -proxy.system.applyToDesiredCapabilities=true -webui.autoUpdateDrivers=true
;;
esac
