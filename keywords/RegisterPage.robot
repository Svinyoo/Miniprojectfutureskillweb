*** Settings ***
Library     SeleniumLibrary
Resource    CommonKeywords.robot






*** Keywords ***
User click for register
    CommonKeywords.Wait until element is ready then click element   xpath=//button[text()="สมัครสมาชิก"]
    
    CommonKeywords.Wait until element is ready then input text      name=email      ${email1} 
    CommonKeywords.Wait until element is ready then input text      name=firstName       ${name} 
    CommonKeywords.Wait until element is ready then input text      name=lastName        ${surname} 
    CommonKeywords.Wait until element is ready then input text      name=phoneNumber     ${tel1}
    CommonKeywords.Wait until element is ready then input text      name=newPassword     ${valid_password}
    CommonKeywords.Wait until element is ready then input text      name=confirmPassword     ${valid_password}
    CommonKeywords.Wait until element is ready then click element   xpath=//input[@type="checkbox" and @name = "consent" ]
    CommonKeywords.Wait until element is ready then click element   xpath=//button[text()="สมัครสมาชิก"]

User verify text as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text   ${expected_message}
