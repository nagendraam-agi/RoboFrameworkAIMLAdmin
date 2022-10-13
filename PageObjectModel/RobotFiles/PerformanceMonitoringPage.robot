*** Settings ***
Documentation       PerformanceMonitoringPageFunctions
Library     SeleniumLibrary
Resource    ../../Utilities/Common.robot

*** Keywords ***
Performance Monitoring Page Title Check
    Validate Current page title    ${PerformanceMonitoringtitle}

Navigate to Performance Monitoring tab
    Navigate to tab    ${tabperformancemonitoring}      ${servicetypeattributeperf}
    Sleep    2

Navigate to Performance Monitor Queue tab
    Navigate to tab    ${tabperformancemonitorqueue}    ${jobid}
    Sleep    2