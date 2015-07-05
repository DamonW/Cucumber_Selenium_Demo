require 'rspec/expectations'


Given /^I have entered (.*) in browser/ do |url|
  @url = url
end

When /^I hit enter keyboard/ do
  @driver.get(@url)
end

Then /^The browser title should be (.*)/ do |browserTitle|
  expect(@driver.title).to eq(browserTitle)
end

Then /^The (.*) button which xpath is (.*) should be visible/ do |name,xpath|
  isVisible = false
  begin
    isVisible = @driver.find_element(:xpath=>xpath).displayed?
  rescue => ex
    isVisible = false
  end
  expect(isVisible).to eq(true)
end
