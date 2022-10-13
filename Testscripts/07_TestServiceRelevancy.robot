*** Settings ***
Documentation       Relevancy Service Test
Resource        ../PageObjectModel/RobotFiles/LoginPage.robot
Resource        ../PageObjectModel/RobotFiles/TestServices.robot


Test Setup     Setup
Test Teardown      Teardown


*** Test Cases ***
TC001
    [Documentation]     Tests the Relevancy Service
    [Tags]      Relevancy

    Go To       ${aimladminurlqc}
    Login to the Application
    Check the Landing page after login
    Select the DB
    Navigate to Test Services page
    Relevancy Service
    Logout from the Application