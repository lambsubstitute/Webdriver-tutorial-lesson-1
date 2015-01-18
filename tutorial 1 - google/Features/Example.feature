Feature: Example feature to test the google search functionality


Scenario: I search google for the bbc homepage
  Given I go to google
  When I search for "BBC - Homepage"
  Then I should see a result for the "www.bbc.co.uk" site