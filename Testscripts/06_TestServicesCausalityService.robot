*** Settings ***
Documentation       Logs in and tests Causality Service
Resource        ../PageObjectModel/RobotFiles/LoginPage.robot
Resource        ../PageObjectModel/RobotFiles/TestServices.robot


Test Setup     Setup
Test Teardown      Teardown


*** Test Cases ***
TC001
    [Template]  Run Keyword And Continue On Failure
    [Documentation]     Logs in and tests Causality Service
    [Tags]      TestServiceCausalityService

    Go To       ${aimladminurldev}
#    Test Read
    Login to the Application
    Check the Landing page after login
    Select the DB
    Navigate to Test Services page
    Causality Service Default
#    Causality Service Custom
    Logout from the Application