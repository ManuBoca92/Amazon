*** Settings ***
#Library  SeleniumLibrary
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/TopNav.robot
Resource    ../Resources/PO/SearchResults.robot
Resource    ../Resources/PO/Product.robot
Resource    ../Resources/PO/CheckOut.robot

*** Keywords ***

Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Verify Search Completed

Select Product from Search Results
    SearchResults.Click Product Link
    Product.Verify Page Loaded

Add product to Cart
    Product.Add to Cart
    CheckOut.Verify product has been added to cart

Begin to checkout
    CheckOut.Begin checkout

