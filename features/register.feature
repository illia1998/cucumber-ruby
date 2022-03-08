Feature: Register
  As a visitor
  I want to be able to register
  In order to become a registered user

  Scenario: Register positive flow
    Given I am not a registered visitor

    When I click 'Register' button
    Then I see 'Register' form opened

    When I fill in 'Register' form with valid credentials
    And I click 'Submit' button
    Then I become a registered user