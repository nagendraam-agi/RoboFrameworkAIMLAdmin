*** Settings ***
Documentation       LoginPageFunctions
Library     SeleniumLibrary
Resource     ../../Utilities/Common.robot

*** Keywords ***
Login Page Title Check
    Validate Current page title     ${loginpagetitle}

AG Logo Check
    Validate Logo       ${loginpgagimg}

AG&LS Check
    Check Page contains element     ${txtagls}      ${txtaglsdata}

Login Apps Check
    Check Page contains element    ${loginapps}     ${loginappsdata}

Forgot password link test
    Sleep    1
    InputText    ${usernamefield}      ${validuser}
    Click Element    ${forgotpwd}
    Validate Current page title    ${loginpagetitle}

Footer Text Check
    # Check the footer text is matching - Yet to implement
    ${txtlgnfooter}     Get Text     ${loginfooter}
    Log     ${txtlgnfooter}

Privacy Link Check
    Link check    ${privacypolicy}    ${titleprivacylandingpage}

ArisWebsite Link Check
    Link check    ${arislink}    ${titlearislink}

Check the Landing page after login
    Landing Page Check    ${DashboardLandingPage}

Login to the Application
    Validate Current page title    ${loginpagetitle}
    EnterTextData       ${usernamefield}      ${validuser}
    EnterTextData       ${passwordfield}      ${validpassword}
    Click the Element       ${login_button}
    Sleep    1
    Handle PopUps    ${popupcontainer}    ${loginpopupyes}
    Sleep    2

Invalid Login Check
    [Arguments]     ${username}     ${password}
    EnterTextData       ${usernamefield}      ${username}
    EnterTextData       ${passwordfield}      ${password}
    Click the Element       ${login_button}
    Sleep    1

Select the DB
    Select Value From Dropdown    ${dropdownelement}      ${dropdownvaldev}

Logout from the Application
    Logout      ${iconuserdetails}      ${signout}      ${confirmpopup}    ${signoutconfirmyes}