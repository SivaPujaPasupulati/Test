Feature: Gembook -> News Feed -> Awards

  Background: User Login into the Gembook Application
    When User clicks on signIn Button
    Then User enters the "username"
    Then User enters the "password"
    And User logins into the application
    Then Verify user is logged into the application or not
    When User navigates to tab "News Feeds"

  @reg_OtherPortals
  Scenario: Gembook_Awards_VerifyPresence
    Given Check if Award section is present in News Feeds

  @reg_OtherPortals
  Scenario Outline: Gembook_Awards_VerifyFilteredData
    Given Check if Award section is present in News Feeds
    When User selects "<desiredYear>" and "<desiredEvent>" from award section
    Then Verify if data is present in Awards Section for "<desiredEvent>"
    Examples:
      | desiredYear | desiredEvent |
      | 2019        | EOQ Q1 2019  |
      | 2020        | EOY          |


  @reg_OtherPortals
  Scenario Outline: Gembook_Awards_ScrollFunctionality
    Given Check if Award section is present in News Feeds
    When User selects "<desiredYear>" and "<desiredEvent>" from award section
    Then Verify if data is present in Awards Section for "<desiredEvent>"
    Then Scroll through the list of winners in Awards section for "<desiredYear>" and "<desiredEvent>"
    Examples:
      | desiredYear | desiredEvent      |
      | 2022        | Rising Star Award |