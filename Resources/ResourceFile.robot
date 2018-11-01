*** Settings ***
Documentation  This file contains all keywords.
Library  SeleniumLibrary
Resource  ../Resources/Variables.robot


*** Keywords ***
Open Browser and Maximize
  Open Browser   ${URL}  ${Browser}
  #Maximize Browser Window

Click SignIn
  Click Element  ${Sign-In}

Click Cont
  Click Button   ${Cont}

Click Submit
  Click Button   ${Submit}

Login With Valid Credentials
  [Arguments]  ${REGISTERED_USER}
  Click SignIn
  Input Text     ${email_loc}  ${REGISTERED_USER.Email}
  Click Cont
  Input Text     ${Password_loc}  ${REGISTERED_USER.Password}
  Click Submit

Login With Invalid Credentials
  [Arguments]  ${INVALID_USERS_PASSWORD}
  Click SignIn
  Input Text     ${email_loc}  ${INVALID_USERS_PASSWORD.Email}
  Click Cont
  Input Text     ${Password_loc}  ${INVALID_USERS_PASSWORD.Password}
  Click Submit
  Wait Until Page Contains  ${INVALID_USERS_PASSWORD.ExpectedErrorMessage}

Login With Unregistered User Credentials
  [Arguments]  ${UNREGISTERED_USER}
  Click SignIn
  Input Text     ${email_loc}  ${UNREGISTERED_USER.Email}
  Click Cont
  Wait Until Page Contains  ${UNREGISTERED_USER.ExpectedErrorMessage}

Login With Empty Username and Password
  [Arguments]  ${BLANK_CREDENTIALS}
  Click SignIn
  Click Cont
  Wait Until Page Contains  ${BLANK_CREDENTIALS.ExpectedErrorMessage1}
  Input Text     ${email_loc}  ${Email_id}
  Click Cont
  Click Submit
  Wait Until Page Contains  ${BLANK_CREDENTIALS.ExpectedErrorMessage2}

Get Title Of The Home Page
  ${Title}=  Get Title
  [return]  ${Title}

Logoff Application
  Mouse Over  ${Hover_ID}
  Wait Until Element Is Visible  ${Signout}  timeout=10
  Click Element  ${Signout}

Close Application Browser
  Close Browser

Enter Text in SearchBox
  Input Text  ${Search_Text}  ${Search}
  Click Button  ${Search_Button}

Sort Search by Avg Customer Review
  Wait Until Element Is Visible  ${Select_category}  timeout=10
  Click Element  ${Select_category}
  Wait Until Element Is Visible  ${filter_sort}  timeout=10
  Select From List By Value  ${filter_sort}  review-rank

Select the First Search Item
  wait until page contains element  ${Result}  timeout=12
  #wait until page contains element  ${First_item_search}  timeout=12
  #wait until page contains element  ${image}  timeout=12
  wait until page contains element  xpath://div[@class='a-row a-spacing-small']//h2
  #Click Link  xpath://div[@class='a-row a-spacing-small']//h2
  Click Link  xpath://a[contains(@title,'Nokia 6.1 (Blue-Gold, 4GB RAM, 64GB Storage)')]



