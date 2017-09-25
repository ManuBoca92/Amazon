*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SEARCH_RESULT_PRODUCT_LINK} =   xpath=//*[@id="result_2"]/div/div/div/div[2]/div[1]/div[1]/a

*** Keywords ***
Verify Search Completed
    Wait Until Page contains  Showing most relevant results  timeout=10

Click Product Link
     #Click Link  xpath=//*[@id="result_0"]/div/div/div/div[2]/div[2]/div[1]/a
    Click Link  ${SEARCH_RESULT_PRODUCT_LINK}