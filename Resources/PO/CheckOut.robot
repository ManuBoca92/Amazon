*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify product has been added to cart
    Wait Until Page contains  Cart subtotal

Begin checkout
    Click Link  Proceed to checkout (1 item)
    Wait Until Page Contains  Sign In