*** Settings ***
Documentation       PerformanceMonitoringPageFunctions
Library     SeleniumLibrary
Resource    ../../Utilities/Common.robot

*** Keywords ***
Codelist Page Title Check
    Validate Current page title    ${codelisttitle}

Partner Codelist Page Title Check
    Validate Current page title    ${partnercodelisttitle}

Select Codelist from menu
    Select from Menu    ${tabcodelist}    ${codelistmenu}    ${codelistreadcrumb}

Select Partner Codelist from menu
    Select from Menu    ${tabcodelist}    ${lnkpartnercodelistmenu}    ${partnercodelistreadcrumb}
