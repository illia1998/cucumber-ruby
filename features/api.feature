@api
#Feature: API calls
#  Scenario: Get all users
#    Given I get all users

Feature: API User registration
  Scenario: Register a user via API
    Given I am not a registered user
    Then I become a registered user via API

