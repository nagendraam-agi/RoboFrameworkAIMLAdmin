*** Settings ***
Documentation       TestServicesPageFunctions
Library     Collections
Library     SeleniumLibrary
Resource     ../../Utilities/Common.robot


*** Keywords ***
Test Services Page Title Check
    Validate Current page title    ${testservicestitle}

Navigate to Test Services page
    Navigate to tab    ${tabtestservices}      ${nlpservice}

Test Read
    ${litabstractdata}=   Reusable.open_and_read_excel_file    ${sheetname}    ${colval}    ${filepathlitabs}
    @{short_list}=      Create List  0   1   2   3   4   5   6   7   8   9
    FOR     ${data}     IN     @{litabstractdata}
         log     ${data}
    END

NLP Service Test
    ${litabstractdata}=   Reusable.open_and_read_excel_file    ${sheetname}    ${colval}    ${filepathlitabs}
    ${litfulltextdata}=   Reusable.open_and_read_excel_file    ${sheetname}    ${colval}    ${filepathfulltext}
    ${shortdescdata}=   Reusable.open_and_read_excel_file    ${sheetname}    ${colval}    ${filepathshortdesc}
    ${sourcenarrativedata}=   Reusable.open_and_read_excel_file    ${sheetname}    ${colval}    ${filepathsourcenart}
    Check Page contains element    ${tabtestservices}    ${tabtestservicestxt}
    ${radiobtnstestservices}=    get element count       ${radiobtns}
    FOR    ${i}    IN RANGE    1    ${radiobtnstestservices} + 1
        ${radiobtn}=    Set Variable       (${radiobtns})[${i}]
        Click the Element       ${radiobtn}
        Click the Element       ${drpimgsummarytype}
        ${summarytypecount}=    get element count       ${summarytype}
        FOR    ${j}    IN RANGE    1    ${summarytypecount} + 1
            ${summarytypeelement}=    Set Variable       (${summarytypeelements})[${j}]
            ${txtsummarytype}       Get Text     ${summarytypeelement}
            Log     ${txtsummarytype}
            IF    """${txtsummarytype}""" == """${litabs}"""
                Click the Element       ${summarytypeelement}
                FOR     ${data}     IN     @{litabstractdata}
                    Log     ${data}
                    InnerloopSendtoNLP      ${sampledata}      ${data}
                END
            ELSE IF     """${txtsummarytype}""" == """${litfull}"""
                Click the Element       ${summarytypeelement}
                FOR     ${data}     IN     @{litfulltextdata}
                    InnerloopSendtoNLP      ${sampledata}      ${data}
                END
            ELSE IF     """${txtsummarytype}""" == """${shortdesc}"""
                Click the Element       ${summarytypeelement}
                FOR     ${data}     IN     @{shortdescdata}
                    InnerloopSendtoNLP      ${sampledata}      ${data}
                END
            ELSE IF     """${txtsummarytype}""" == """${sourcenarrat}"""
                Click the Element       ${summarytypeelement}
                FOR     ${data}     IN     @{sourcenarrativedata}
                    InnerloopSendtoNLP      ${sampledata}      ${data}
                END
            END
            Click the Element       ${drpimgsummarytype}
        END
    END

InnerloopSendtoNLP
    [Arguments]     ${sampledata}      ${data}
    EnterTextData       ${sampledata}       ${data}
    Click the Element    ${sendtonlp}
    Log     Start of the Loop
    ${CurrentDateBefore}=  Get Current Date  result_format=%Y-%m-%d %H:%M:%S.%f
    Sleep    5
    Run keyword until success       Wait Until Element Is Visible    ${popupafternlp}
    ${elementpresent}=  Run Keyword And Return Status    Element Should Be Visible   xpath= ${popupafternlp}
    Run Keyword If    ${elementpresent}    Click the Element    ${btndownload}
    ${CurrentDateAfter}=  Get Current Date  result_format=%Y-%m-%d %H:%M:%S.%f
    ${timetakentocomplete}=        Subtract Date From Date     ${CurrentDateAfter}       ${CurrentDateBefore}
    Sleep   5

PDF Extractor Service
    Check Page contains element    ${tabtestservices}    ${tabtestservicestxt}
    Scroll Element Into View    ${relevancylabel}
    Check Page contains element    ${pdfextlabel}    ${pdfextlabeltxt}
    Click the Element    ${btnbrowse}
    Sleep   3
    Reusable.select_file     ${pdffilepath}
    Sleep    3
    Click the Element    ${btnsendtopdf}
    Run keyword until success       Wait Until Element Is Visible    ${popupsendtopdf}
    Sleep    1
    Click the Element    ${popupclose}
    Sleep    1
    Click the Element    ${btndownloadpdf}


Relevancy Service
    ${litabstractdata}=   Reusable.open_and_read_excel_file    ${sheetname}    ${colval}    ${filepathlitabs}
    Check Page contains element    ${tabtestservices}    ${tabtestservicestxt}
    Scroll Element Into View    ${aiencoderlabel}
    Check Page contains element    ${litabslabel}    ${litabslabeltxt}
    FOR     ${data}     IN      @{litabstractdata}
        log     ${data}
        EnterTextData    ${litabstextarea}    ${data}
        Sleep   1
        Click the Element    ${btnsendtorelevancy}
        Run keyword until success       Wait Until Element Is Visible    ${popupreloutput}
        Sleep    1
        ${txtoutput}       Get Text     ${popupreloutput}
        Log     ${txtoutput}
    END

AIEncoder Service
    ${adedata}=   Reusable.open_and_read_excel_file    ${sheetname}    ${colval}    ${filepathsourceade}
    Scroll Element Into View    ${findcoordlabel}
    Check Page contains element    ${verbatimtermlabel}    ${verbatimtermlabeltxt}
    FOR     ${data}     IN      @{adedata}
        Log     ${data}
        EnterTextData    ${inpverbatimterm}    ${data}
        Sleep   1
        Click the Element    ${btnsendtoaiencoder}
        Run keyword until success       Wait Until Element Is Visible    ${popupencoderoutput}
        Sleep    1
        ${txtoutput}       Get Text     ${popupencoderoutput}
        Log     ${txtoutput}
        Sleep   1
        Click the Element    ${btndownloadencoder}
        Sleep   2
    END

Causality Service Default
    Check Page contains element    ${tabtestservices}    ${tabtestservicestxt}
    Scroll Element Into View    ${btnsendtocausality}
    Check Page contains element    ${causalitylabel}    ${causalitylabeltxt}
    Check Page contains element    ${causalityfiletype}    ${causalityfiletypetxt}
    Check Page contains element    ${radiodefault}      ${radiodefaulttxt}
    Check Page contains element    ${radiocustom}      ${radiocustomtxt}
    Check Page contains element    ${causalityassesslabel}      ${causalityassesslabeltxt}
    Check Page contains element    ${uploadjson}        ${uploadjsontxt}
    Sleep    3
    Click the Element    ${btnsendtocausality}

Causality Service Custom
    Check Page contains element    ${tabtestservices}    ${tabtestservicestxt}
    Scroll Element Into View    ${btnsendtocausality}
    Check Page contains element    ${causalitylabel}    ${causalitylabeltxt}
    Check Page contains element    ${causalityfiletype}    ${causalityfiletypetxt}
    Check Page contains element    ${radiodefault}      ${radiodefaulttxt}
    Check Page contains element    ${radiocustom}      ${radiocustomtxt}
    Check Page contains element    ${causalityassesslabel}      ${causalityassesslabeltxt}
    Check Page contains element    ${uploadjson}        ${uploadjsontxt}
    Click the Element    ${btncustom}
    Sleep    1
    ${causalcheckboxescount}=    get element count       ${causalcheckboxes}
    FOR    ${i}    IN RANGE    1    ${causalcheckboxescount} + 1
        ${checkbox}=    Set Variable       (${causalcheckboxes})[${i}]
        Click the Element       ${checkbox}
    END
    FOR    ${i}    IN RANGE    1    ${causalcheckboxescount} + 1
        ${checkbox}=    Set Variable       (${causalcheckboxes})[${i}]
        Click the Element       ${checkbox}
        Click the Element    ${btnbrowsecausality}
        Sleep   3
        Reusable.select_file     ${filepathjson}
        Sleep    3
        Click the Element    ${btnsendtocausality}
        Run keyword until success       Wait Until Element Is Visible    ${popupsendtopdf}
        Sleep    1
        Click the Element    ${popupclose}
        Sleep    1
        Click the Element    ${btndownloadpdf}
    END