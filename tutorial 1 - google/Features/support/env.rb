require 'watir-webdriver'
require 'rubygems'
#require ' test/unit'
require 'rspec/expectations'
include Test::Unit::Assertions;








Before do
  profile = Selenium::WebDriver::Firefox::Profile.new
  browser = Watir::Browser.new :firefox, :profile => profile
  @browser = browser
end


at_exit do
  @browser.close
end






