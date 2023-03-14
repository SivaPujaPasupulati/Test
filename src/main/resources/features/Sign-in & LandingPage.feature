Feature: Gembook Sign-in & LandingPage modules

  @LandingPage
  Scenario Outline: Gembook_LandingPage_ValidateWithWrongURL
      Given Enter wrong url of Gembook <wrongURL>
      Then Verify if Gembook is accessible
      Examples:
      |wrongURL|
      |"https://gembook.com/"|

      @beta_regression @Sign-in
      Scenario: Gembook_SignIn_ValidateLoginWithoutCredentials
      When User clicks on signIn Button
      Then Close Sign-in window
      And Verify if Login Failed alert is displayed

      @beta_regression  @Sign-in
      Scenario: Gembook_SignIn_ValidateLoginWithGitHubCredentials
      When User clicks on signIn Button
      Then Click on Sign-in options
      Then User enters GitHub "GitHubUserName"
      Then User enters GitHub "GitHubPassword"
      Then Provide GitHub access to Microsoft
      Then User enters the "password"
      And User logins into the application

      @beta_regression  @LandingPage
      Scenario: Gembook_LandingPage_ValidateLandingPage
      When Verify copyright of Landing Page
      Then Verify logo of Landing Page
      And Get tagline of Landing Page


