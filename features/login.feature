@login @javascript
Feature: Sign in using facebook
    Scenario: Preview login page with facebook link
        Given I am on "/login"
        Then I should see "Login using facebook"
        And the "a[href^='https://www.facebook.com']" element should contain "Log in with Facebook!"

    Scenario: Login
        Given I am on "/login"
        When I follow "Log in with Facebook!"
        And I fill in "email" with "xxx"
        And I fill in "pass" with "xxx"
        And I press "Log In"
        Then I should see "Access Token"
