*** Settings ***

*** Variables ***
${MY_VARIABLE} =   hello there
*** Test Cases ***
Variable demonstration
    Log  ${MY_VARIABLE}


Variable demonstration 2
    Log  ${MY_VARIABLE}

Set a variable in the test case

    ${my_new_variable} =  set variable  My new variable
    log  ${my_new_variable}


*** Keywords ***
