*** Settings ***
Documentation  This is a test suite of a logged out user trying to shop for products and checkout.
Library  SeleniumLibrary
Resource  ../Resources/AmazonApp.robot
Resource  ../Resources/Common.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test
#Suite Setup  Insert Testing Data
#Suite Teardown  Cleanup Testing Data

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  http://www.amazon.com
${SEARCH_TERM} =  Ferrari 458

*** Test Cases ***
Logged out user should be able to search for products
    [Tags]  Test 1
    AmazonApp.Search for Products

Logged out user should be able to view a product
    [Tags]  Test 2
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results

Logged out user should be able to add product to cart
    [Tags]  Test 3
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add product to Cart

Logged out user should be able to checkout
    [Tags]  Test 4
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add product to Cart
    AmazonApp.Begin to checkout
