 *** Settings ***
Documentation  This file contains all testcases along with Setup and Teardown functions defined at Testsuite level.
Library  SeleniumLibrary
Resource  ../Resources/ResourceFile.robot
Resource  ../Data/InputData.robot

Test Setup  Open Browser and Maximize
Test Teardown  Close Application Browser

*** Test Cases ***

#[Setup]  Open Browser and Maximize
#[Teardown]  Close Application Browser

Login To Application with Valid Credentials
  Login With Valid Credentials  ${REGISTERED_USER}
  ${Result}=  Get Title Of The Home Page
  Log  ${Result}
  Logoff Application

Login With Unregistered User
  Login With Unregistered User Credentials  ${UNREGISTERED_USER}

Login With Invalid Credentials
  Login With Invalid Credentials  ${INVALID_USERS_PASSWORD}


Login With Empty Username and Password
  Login With Empty Username and Password  ${BLANK_CREDENTIALS}




