require 'selenium-webdriver'


#Init the driver before each scenario
Before do
  @driver = Selenium::WebDriver.for(:chrome)

end

#Quit the driver after each scenario
After do
  @driver.quit
end
