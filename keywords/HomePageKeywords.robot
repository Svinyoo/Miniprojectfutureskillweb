*** Settings ***
Library    SeleniumLibrary 
Resource    CommonKeywords.robot

*** Keywords ***

displayhomepage and message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text  ${expected_message}


user logout
    CommonKeywords.Wait until element is ready then click element    xpath=//button[@aria-haspopup="menu"]
    CommonKeywords.Wait until element is ready then click element    xpath=//div[contains (text(),"ออกจากระบบ")]

