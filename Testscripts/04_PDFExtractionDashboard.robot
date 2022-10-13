*** Settings ***
Documentation       PDFExtraction scenario through the Dashboard
Resource        ../PageObjectModel/RobotFiles/LoginPage.robot
Resource        ../PageObjectModel/RobotFiles/DashboardPage.robot
Library     ExcelLibrary
Library     ../Utilities/Reusable.py
Test Setup     Setup
Test Teardown      Teardown

*** Variables ***
${path_excel}       C:\\Users\\00002473\\OneDrive - ArisGlobal Software Pvt. Ltd.,\\MachineLearning\\All Projects Evidence\\11.0\\Testing Evidence\\Praveen\\ADE_WithElasticSearch.xlsx

*** Test Cases ***
TC001
    [Documentation]     PDF Extraction in Dashboard
    [Tags]      Regression
    Go To       ${aimladminurlpreval}

#TC002
#    [Tags]  CSV
#    ${csv_file}=   Reusable.Read Csv File    self    C:\\Users\\00002473\\OneDrive - ArisGlobal Software Pvt. Ltd.,\\MachineLearning\\All Projects Evidence\\11.0\\Testing Evidence\\Praveen\\ADE_WithElasticSearch.csv
#    FOR    ${csvdata}    IN RANGE    1    ${csv_file}
#        Log To Console    ${csvdata}
#    END

    Login to the Application
    Check the Landing page after login
    Select the DB

    #Dashboard page
    Dashboard Page Title Check
    Periodic Performance with PDF Extraction in Dashboard
    Navigate to Attribute Performance tab
    Form Type Performance with PDF Extraction in Dashboard

    #Logout
    Logout from the Application

*** Keywords ***
Test the ExcelData
    ${my_data_as_list}=    Create List
    #open the Excel  ${path_excel}
    open excel document   filename=${path_excel}  doc_id=Sheet1
    ${strRowCount}      Get Count    filename    Sheet1

    FOR   ${i}   IN  2  ${strRowCount}
      ${my_data}=  Read Excel Cell  row_num=${i}  col_num=1
      Log to Console  ${my_data}
      Append To List    ${my_data_as_list}      ${my_data}
      Log to Console   ${my_data_as_list}
    END