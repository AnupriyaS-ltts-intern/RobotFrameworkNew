*** Settings ***
Documentation     This file handles browser configuration, reusable scripts

Library     SeleniumLibrary

*** Keywords ***
Launch Browser
    Open Browser     browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait     30s
    Go To    url=https://opensource-demo.orangehrmlive.com/