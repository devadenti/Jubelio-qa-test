require 'selenium-webdriver'

# Set up the Selenium WebDriver
driver = Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(timeout:10)

begin
# Navigate to the login page
driver.get('https://app.jubelio.com/login')

# Find the username and password input fields and submit button
username_input = wait.until { driver.find_element(css: 'input[name="email"]') }
password_input = wait.until { driver.find_element(css: 'input[name="password"]') }
submit_button = wait.until { driver.find_element(css: 'button[type="submit"]') }

# Enter the login credentials
username_input.send_keys('qa.rakamin.jubelio@gmail.com')
password_input.send_keys('Jubelio123!')

# Click the submit button
submit_button.click
sleep 10

# Wait for the login process to complete 
# class="col-xs-10" -> h1 'Selamat Datang'
wait.until { driver.find_element(xpath: '//*[@class="col-xs-10"]') } 
wait.until { driver.find_element(xpath: '//*[@class="user-name dropdown"]') }

ensure
# Close the browser
driver.quit

end