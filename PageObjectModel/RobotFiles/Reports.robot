*** Settings ***
Documentation       PerformanceMonitoringPageFunctions
Library     SeleniumLibrary
Resource    ../../Utilities/Common.robot

*** Keywords ***
Reports Page Title Check
    Validate Current page title    ${Reportspagetitle}

Navigate to Reports page
    Navigate to tab    ${tabreports}      ${reportsbreadcrumb}
    Click the Element    ${reportdefs}
    Click the Element    ${savedreports}
    Click the Element    ${generatedreports}
    Handle PopUps    ${warningmsg}    ${btnok}
