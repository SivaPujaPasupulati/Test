Feature: Gembook SearchBar & Notification modules

  Background: User Login into the Gembook Application
    When User clicks on signIn Button
    Then User enters the "username"
    Then User enters the "password"
    And User logins into the application

  @beta_regression  @Notification
  Scenario: Gembook_Notification_ValidateNotificationFunctionality
    Given Click on Notifications icon
    Then Verify if Notifications tab is visible
    Then Verify if any notifications are present
    And Click on close button of Notifications tab

  @beta_regression  @SearchBar
  Scenario Outline: Gembook_SearchBar_FilterPostsBasedOnText
    Given Verify if search bar exists
    Then Enter text in search bar <textToSearch>
    Then Click on post filters
    Then Verify if related posts exists based on search text <textToSearch>
    Examples:
      |textToSearch|
      | "success" |
      | "soup"    |

  @beta_regression  @SearchBar
  Scenario Outline: Gembook_SearchBar_ValidateSearchBarFunctionality
    Given Verify if search bar exists
    Then Enter text in search bar <textToSearch>
    Then Verify if search dropdown is displayed with filters
    Then Click on people filters
    Then Click on post filters
    Examples:
      |textToSearch|
      | "SivaPuja" |

  @beta_regression  @SearchBar
  Scenario Outline: Gembook_SearchBar_FilterPeopleBasedOnText
    Given Verify if search bar exists
    Then Enter text in search bar <textToSearch>
    Then Click on people filters
    Then Verify if related people exists based on search text <textToSearch>
    Examples:
      |textToSearch|
      | "Lakshmi" |
      | "Assistant Vice President"|
      | "kalp"                    |


  @beta_regression  @SearchBar
  Scenario Outline: Gembook_SearchBar_EnterTextInSearchBarClear
    Given Verify if search bar exists
    Then Enter text in search bar <textToSearch>
    Then Clear text entered
    Examples:
      |textToSearch|
      | "Lakshmi" |




