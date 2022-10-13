*** Settings ***
Documentation       PerformanceMonitoringPageFunctions
Library     SeleniumLibrary
Resource    ../../Utilities/Common.robot

*** Keywords ***
Service Logs Page Title Check
    Validate Current page title    ${servicelogstitle}

Navigate to Service Logs page
    Navigate to tab    ${tabservicelogs}      ${servicename}
