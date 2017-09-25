*** Settings ***
Documentation  This is some basic info about the whole suite.
Library  SeleniumLibrary
Documentation  Amazon site test suite
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

    AmazonApp.Search for Products

Logged out user should be able to view a product
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results

Logged out user should be able to add product to cart
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add product to Cart

Logged out user should be able to checkout
    [Tags]  Current
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add product to Cart
    AmazonApp.Begin to checkout
