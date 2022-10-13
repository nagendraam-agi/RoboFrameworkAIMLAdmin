*** Settings ***
Documentation       Login and Navigate Pages
Resource        ../PageObjectModel/RobotFiles/LoginPage.robot
Resource        ../PageObjectModel/RobotFiles/DashboardPage.robot
Resource        ../PageObjectModel/RobotFiles/PerformanceMonitoringPage.robot
Resource        ../PageObjectModel/RobotFiles/ConfigurationPage.robot
Resource        ../PageObjectModel/RobotFiles/Reports.robot
Resource        ../PageObjectModel/RobotFiles/ModelManagement.robot
Resource        ../PageObjectModel/RobotFiles/Resource.robot
Resource        ../PageObjectModel/RobotFiles/ServiceLogs.robot
Resource        ../PageObjectModel/RobotFiles/TestServices.robot
Resource        ../PageObjectModel/RobotFiles/FDF.robot
Resource        ../PageObjectModel/RobotFiles/ThresholdConfig.robot
Resource        ../PageObjectModel/RobotFiles/Codelist.robot


Test Setup     Setup
Test Teardown      Teardown


*** Test Cases ***
TC001
    [Documentation]     Logs in and navigates to all the pages in the application
    [Tags]      Data
    Go To       ${aimladminurlpreval}

    Login to the Application
    Check the Landing page after login
    Select the DB

    #Dashboard page
    Dashboard Page Title Check
    Navigate to Attribute Performance tab

    #Performance monitoring page
    Navigate to Performance Monitoring tab
    Performance Monitoring Page Title Check
    Navigate to Performance Monitor Queue tab

    #Configuration Page
    Navigate to Configuration page
    Configuration Page Title Check

    #Reports Page
    Navigate to Reports page
    Reports Page Title Check

    #Model Management Page
    Navigate to Model Management page
    Model Management Page Title Check

    #Resource Page
    Navigate to Resource page
    Resource Page Title Check

    #Service Logs Page
    Navigate to Service Logs page
    Service Logs Page Title Check

    #Test Services page
    Navigate to Test Services page
    Test Services Page Title Check

    #FDF page
    Navigate to FDF page
    FDF Page Title Check

    #Threshold configuration page
    Navigate to Threshold configuration page
    Threshold configuration Page Title Check

    #Codelist page
#    Select Codelist from menu
#    Codelist Page Title Check
#    Select Partner Codelist from menu
#    Partner Codelist Page Title Check

    Logout from the Application