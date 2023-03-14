Feature: Gembook -> News Feed -> Events Section

  Background: User Login into the Gembook Application
    When User clicks on signIn Button
    Then User enters the "username"
    Then User enters the "password"
    And User logins into the application
    Then Verify user is logged into the application or not
    When User navigates to tab "News Feeds"

  @regression
  Scenario: Verify if Events section appears on the page
    Then User checks if the Events section is present or not

  @regression
  Scenario: Verify if all necessary elements are present inside the Events section
    Then User checks if the Events section is present or not
    And User verifies the presence of necessary elements inside the Events section

  @regression
  Scenario: Verify if user is able to toggle between tabs
    Then User checks if the Events section is present or not
    And User verifies the presence of necessary elements inside the Events section
    Then User switch to "Ongoing & Upcoming" tab inside Events section
    And User gets the data inside the "Ongoing & Upcoming" tab of Events Section
    Then User switch to "Past" tab inside Events section
    And User gets the data inside the "Past" tab of Events Section
    And User compares the data inside tabs to verify toggle

  @regression
  Scenario: Validate that the data inside Tabs is correct or not
    Then User checks if the Events section is present or not
    And User verifies the presence of necessary elements inside the Events section
    Then User switch to "Ongoing & Upcoming" tab inside Events section
    And User gets the data inside the "Ongoing & Upcoming" tab and validate the data
    Then User switch to "Past" tab inside Events section
    And User gets the data inside the "Past" tab and validate the data

  @regression
  Scenario Outline: Verify if user is able to scroll through the data inside Events section
    Then User checks if the Events section is present or not
    And User verifies the presence of necessary elements inside the Events section
    Then User switch to "Ongoing & Upcoming" tab inside Events section
    And Verify is user is able to scroll through the Events data inside "Ongoing & Upcoming" tab using "<method>"
    Then User switch to "Past" tab inside Events section
    And Verify is user is able to scroll through the Events data inside "Past" tab using "<method>"
    Examples:
      | method     |
      | Arrow Keys |
      | Scrollbar  |



