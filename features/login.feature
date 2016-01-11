@login
Feature: Sign in using facebook
    Scenario: Sign in successfully using facebook
        Given I am on "/login"
        Then the response status code should be 200
        And I should see "Login using facebook"
