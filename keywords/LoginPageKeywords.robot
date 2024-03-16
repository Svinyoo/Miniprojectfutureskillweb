*** Settings ***
Library    SeleniumLibrary
Resource    CommonKeywords.robot



*** Keywords ***
User login future skill platform with ${username} and ${password}
    CommonKeywords.Wait until element is ready then click element    xpath=//button[text()="เข้าสู่ระบบ"]
    CommonKeywords.Wait until element is ready then input text    name=email    ${username}
    CommonKeywords.Wait until element is ready then input text     name=password    ${password} 
    #CommonKeywords.Wait until element is ready then click element    xpath=//*[@id="headlessui-menu-item-27"]      
    CommonKeywords.Wait until element is ready then click element    xpath=//button[@type="submit" and text()="เข้าสู่ระบบ"]
    CommonKeywords.Wait until element is ready then click element    xpath=//button[text()="ไว้ภายหลัง"]

Case login fail message as "${expected_message}"   
     CommonKeywords.Wait until page contains element then verify text    ${expected_message}
