*** Settings ***
Documentation      Checks all the elements in Login page
Resource        ../PageObjectModel/RobotFiles/LoginPage.robot
Resource        ../PageObjectModel/RobotFiles/TestServices.robot

Test Setup     Setup
Test Teardown      Teardown


*** Test Cases ***
TC001
    [Documentation]     Login Page Elements Check
    [Tags]      Regression
    Go To       ${aimladminurlqc}

#    Login Page Title Check
#    AG Logo Check
#    AG&LS Check
#    Login Apps Check
#    Forgot password link test
#    Footer Text Check
#    Privacy Link Check
#    ArisWebsite Link Check