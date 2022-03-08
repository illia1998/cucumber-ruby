Feature: Sign in
  As a visitor
  I want to be able to sign in
  In order to become a user

  Scenario: Sign in positive flow
    Given I am logged in as "testuser123"
    Then I become a logged in as "testuser123"