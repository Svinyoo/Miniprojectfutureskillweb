*** Settings ***
Library     SeleniumLibrary
Resource    ../keywords/CommonKeywords.robot
Resource    ../keywords/RegisterPage.robot
Variables   ../resources/config/config.yaml
Variables   ../resources/testdata/testdata.yaml
Suite Setup    Open Browser    ${baseUrl}   gc
Suite Teardown  Close Browser


**** Test Case ****

User want to register on website futureskill
    When User click for register 
 

User verify text

    When User verify text as "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"

    