*** Settings ***
Documentation       PerformanceMonitoringPageFunctions
Library     SeleniumLibrary
Resource    ../../Utilities/Common.robot

*** Keywords ***
Configuration Page Title Check
    Validate Current page title    ${Configfurationpagetitle}

Navigate to Configuration page
    Navigate to tab    ${tabconfiguration}      ${tabNLPSettings}
    Check Page contains element    ${tabPDFExtSettings}     ${tabPDFExtSettingsdata}

    Click the Element    ${tabPDFExtSettings}
    Click the Element    ${tabMLSettings}
    Click the Element    ${tabMLSettings}
    Click the Element    ${tabPerfMonSettings}
    Click the Element    ${tabModelManSettings}

