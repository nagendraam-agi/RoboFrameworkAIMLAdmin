gitHub URL: https://github.com/mroygithub/Roo_Trai_Batch2

Actual command: python -m robot -d Reports <filename.robot> Full path of the robot file should be entered

Command with Tags: python -m robot  -d Reports -i <Tag Name of the Test case>\RobotTest.robot
python -m robot  -d Reports -i LoginAndNavigatePages testscripts\PageNavigationTest.robot

Running the failed test cases, we should run the below command:
python -m robot --rerunfailed Reports/output.xml testscripts/filename.robot

Running files with [Tags] as Smoke(for eg): python -m robot -d Reports -i Smoke Testscripts

python -m robot -d Reports -i Smoke Testscripts

C:\Users\00002473\AppData\Local\Microsoft\WindowsApps --> python exe installed