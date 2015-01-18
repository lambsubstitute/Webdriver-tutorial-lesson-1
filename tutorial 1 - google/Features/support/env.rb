require 'watir-webdriver'
require 'rubygems'
require 'rspec/expectations'


Before do
  profile = Selenium::WebDriver::Firefox::Profile.new
  browser = Watir::Browser.new :firefox, :profile => profile
  @browser = browser
end


After do
  @browser.close
end






