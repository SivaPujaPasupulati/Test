Feature: Gembook -> News Feed -> Post Creation

  Background: User Login into the Gembook Application
    When User clicks on signIn Button
    Then User enters the "username"
    Then User enters the "password"
    And User logins into the application
    Then Verify user is logged into the application or not

  Scenario: Logout from the Gembook Application
    When User logs out from the Gembook application
    Then Validate if user is logged out from the application
