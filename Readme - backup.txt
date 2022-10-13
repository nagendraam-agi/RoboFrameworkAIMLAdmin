Class recordings:

URL: https://lms.techedtrainings.com
Username: <Aris Global email ID>
Password: TechEd123!

Robot framework Parallel execution command:
pabot --processes 2 --outputdir Reports ./directoryname

pabot --processes 2 --outputdir results ParallelExecution/*.robot

gitHub URL: https://github.com/mroygithub/Roo_Trai_Batch2

Actual command: python -m robot -d Reports <filename.robot> Full path of the robot file should be entered

Command with Tags: python -m robot  -d Reports -i <Tag Name of the Test case>\RobotTest.robot
python -m robot  -d Reports -i LoginAndNavigatePages testscripts\PageNavigationTest.robot


Running the failed test cases, we should run the below command:
python -m robot --rerunfailed Reports/output.xml testscripts/filename.robot

Running files with tags as Smoke(for eg): python -m robot -d Reports -i Smoke Testscripts

python -m robot -d Reports -i Smoke Testscripts

C:\Users\00002473\AppData\Local\Microsoft\WindowsApps --> python exe installed

1. Create a new account in git

2. Create ssh in local

3. Map local ssh with Git

Ssh-keygen -t rsa ==> Enter

Again don’t type anything in next line ==> Just press Enter

Now it will ask for Password ==> Remember this Password for code checkin and check out

Re Enter the password again….

Go to you .ssh folder under your profile directory —> open id_rsa.pub file using notepad++

Copy the code

Go to Git right top —> Settings —> Left side —> SSH option —> Add the KEY


4. Create Personalized token

Go to Git right top —> Settings —> Left side —> Last option is Developer option —> Personalize access token —> Create and Save it.

5. Code push

echo "# InfyDel1" >> README.md

git init

git add README.md

git commit -m "first commit"

git branch -M main

git remote add GitHub https://mroygithub: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@github.com/mroygithub/InfyDel1.git

git push -u origin main

6. Code pull

Git pull

7. Create a new PR

Just push the code —> this will create a new button on Github —> Click on it and create a new PR

8. Create a Branch

Git checkout -b “branchName”

9. Switch to new branch

Git checkout “branchName”

10. Push your code to new Branch

git push -u origin branchName

10. Play with Branch

11. Merge branch code to main