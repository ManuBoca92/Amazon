*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${PRODUCT_ADD_TO_CART_BUTTON} =   id=add-to-cart-button

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Back to search results

Add to Cart
    Click Button  ${PRODUCT_ADD_TO_CART_BUTTON}