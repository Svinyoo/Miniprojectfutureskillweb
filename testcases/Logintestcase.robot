*** Settings ***
Library    SeleniumLibrary
Resource    ../keywords/CommonKeywords.robot
Resource    ../keywords/HomePageKeywords.robot
Resource    ../keywords/LoginPageKeywords.robot
Variables    ../resources/config/config.yaml
Variables    ../resources/testdata/testdata.yaml
Suite Setup    Open Browser    ${baseUrl}   gc 
Suite Teardown    Close Browser




*** Test Cases ***

As a user , I want to login sucess 
   When User login future skill platform with ${email} and ${valid_password}
   
   [Teardown]    user logout

Login Fail
    When User login future skill platform with ${email} and ${invalid_password}
    Then displayhomepage and message as "กรอกรหัสผ่านไม่ถูกต้อง"




