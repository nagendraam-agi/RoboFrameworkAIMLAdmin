*** Settings ***
Documentation       Login and Navigate Pages
Resource        ../PageObjectModel/RobotFiles/LoginPage.robot
Resource        ../PageObjectModel/RobotFiles/TestServices.robot


Test Setup     Setup
Test Teardown      Teardown


*** Test Cases ***
TC001
#    [Template]  Run Keyword And Continue On Failure
    [Documentation]     Logs in and navigates to all the pages in the application
    [Tags]      TestServices
    Go To       ${aimladminurlqc}

    Login to the Application
    Check the Landing page after login
    Select the DB
    Navigate to Test Services page
    NLP Service Test
    Logout from the Application