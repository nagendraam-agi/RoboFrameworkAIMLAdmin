*** Settings ***
Documentation       Login and Navigate Pages
Resource        ../PageObjectModel/RobotFiles/LoginPage.robot
Resource        ../PageObjectModel/RobotFiles/TestServices.robot


Test Setup     Setup
Test Teardown      Teardown


*** Test Cases ***
TC001
    [Template]  Run Keyword And Continue On Failure
    [Documentation]     Logs in and navigates to all the pages in the application
    [Tags]      TestServicePDFExtractor

    Go To       ${aimladminurldev}
#    Test Read
    Login to the Application
    Check the Landing page after login
    Select the DB
    Navigate to Test Services page
    PDF Extractor Service
    Logout from the Application