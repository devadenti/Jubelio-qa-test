Feature: Login Page

@login
Scenario: User success login with correct credential
  Given User go to login page
  When User fill email input type
  And User fill password input type
  And User click login button
  Then User redirect to Jubelio homepage
  And User should see title Selamat Datang on homepage
