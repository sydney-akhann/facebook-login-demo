@login @javascript
Feature: Sign in using facebook
    Scenario: Preview login page with facebook link
        Given I am on "/login"
        Then I should see "Login using facebook"
        And the "a[href^='https://www.facebook.com']" element should contain "Log in with Facebook!"
