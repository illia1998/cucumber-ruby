@sign_in
Feature: Sign in
  As a visitor
  I want to be able to sign in
  In order to become a user

  Scenario: Sign in positive flow
    Given I am not logged in visitor

     When I click 'Sign in' button
     Then I see 'Sign in' form opened

     When I fill in log in form with valid credentials
      And I click 'Login' button
     Then I become a logged in as "user"