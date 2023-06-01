Given('User go to login page') do 
    visit "https://app.jubelio.com/login"
    sleep 3
  end
  
  When('User fill email input type') do
    fill_in 'email', with:'qa.rakamin.jubelio@gmail.com'
  end
  
  And('User fill password input type') do
    fill_in 'password', with:'Jubelio123!'
  end
  
  And('User click login button') do 
    # find('.ladda-button btn btn-primary block full-width mb-4').click
    find("button[type='Submit']").click
    sleep 10
  end
  
  Then('User redirect to Jubelio homepage') do 
  expect(find(:xpath, '//*[@class="user-name dropdown"]'))
  end

  And('User should see title Selamat Datang on homepage') do 
    expect(find(:xpath, '//*[@class="col-xs-10"]'))
    sleep 10
  end
