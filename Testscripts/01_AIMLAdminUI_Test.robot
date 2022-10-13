*** Settings ***
Documentation       LoginTest
Resource        ../PageObjectModel/RobotFiles/LoginPage.robot
Test Setup      Setup
Test Teardown       Teardown
Test Template     Login With Invalid Credentials Should Fail

*** Test Cases ***               USERNAME        PASSWORD
Invalid Username                 invalid          ${validpassword}
Invalid Password                 ${validuser}    invalid
Invalid Username And Password    invalid          whatever
Empty Username                   ${EMPTY}         ${validpassword}
Empty Password                   ${validuser}    ${EMPTY}
Empty Username And Password      ${EMPTY}         ${EMPTY}

*** Keywords ***
Login With Invalid Credentials Should Fail
    [Arguments]     ${username}     ${password}
    Go To       ${aimladminurlpreval}
    Invalid Login Check        ${username}     ${password}
    Sleep    2
    Page Should Contain Element    ${errpopup}
    Title Should Be    ${errpgtitle}
    ${errmsg}    Get Text    //div[@class='ag-msg-error']
    Log     ${errmsg}