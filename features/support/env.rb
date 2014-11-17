require "Capybara"
require "Capybara/cucumber"
require "rspec"
 
include RSpec::Matchers
 
$timeout = 50
Capybara.configure do |capybara|
 
  Capybara.register_driver :selenium_ff do |app|
    Capybara::Selenium::Driver.new(app, :browser => :firefox)
  end
  capybara.default_driver = :selenium_ff #set the browser you want to run the test on
  capybara.run_server = false
 
end
 
RSpec.configure do |config|
  config.include Capybara::DSL
end
