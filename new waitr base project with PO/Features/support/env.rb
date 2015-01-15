require 'watir-webdriver'
require 'rubygems'
#require ' test/unit'
require 'rspec/expectations'
include Test::Unit::Assertions;

file:/C:/Users/keith/RubymineProjects/AwesomeDonations/




profile = Selenium::WebDriver::Firefox::Profile.new
browser = Watir::Browser.new :firefox, :profile => profile


Before do
  if LOCALURL = nil
    require 'features/support/cucumber_settings'
  end

 #ENV['BASEURL'] = LOCALURL + ":" + LOCALPORT + "/"
  #browser.speed = fast
  @browser = browser
end


at_exit do
  #browser.close
end


# class documentation
# Allows browser object to be shared across page object classes
module PageInitializer
  def initialize(browser)
    @browser = browser
  end
end





