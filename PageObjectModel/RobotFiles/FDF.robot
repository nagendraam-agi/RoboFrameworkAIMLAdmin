*** Settings ***
Documentation       PerformanceMonitoringPageFunctions
Library     SeleniumLibrary
Resource    ../../Utilities/Common.robot

*** Keywords ***
FDF Page Title Check
    Validate Current page title    ${fdftitle}

Navigate to FDF page
    Navigate to tab    ${tabfdf}      ${fdflisting}
