*** Settings ***
Documentation  This file contains all testcases along with Setup and Teardown functions defined at Testsuite level.
Library  SeleniumLibrary
Resource  ../Resources/ResourceFile.robot

#Test Setup  Open Browser and Maximize
#Test Teardown  Close Application Browser

*** Test Cases ***
[Setup]  Open Browser and Maximize

SearchProduct
    [Tags]    Search
  Login With Valid Credentials
  Enter Text in SearchBox
  Sort Search by Avg Customer Review
  Select the First Search Item