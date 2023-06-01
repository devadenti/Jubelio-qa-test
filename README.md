# Final Task Challenge - Web Automation using Selenium Web Driver

### Prerequisite

* [Visual Studio Code (VS Code)](https://code.visualstudio.com/updates/v1_77) -  Text editor to open and edit your files with Git
* [git](https://git-scm.com/downloads) - For accessing the sourcecode repositories.
* [Ruby](https://www.ruby-lang.org/en/documentation/installation/) - For **Windows**, you can download from the [official website](https://rubyinstaller.org/downloads/). You may already have Ruby installed on your computer. You can check inside a terminal emulator by typing: ` ruby -v`
* [Cucumber](https://cucumber.io/docs/installation/) 
* [Cucumber (Gherkin) plugin](https://marketplace.visualstudio.com/items?itemName=alexkrechik.cucumberautocomplete) - This extension adds rich language support for the Cucumber (Gherkin) language to VS Code

* [Ruby Gems](rubygems.org) - 
  * For **Windows**, you can download from the [official website](https://rubyinstaller.org/downloads/).
  * Run this command on your terminal vscode
    `touch Gemfile`
    then add this code to Gemfile
    ```
    source 'https://rubygems.org'

    gem 'capybara'
    gem 'cucumber'
    gem 'pry'
    gem 'rspec'
    gem 'webdrivers'
    ```
  * Install Gemfile using : `bundle install`
  * Then, initialize a features/ directory: `cucumber --init`
  * configure file env.rb. In this project using chrome as default driver. 
  
    ```
    require 'capybara'
    require 'capybara/cucumber'
    require 'cucumber'
    require 'rspec'
    require 'pry'
    require 'webdrivers'

    Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome, timeout: 30)
    end

    Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 30
    end
    ```
### Executing The Test
**Step 1:** Clone the respository
  [Jubelio-qa-test](https://github.com/devadenti/Jubelio-qa-test) using :
    `git clone https://github.com/devadenti/Jubelio-qa-test.git`
**Step 2:** To execute the test script, run the following script on terminal in vscode.
    `cucumber`
    or using this code to run a feature or scenario by using a tag :
    `bundle exec cucumber --tags "@inventory"`

### Test Reports
*  Run the following command to get test report. A report will be generated as report.html
    `cucumber -f html -o report.html`

### Run Test Result
*  @login test
    https://github.com/devadenti/Jubelio-qa-test/assets/54857599/4ee2780e-d240-4236-b0c9-cb8d5c9a7744

*  @inventory test
    https://github.com/devadenti/Jubelio-qa-test/assets/54857599/8ee4c181-7aa5-4466-86cc-de1a0782b2fb
    
*  Cucumber HTML Test Report
    * features/login.feature
      ![@login](https://github.com/devadenti/Jubelio-qa-test/assets/54857599/4680d432-6d88-488a-87dc-3fe22bc2c46e)

    * features/inventory.feature
      ![@inventory](https://github.com/devadenti/Jubelio-qa-test/assets/54857599/5f7f690f-276e-4be5-b354-013fee46eacc)



