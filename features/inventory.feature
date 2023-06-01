Feature: Update quantity stock in nventory Page

@inventory
Scenario: User success update stock in inventory page
  Given User go to login page
  And User fill email input type
  And User fill password input type
  And User click login button
  And User redirect to Jubelio homepage
  And User should see title Selamat Datang on homepage
  And User go to inventory page
  And User fill keyword 'Apple Iphone 11' in search field inventory page
  And user click on the checkbox result of the searching
  And User click Penyesuaian Persediaan button for update the stock
  When User fill quantity to "5"
  And User click simpan button
  Then User success to update inventory quantity
