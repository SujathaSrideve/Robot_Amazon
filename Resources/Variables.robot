*** Settings ***
Documentation    This is variable file containing all locator's and their Xpaths stored.

Library  SeleniumLibrary

*** variables ***
${Browser}  Chrome
${URL}  https://www.amazon.in/
${Sign-In}  xpath://a[@id='nav-link-yourAccount']
${email_loc}  id=ap_email
${Email_id}  Testing.automation769@gmail.com
${Cont}  id=continue
${Password_loc}  id=ap_password
${Password}  Automation212#
${Submit}  id=signInSubmit
${Email_invalid}  abc@gmail.com
${Password_invalid}  abc123
${Unre_User}  kalyan.sujatha555@gmail.com
${empty}  " "
${Invalid_alert}  We cannot find an account with that email address
${Pwd_alert}  Your password is incorrect
${empty_pwd}  Enter your password
${email_alert}  id=auth-email-missing-alert
${pwd_alert}    id=auth-password-missing-alert
${Page_title}   Your Amazon.in
${Hover_ID}  xpath://span[@class='nav-icon nav-arrow']
${Signout}  id=nav-item-signout
${Search_Text}  id:twotabsearchtextbox
${Search_Button}  xpath://input[@type='submit']
${Amazon_Prime}  xpath://input[@name='s-ref-checkbox-10440599031']
${filter_sort}  id=sort
${Search}  nokia 6.1 plus
${First_item_search}  xpath://a[@class='a-link-normal s-access-detail-page  s-color-twister-title-link a-text-normal']
${Select_category}    xpath://span[@class='a-size-small a-color-base']
${Result}  xpath://a[@title='Nokia 6.1 (Blue-Gold, 4GB RAM, 64GB Storage)']/h2
${mobile}  xpath://*[@id="result_0"]/div/div[2]/div/div[2]/div[1]/div[1]/a[@title='Nokia 6.1 (2018) (4GB + 64GB, Blue-Gold)']
${text}  (4GB + 64GB, Blue-Gold)
${image}  xpath://a[@class='s-access-image cfMarker']