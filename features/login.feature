@login
Feature: Sign in using facebook
    Scenario: Preview login page with facebook link
        Given I am on "/login"
        Then the response status code should be 200
        And I should see "Login using facebook"
        #And the "a" element should have a facebook link
