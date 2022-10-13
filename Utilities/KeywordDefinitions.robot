*** Settings ***
Library     SeleniumLibrary
Library     ../Utilities/Reusable.py
#Library     OpenPyxlLibrary
Library     DateTime
Library     ExcelLibrary
Variables         ../PageObjectModel/Locators/Locators.py
Variables         ../PageObjectModel/Testdata/Testdata.py

*** Keywords ***
XMLdata
    ${chromepath}   Reusable.readXMLAsPerNode   chromepath
    Set Global Variable    ${chromepath}
    ${aimladminurl}   Reusable.readXMLAsPerNode     aimladminurl
    Set Global Variable    ${aimladminurl}
    ${arisusername}   Reusable.readXMLAsPerNode     arisusername
    Set Global Variable    ${arisusername}
    ${arispwd}   Reusable.readXMLAsPerNode     arispwd
    Set Global Variable    ${arispwd}
    ${aristitle}   Reusable.readXMLAsPerNode     aristitle
    Set Global Variable    ${aristitle}

EnterTextData
    [Arguments]    ${textelement}    ${data}
    Input Text    ${textelement}    ${data}

Click the Element
    [Arguments]     ${element}
    Click Element    ${element}
    Sleep    1

Link check
    [Arguments]     ${clickele}     ${pgtitle}
    Click the Element    ${clickele}
    Sleep    3
    ${handles}=  Get Window Handles
    Switch Window   ${handles}[1]
    Sleep    5
    Validate Current page title    ${pgtitle}
    Close Window
    ${handles}=  Get Window Handles
    Switch Window   ${handles}[0]

Handle PopUps
    [Arguments]     ${popup}    ${btnyesno}
    ${c} =   Get Element Count     ${popup}
    Run Keyword If   ${c}>0    Click the Element    ${btnyesno}
    Sleep    2

Landing Page Check
    [Arguments]     ${LandingPage}
    Wait Until Element Is Visible       ${LandingPage}
    Log     Welcome page displayed

Validate Current page title
    [Arguments]     ${pagetitle}
    ${current_page_title}     get title
    Log     ${current_page_title}
    should be equal     ${current_page_title}       ${pagetitle}

Validate Logo
    [Arguments]     ${logoelement}
    Page Should Contain Element    ${logoelement}
    ${txtlogo}      Get Text    ${logoelement}
    Log     ${txtlogo}

Check Page contains element
    [Arguments]     ${element}      ${comparingelementtxt}
    Page Should Contain Element    ${element}
    ${txtelement}   Get Text    ${element}
    Log     ${txtelement}
    Run Keyword If      """${txtelement}""" == """${comparingelementtxt}"""        Log       ${txtelement}
    Sleep    2

Select Value From Dropdown
    [Arguments]     ${dropdown}     ${dropdownval}
    Select From List By Value  ${dropdown}      ${dropdownval}
    Sleep    3

Navigate to tab
    [Arguments]     ${clickele}    ${comparingelement}
    Click the Element    ${clickele}
    Sleep    2
    Check Page contains element    ${clickele}    ${comparingelement}

Select from Menu
    [Arguments]     ${mouseoverele}     ${clickele}     ${checkele}
    Mouse Over    ${mouseoverele}
    Sleep    1
    Mouse Down On Link    ${clickele}
    Sleep    1
    Set Selenium Implicit Wait      2s
    Run keyword until success       Click Link    ${clickele}
    Check Page contains element    ${clickele}      ${checkele}

Logout
    [Arguments]     ${element1}      ${element2}      ${popup}        ${btnyesno}
    Click the Element    ${element1}
    Sleep    2
    Click the Element    ${element2}
    Handle PopUps    ${popup}    ${btnyesno}

Run keyword until success
    [Arguments]     ${KW}       @{KWARGS}
    Wait Until Keyword Succeeds    400s    1s    ${KW}       @{KWARGS}

#Get page screenshot
#    Capture Page Screenshot

Get list value for data
    [Arguments]    ${i}
    @{exceldata}        Create List     'litabstractdata', 'litfulltextdata', 'shortdescdata', 'sourcenarrativedata'
    [Return]    ${list[${i}]}

Select all the elements from a locator
    [Arguments]     ${item_locator}
    ${item_xpath}=    Set Variable       ${item_locator}
    ${item_count}=    get element count       ${item_xpath}
    FOR    ${i}    IN RANGE    1    ${item_count} + 1
        ${element}=    Set Variable       (${item_xpath})[${i}]
        Click the Element   ${element}
    END

Periodic Performance PDF Extraction
    Click the Element    ${drpimgservicetype}
    ${servicetypeeles}=    get element count       ${servicetypeelements}
    FOR    ${l}    IN RANGE    1    ${servicetypeeles} + 1
        ${serviceelement}=    Set Variable       (${servicetypeelements})[${l}]
        ${text}=        Get Text    ${serviceelement}
        Log    ${text}
        Run Keyword If      """${text}""" == """${servicetypedata}"""        Click the Element    ${serviceelement}
    END

    Click the Element    ${drpimgscoretype}
    ${scoretypeeles}=    get element count       ${scoretypeelements}
    FOR    ${i}    IN RANGE    1    ${scoretypeeles} + 1
        ${scoreelement}=    Set Variable       (${scoretypeelements})[${i}]
        Click the Element       ${scoreelement}
    END

    Click the Element    ${drpimgformtype}
    ${formtypeeles}=    get element count       ${formtypeelements}
    FOR    ${k}    IN RANGE    1    ${formtypeeles} + 1
        ${formelement}=    Set Variable       (${formtypeelements})[${k}]
        Click the Element    ${formelement}
    END

    Click the Element    ${drpimgperiod}
    ${periodeles}=    get element count       ${periodelements}
    Click the Element    ${drpimgperiod}
    FOR    ${j}    IN RANGE    1    ${periodeles} + 1
        ${perelement}=    Set Variable       (${periodelements})[${j}]
        Click the Element    ${drpimgperiod}
        Sleep    1
        Click the Element    ${perelement}
        Click the Element    ${btngenerate}
    END

Form Type Performance PDF Extraction
    Click the Element    ${drpimgservicetypeattperf}
    ${servicetypeattperfeles}=    get element count       ${servicetypeelementsattperf}
    FOR    ${l}    IN RANGE    1    ${servicetypeattperfeles} + 1
        ${serviceelementattperf}=    Set Variable       (${servicetypeelementsattperf})[${l}]
        ${text}=        Get Text    ${serviceelementattperf}
        Log    ${text}
        Run Keyword If      """${text}""" == """${servicetypedata}"""        Click the Element    ${serviceelementattperf}
    END

    Click the Element    ${drpimgscoretypeattperf}
    ${scoretypeelesattperf}=    get element count       ${scoretypeelementsattperf}
    FOR    ${i}    IN RANGE    1    ${scoretypeelesattperf} + 1
        ${scoreelementattperf}=    Set Variable       (${scoretypeelementsattperf})[${i}]
        Click the Element       ${scoreelementattperf}
    END

    Click the Element    ${drpimgformtypeattperf}
    ${formtypeelesattperf}=    get element count       ${formtypeelementsattperf}
    Click the Element    ${drpimgformtypeattperf}
    FOR    ${k}    IN RANGE    1    ${formtypeelesattperf} + 1
        ${formelementattperf}=    Set Variable       (${formtypeelementsattperf})[${k}]
        Click the Element    ${drpimgformtypeattperf}
        Sleep    1
        Click the Element    ${formelementattperf}
        Click the Element    ${drpimgperiodattperf}
        ${periodelesattperf}=    get element count       ${periodelementsattperf}
        Click the Element    ${drpimgperiodattperf}
        FOR    ${j}    IN RANGE    1    ${periodelesattperf} + 1
            ${perelementattperf}=    Set Variable       (${periodelementsattperf})[${j}]
            Click the Element    ${drpimgperiodattperf}
            Sleep    1
            Click the Element    ${perelementattperf}
            Click the Element    ${btngenerateattperf}
        END
    END

#Read Excel Data and get value
#    [Arguments]     ${sheetname}    ${colname}     ${filepath}      ${element}
#    ${excel_val}=   Reusable.open_and_read_excel_file    ${sheetname}    ${colname}    ${filepath}
#    FOR     ${data}     IN ENUMERATE      @{excel_val}    #loop to print the excel sheet value on console
#        Log     ${data}
#        EnterTextData    ${element}    ${data}
#    END

Read Excel Data and get value
    [Arguments]     ${sheetname}    ${colname}     ${filepath}
    ${excel_val}=       Reusable.Open And Read Excel File    ${sheetname}    ${colname}    ${filepath}
    FOR     ${data}     IN ENUMERATE      @{excel_val}    #loop to print the excel sheet value on console
        Log     ${data}
    END

Manipulate current time
    ${CurrentDate}=  Get Current Date  result_format=%Y-%m-%d %H:%M:%S.%f
#    Log  Current date and time is:      ${CurrentDate}
#    ${newdatetime} =  Add Time To Date  ${CurrentDate}  2 days
#    Log  ${newdatetime}
#    ${newdatetime} =  Add Time To Date  ${CurrentDate}  2 hours
#    Log  ${newdatetime}
#    ${newdatetime} =  Add Time To Date  ${CurrentDate}  30 minutes
#    Log  ${newdatetime}
    ${newdatetime} =  Add Time To Date  ${CurrentDate}  0 seconds
#    Log  ${newdatetime}


#Take Full Page Screenshot
#    FOR    ${i}    IN RANGE    4
#        Capture Page Screenshot
#        Press Keys    None    PAGE_DOWN
#    END
