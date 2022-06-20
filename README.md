**Steps to prepare Access Setup** 

1. Clean up the stage area for the users - not required on Dockers 
2. PBS Jobs needs to cleaned  - not required on Dockers
3. Download the pre requisites folder ( Pre-Requisites.zip )
4. Copy  Prerequisites.zip folder to the head node and Unzip 
5. Navigate into unzipped folder
	 - Change permissions for the contents of Pre-Requisites.zip folder  
	   - chmod 777 * 
	   - chmod 777 TestData/* 
	   - chmod 777 TestAppDefs/* 
6. Update the list of available user in userlist.txt or rename appropriate user list to userlist.txt
7. Run the following scripts  ( in the same order ) 
	  - configureAppDefs.sh
      - createTestData.sh

**Steps to initiate run** 

1. Download the repo 
2. Copy the entire Project ( AccessKRE ) to host ( from where the test are to be run ) 
3. Replace BASE_URL - (https://lnc:4443/pbsworks ) in the following file with access URL 
   -  AccessKRE\Profiles\ExecProfile-adminuser.glbl
   -  AccessKRE\Profiles\ExecProfile-david.glbl
   -  AccessKRE\Profiles\ExecProfile-raju.glbl
   -  AccessKRE\Profiles\ExecProfile-serviceuser.glbl
4. Run startTest.sh once the Access Setup is ready.
5. The reports will be available in - $KATALON-PROJECT-LOCATON/AccessWeb/ExtentReports  folder.
