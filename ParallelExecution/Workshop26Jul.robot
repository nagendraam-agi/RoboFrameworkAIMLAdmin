*** Settings ***
Documentation       ${docsettings}
Library     SeleniumLibrary
Library     pabot.pabotLib
Resource        ../reusable/Common.robot
Variables       ../reusable/pom.py
Suite Setup     readXML
Test Setup     Setup
Test Teardown      Teardown
Library    Telnet
Library    XML

*** Test Cases ***
TC001
    [Documentation]     ${docTC001}
    [Tags]  ${tagTC001}
    Go To    ${arisurlpath}
    Sleep    5
    # Validate Current page title
    ${current_page_title}     get title
    Log     ${current_page_title}
    should be equal     ${current_page_title}     ${aristitle}
    Log     ${logtitle}

    # Validate Logo
    Page Should Contain Element    ${imgarisglobal}
    Log     ${logimgaris}

    # Validate Header “Delivering safer, faster breakthroughs”
    Page Should Contain Element    ${txtheader}
    Log     ${logheaderval}

    # Validate Primary Menu bar options
    Page Should Contain Element    ${lnklifesphere}
    Log     ${loglnklifesphereval}

    Page Should Contain Element        ${lnkwhoweare}
    Log     ${loglnkwhoweareval}

    Page Should Contain Element    ${lnkourcustomers}
    Log     ${loglnkourcustomersval}

    Page Should Contain Element    ${lnknews}
    Log     ${lognewsval}

TC002
    [Documentation]     ${docTC002}
    [Tags]      ArisPageValidation
    Go To       ${arisurlpath}
    Sleep       5
    
    #   Hover on LifeSphere
    Mouse Over    ${lnklifesphere}
    
    #   Hover On LifeSphere Medical Affairs
    Mouse Over    ${lnkmedicalaffairs}
    Sleep   1

    #   Click on Reporter
    Click Element    ${lnkreporter}
    Sleep   1
    Wait Until Element Is Visible   ${spnreporter}
    Sleep   2

    #   Validate Watch a Video button
    Page Should Contain Element     ${btnwatchthevideo}
    Log     ${logbtnwatchthevideo}
    Sleep   2

    #   Validate Schedule a Demo button
    Page Should Contain Element     ${btnscheddemo}
    Log     ${logscheddemo}
    Sleep   2

    #   Click on Schedule a Demo button
    Click Element    ${btnscheddemo}
    Sleep    2
    Log     ${logscheddemoclk}
    Sleep    5

    #   Fill the form
    Select Frame        ${iframeclk}
    Scroll Element Into View    ${txtfirstname}
    Sleep    3
    Input Text      ${txtfirstname}     Nagendra
    Input Text      ${txtlastname}      AM
    Input Text      ${txtcompname}      arisglobal
    Input Text      ${txtjobtitle}      jobtitle
    Click Element    ${drphqcountry}
    select from list by index    ${drphqcountry}    5
#    ${drpcountries} Select from list        label=${drphqcountryvals}
#    Select From List By Value       label=${drphqcountryvals}[4]
#    Click Element    ${drphqcountryval}
    Input Text      ${txtemail}    testemail@xxxxxx.com
    Click Element    ${drpareaofint}
    Click Element    ${drpareaofintval}

    #   Validate Request Demo button but don’t click on it
    Page Should Contain Element    ${btnrequestdemo}


#TC003
#    [Documentation]     ${docTC003}
#    [Tags]      ArisLeadershipURLValidation
#    Go To    ${arisurlleadership}
#    Sleep   1
#    Scroll Element Into View        ${bodval}
#    Sleep    5
#
#    # Validate Executive Team is selected by default
#    Page Should Contain Element      ${exeteamvaldef}
#    Log     Executive Team element is selected by default
#    Sleep    5
#
#    # Validate names are changing
#    # Executive team names
#    ${exeteammembersgrid}      Get WebElements      ${gridteam}
#    ${exeteammembersnames}     Get Text    ${exeteammembersgrid}
#    Log     ${exeteammembersnames}
#    Sleep    2
#
#    # Click on Board of Directors
#    Click Element       ${bodval}
#    Log     Clicked Board Of Directors button
#    Sleep    5
#
#    # BOD team names
#    ${bodteammembersgrid}      Get WebElements      ${gridteam}
#    ${bodteammembersnames}     Get Text    ${bodteammembersgrid}
#    Log     ${bodteammembersnames}
#
##    Should Be Equal As Strings     ${exeteammembersnames}       ${bodteammembersnames}
#
#    Run Keyword If      ${exeteammembersnames} == ${bodteammembersnames}     Log     Names are not matching
#
##
##    # Click on Advisory Board
##    Click Element    ${advval}
##
##    # Advisory board team names
##    ${advteammembersgrid}      Get WebElements      ${gridteam}
##    ${advteammembersnames}     Get Text    ${advteammembersgrid}
##    Log     ${advteammembersnames}
##
##    IF    ${bodteammembersnames} == ${advteammembersnames}
##        Log     Names are matching
##    ELSE
##         Log    Names are not matching
##    END
#
#TC004
#    [Documentation]     ${docTC004}
#    [Tags]      Careerspagevalidation
#    Go To    ${arisurlpath}
#    Sleep    4
#    # Click on Careers
#    Click Element    ${btncareers}
#
#    # Click on View Job Openings at ArisGlobal button
#    Scroll Element Into View        ${btnjobopenings}
#    SLeep       2
#    Click Element    ${btnjobopenings}
#    Sleep    2
#    Scroll Element Into View    ${keysearch}
#    Input Text      ${keysearch}        automation testing
#    Input Text      ${locsearch}        India
#    Click Element       ${btnsearchjobs}
#    #   Search for automation testing and Location as India
#
#
#
#
##TC005 Aris Careers URL Validation
##    [Documentation]     Validate https://www.arisglobal.com/careers/ page-Sce2
##    [Tags]  Page Validation
##    Go To    ${ariscareersurlpath}
