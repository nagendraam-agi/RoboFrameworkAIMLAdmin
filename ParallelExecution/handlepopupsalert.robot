*** Settings ***
Documentation  handlepopupsalert
Resource        ../reusable/Common.robot
Variables       ../reusable/pom.py
Suite Setup     readXML
Test Setup     Setup
Test Teardown      Teardown

*** Variables ***


*** Keywords ***

*** Test Cases ***
TC001 Handle Alerts
    [Documentation]     Some basic operations are performed using alert
    [Tags]  alertpopupshandling
    Log     starttime

    # Validate the confirmation
    Go To    ${popupurl}
    Click Button    ${btnclickjsalert}
    Sleep       1
    ${pop-up-text}      Handle Alert
    Log     ${pop-up-text}
    Element Text Should Be    result    You successfully clicked an alert
    Sleep       1

TC002
    # Click for JS confirm
    [Documentation]     Some basic operations are performed using alert confirm
    [Tags]  alertpopupsconfirmationhandling
    Go To    ${popupurl}

    # Validate the confirmation
    Click Button    //button[text()='Click for JS Confirm']
    Sleep       1
    ${pop-up-text}      Handle Alert    action=DISMISS
    Sleep    2
    Element Text Should Be    result    You clicked: Cancel

TC003
    # Click for JS Prompt
    Go To    ${popupurl}
    Click Button    //button[text()='Click for JS Prompt']
    Sleep       1

    # Click on Cancel button first and do the validation
    ${pop-up-text}      Handle Alert        action=DISMISS
    Log        ${pop-up-text}
    Element Text Should Be      //p[@id = 'result']     You entered: null
    Sleep       1

    # Validate the confirmation
    Click Button    //button[text()='Click for JS Prompt']
    Sleep       1
    Input Text Into Alert    Nagendra       action=ACCEPT
    Element Text Should Be    //p[@id = 'result']    You entered: Nagendra
    Log     endtime