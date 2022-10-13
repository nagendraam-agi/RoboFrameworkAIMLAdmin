*** Settings ***
Documentation       PerformanceMonitoringPageFunctions
Library     SeleniumLibrary
Resource    ../../Utilities/Common.robot

*** Keywords ***
Resource Page Title Check
    Validate Current page title    ${resourcetitle}

Navigate to Resource page
    Navigate to tab    ${tabresource}      ${tabnlp}
    Click the Element    ${tabpdfextraction}
    Click the Element    ${tabclientappqueries}
    Click the Element    ${lnkclientappqueries}

