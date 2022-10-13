*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library     ../Utilities/Reusable.py
Resource        ../Utilities/KeywordDefinitions.robot
Variables         ../PageObjectModel/Locators/Locators.py
Variables         ../PageObjectModel/Testdata/Testdata.py

Library         ExcelLibrary

*** Variables ***
${BROWSER}     Chrome

*** Keywords ***
Setup chromedriver
  Set Environment Variable  webdriver.chrome.driver  C:\bin\chromedriver.exe

Setup
  Setup chromedriver
  Open Browser   about:blank    ${BROWSER}
  Maximize Browser Window

Teardown
   close browser