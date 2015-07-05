Feature: Home page of Github
  In order to ensure the home page of GitHub is showing properly
  As an User
  I want to open the Github home page

  Scenario: Verify title of Github home page
    Given I have entered http://www.github.com in browser
    When I hit enter keyboard
    Then The browser title should be GitHub · Build software better, together.

  Scenario: Verify buttons are visible of Github home page
    Given I have entered http://www.github.com in browser
    When I hit enter keyboard
    Then The SignUp button which xpath is //div[@class='header-actions']/a[@class='btn btn-primary'] should be visible
    Then The SignIn button which xpath is //div[@class='header-actions']/a[@class='btn'] should be visible