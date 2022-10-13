*** Settings ***
Documentation       PerformanceMonitoringPageFunctions
Library     SeleniumLibrary
Resource    ../../Utilities/Common.robot

*** Keywords ***
Threshold configuration Page Title Check
    Validate Current page title    ${thresholdconfigtitle}

Navigate to Threshold configuration page
    Navigate to tab    ${tabthresholdconfig}      ${txtthresholdconfig}
