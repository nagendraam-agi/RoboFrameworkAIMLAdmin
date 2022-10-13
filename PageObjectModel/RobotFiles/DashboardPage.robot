*** Settings ***
Documentation       LoginPageFunctions
Library     SeleniumLibrary
Library     Collections
Resource    ../../Utilities/Common.robot

*** Keywords ***
Dashboard Page Title Check
    Validate Current page title    ${DashboardLandingpagetitle}

Navigate to Attribute Performance tab
    Navigate to tab    ${tabattperf}    ${casetypeattperf}

Periodic Performance with PDF Extraction in Dashboard
    Click the Element    ${drpimgservicetype}
    ${servicetypeeles}=    get element count       ${servicetypeelements}
    FOR    ${l}    IN RANGE    1    ${servicetypeeles} + 1
        ${serviceelement}=    Set Variable       (${servicetypeelements})[${l}]
        ${text}=        Get Text    ${serviceelement}
        Log    ${text}
        Run Keyword If      """${text}""" == """${servicetypedata}"""        Click the Element    ${serviceelement}
    END

    Click the Element    ${drpimgscoretype}
    ${scoretypeeles}=    get element count       ${scoretypeelements}
    FOR    ${i}    IN RANGE    1    ${scoretypeeles} + 1
        ${scoreelement}=    Set Variable       (${scoretypeelements})[${i}]
        Click the Element       ${scoreelement}
    END

    Click the Element    ${drpimgformtype}
    ${formtypeeles}=    get element count       ${formtypeelements}
    FOR    ${k}    IN RANGE    1    ${formtypeeles} + 1
        ${formelement}=    Set Variable       (${formtypeelements})[${k}]
        Click the Element    ${formelement}
    END

    Click the Element    ${drpimgperiod}
    ${periodeles}=    get element count       ${periodelements}
    Click the Element    ${drpimgperiod}
    FOR    ${j}    IN RANGE    1    ${periodeles} + 1
        ${perelement}=    Set Variable       (${periodelements})[${j}]
        Click the Element    ${drpimgperiod}
        Sleep    1
        Click the Element    ${perelement}
        Click the Element    ${btngenerate}
    END

Form Type Performance with PDF Extraction in Dashboard
    Click the Element    ${drpimgservicetypeattperf}
    ${servicetypeattperfeles}=    get element count       ${servicetypeelementsattperf}
    FOR    ${l}    IN RANGE    1    ${servicetypeattperfeles} + 1
        ${serviceelementattperf}=    Set Variable       (${servicetypeelementsattperf})[${l}]
        ${text}=        Get Text    ${serviceelementattperf}
        Log    ${text}
        Run Keyword If      """${text}""" == """${servicetypedata}"""        Click the Element    ${serviceelementattperf}
    END
    Check Page contains element    ${tabformtypeperformance}    ${tabformtypeperformancetext}
    Click the Element    ${drpimgscoretypeattperf}
    ${scoretypeelesattperf}=    get element count       ${scoretypeelementsattperf}
    FOR    ${i}    IN RANGE    1    ${scoretypeelesattperf} + 1
        ${scoreelementattperf}=    Set Variable       (${scoretypeelementsattperf})[${i}]
        Click the Element       ${scoreelementattperf}
    END

    Click the Element    ${drpimgformtypeattperf}
    ${formtypeelesattperf}=    get element count       ${formtypeelementsattperf}
    Click the Element    ${drpimgformtypeattperf}
    FOR    ${k}    IN RANGE    1    ${formtypeelesattperf} + 1
        ${formelementattperf}=    Set Variable       (${formtypeelementsattperf})[${k}]
        Click the Element    ${drpimgformtypeattperf}
        Sleep    1
        Click the Element    ${formelementattperf}

        Click the Element    ${drpimgperiodattperf}
        ${periodelesattperf}=    get element count       ${periodelementsattperf}
        Click the Element    ${drpimgperiodattperf}
        FOR    ${j}    IN RANGE    1    ${periodelesattperf} + 1
            ${perelementattperf}=    Set Variable       (${periodelementsattperf})[${j}]
            Click the Element    ${drpimgperiodattperf}
            Sleep    1
            Click the Element    ${perelementattperf}
            Click the Element    ${btngenerateattperf}
        END
    END