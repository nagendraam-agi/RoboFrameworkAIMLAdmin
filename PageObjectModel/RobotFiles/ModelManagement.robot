*** Settings ***
Documentation       PerformanceMonitoringPageFunctions
Library     SeleniumLibrary
Resource    ../../Utilities/Common.robot

*** Keywords ***
Model Management Page Title Check
    Validate Current page title    ${ModelMangementtitle}

Navigate to Model Management page
    Navigate to tab    ${tabmodelmanagement}      ${modellisting}
    Click the Element    ${modeljobqueue}
