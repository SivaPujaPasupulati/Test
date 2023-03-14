Feature: Gembook -> OtherPortals

  Background: User Login into the Gembook Application
    When User clicks on signIn Button
    Then User enters the "username"
    Then User enters the "password"
    And User logins into the application
    Then Verify user is logged into the application or not

  @reg_OtherPortals
  Scenario: Gembook_OtherPortals_OtherPortalsPresence
    Given Check if Other Portals is present in side bar

  @reg_OtherPortals
  Scenario Outline: Gembook_OtherPortals_OtherPortalsItemsVerification
    Given Check if Other Portals is present in side bar
    When Check if all sub items are present
    Then User clicks on the "<desiredItem>" menu item
    Then Check if sub menu items are hidden
    Examples:
      | desiredItem   |
      | Other Portals |

  @reg_OtherPortals
  Scenario Outline: Gembook_OtherPortals_ArrowIcon
    Given Check if Other Portals is present in side bar
    When Check if all sub items are present
    Then Verify the position of other Portals icon is "<posDown>"
    Then User clicks on the "<desiredItem>" menu item
    Then Verify the position of other Portals icon is "<posRight>"
    Examples:
      | desiredItem   | posDown | posRight |
      | Other Portals | down    | right    |

  @reg_OtherPortals
  Scenario Outline: Gembook_OtherPortals_TooltipVerification
    Given Check if Other Portals is present in side bar
    When Check if all sub items are present
    Then Verify the tooltip of "<desiredItem>" having "<tooltip>" as tooltip
    Examples:
      | desiredItem  | tooltip                                                    |
      | Azure        | Task tracker tool for multiple projects in Gemini          |
      | Jenkins      | Gemini internal build tool                                 |
      | Service Desk | Ticketing tool raise IT/Admin/Accounts/HR issues, requests |
      | Contripoint  | The reward and recognition system of Gemini.               |
      | MIS          | The Management Information System of Gemini.               |
      | Github       | Gemini's internal code repository                          |
      | Gem Wiki     | Knowledge base of Gemini                                   |
      | Athena       | Portal to conduct tests and quizzes.                       |
      | LMS          | Learning Management System for Gemini internal trainings.  |

  @reg_OtherPortals
  Scenario Outline: Gembook_OtherPortals_NavigationToNewPage
    Given Check if Other Portals is present in side bar
    When Check if all sub items are present
    Then User clicks on the "<desiredPage>" menu item
    Then Verify if user is navigated to "<desiredPage>" having "<URL>" with "<title>"
    Examples:
      | desiredPage  | URL                                      | title                     |
      | Jenkins      | https://jenkins-np.geminisolutions.com/  | Dashboard [Jenkins]       |
      | Service Desk | https://helpdesk.geminisolutions.com/    | Helpdesk                  |
#      | Azure         | https://azure.microsoft.com/en-us/products/devops/?nav=min |  | Azure DevOps Services |
      | LMS          | https://geminisolutions.talentlms.com/   | L&D Gemini                |
      | Github       | https://github.com/Gemini-Solutions      | Gemini Solutions · GitHub |
      | Athena       | https://athena.geminisolutions.com/login | Athena                    |


  @reg_OtherPortals
  Scenario Outline: Gembook_OtherPortals_IconVerification
    Given Check if Other Portals is present in side bar
    When Check if all sub items are present
    Then Check if "<desiredItem>" icon is present
    Examples:
      | desiredItem  |
      | Jenkins      |
      | Azure        |
      | Service Desk |
      | Contripoint  |
      | MIS          |
      | GreytHR      |
      | Github       |
      | Gem Wiki     |

  @reg_OtherPortals
  Scenario Outline: Gembook_OtherPortals_VerifyBottomURL
    Given Check if Other Portals is present in side bar
    When Check if all sub items are present
    Then Hover over the "<desiredItem>" in side bar
    Then Verify the URL of "<desiredItem>" at the bottom of the screen "<URL>"
    Examples:
      | desiredItem  | URL                                             |
      | Jenkins      | https://jenkins-np.geminisolutions.com/         |
      | Service Desk | https://helpdesk.geminisolutions.com/           |
      | Azure        | https://dev.azure.com/                          |
      | LMS          | https://geminisolutions.talentlms.com/          |
      | Contripoint  | https://contripoint.geminisolutions.com/#/login |
      | MIS          | https://mis.geminisolutions.com/                |
      | Github       | https://github.com/Gemini-Solutions             |
