Feature: The test file's JSON is parsed correctly
  In order to test the json parsing
  As a human
  I want to create a hash from the test json file

  Scenario: Parse JSON file
    Given I am in the right directory
    Then I should correctly parse the JSON file
