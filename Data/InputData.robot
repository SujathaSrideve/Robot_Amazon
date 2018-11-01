*** Settings ***
Documentation    Suite description

*** Variables ***
${Browser}  Chrome
${URL}  https://www.amazon.in/
${Login_Url}  gp/css/homepage.html?ref=nav_youraccount_btn

#Valid User
&{REGISTERED_USER}  Email=Testing.automation769@gmail.com  Password=Automation212#  Title=Online Shopping site in India: Shop Online for Mobiles, Books, Watches, Shoes and More - Amazon.in

# Input Data for Invalid
&{UNREGISTERED_USER}  Email=kalyan.sujatha5555@gmail.com  Password=abc123  ExpectedErrorMessage=We cannot find an account with that email address
&{INVALID_USERS_PASSWORD}  Email=Testing.automation769@gmail.com  Password=Automation212  ExpectedErrorMessage=Your password is incorrect
&{BLANK_CREDENTIALS}  Email=#BLANK  Password=#BLANK  ExpectedErrorMessage1=Enter your email or mobile phone number  ExpectedErrorMessage2=Enter your password