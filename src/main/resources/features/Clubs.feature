Feature: Gembook -> Clubs

  Background: User Login into the Gembook Application
    When User clicks on signIn Button
    Then User enters the "username"
    Then User enters the "password"
    And User logins into the application
    Then Verify user is logged into the application or not

  @reg
  Scenario Outline: Verify Clubs button is clickable
    Given the Clubs button exists
    Then Verify whether the Clubs btn is clickable or not
    Then Verify the Clubs button name shows as "<Club>"
    Then Verify icon exists on the button
    Examples:
      | Club  |
      | Clubs |

  @reg
  Scenario Outline: Verify the Clubs module homepage(My Clubs)
    Given User clicks on the Clubs button
    Then Verify My Clubs and All Clubs buttons are displayed
    Then Verify My Clubs screen is displayed by default
    Then Verify My Clubs Button is highlighted in "<green>" or not
    Examples:
      | green   |
      | #38a3a5 |

  @reg
  Scenario Outline: Verify the Clubs module All Clubs screen
    Given User clicks on the Clubs button
    Then Verify My Clubs and All Clubs buttons are displayed
    When User Clicks on All Clubs Button
    Then Verify All Clubs Button is highlighted in "<green>" or not
    Then Verify All Clubs page is loaded with all the Clubs
    Examples:
      | green   |
      | #38a3a5 |

  @reg
  Scenario Outline: Verify the <Club> card details
    Given User clicks on the Clubs button
    When User Clicks on All Clubs Button
    Then Verify the "<Club>" card is displayed with the logo
    Then Verify the "<Club>" card has the count of members enrolled
    Then Verify the "<Club>" card has the date of creation
    Then Verify the "<Club>" card is clickable
    Then Verify the "<Club>" card has the Join Club or Leave Club button
    Then Verify the "<Club>" card has the "<name>"
    Examples:
      | Club                  | name                  |
      | Cultural Club         | Cultural Club         |
      | Entrepreneurship Club | Entrepreneurship Club |
      | CSR Club              | CSR Club              |
      | Gemini-On-wheels      | Gemini-On-wheels      |
      | Sports Club           | Sports Club           |
      | Technology Club       | Technology Club       |

  @reg
  Scenario Outline: Verify the Join Club button on the <Club> card
    Given User clicks on the Clubs button
    When User Clicks on All Clubs Button
    Then Verify the "<Club>" card has the Join Club or Leave Club button
    Then Verify the Join Club button of "<Club>" card is highlighted in "<color>"
    And User clicks on Join Club button of "<Club>" card
    Then Verify the notification arises after clicking on the Join Club button
    Then Verify after clicking on Join Club button on "<Club>" card it changes to Leave group button
    Examples:
      | Club                  | color   |
      | Cultural Club         | #38a3a5 |
      | Entrepreneurship Club | #38a3a5 |
      | CSR Club              | #38a3a5 |
      | Gemini-On-wheels      | #38a3a5 |
      | Sports Club           | #38a3a5 |
      | Technology Club       | #38a3a5 |

  @reg
  Scenario Outline: Verify the Clubs navigation path from All Clubs to "<Club>"
    Given User clicks on the Clubs button
    When User Clicks on All Clubs Button
    Then Verify the "<Club>" card is clickable
    When User clicks on the "<Club>" card
    Then Verify the user is navigated to All Clubs > "<Club>"
    Examples:
      | Club                  |
      | Cultural Club         |
      | Entrepreneurship Club |
      | CSR Club              |
      | Gemini-On-wheels      |
      | Sports Club           |
      | Technology Club       |

  @reg
  Scenario Outline: Verify the Clubs navigation path from My Clubs to "<Club>"
    Given User clicks on the Clubs button
    Then Verify the "<Club>" card is clickable
    When User clicks on the "<Club>" card
    Then Verify the user is navigated to My Clubs > "<Club>"
    Examples:
      | Club                  |
      | Cultural Club         |
      | Entrepreneurship Club |
      | CSR Club              |
      | Gemini-On-wheels      |
      | Sports Club           |
      | Technology Club       |

  @reg
  Scenario Outline: Verify the Leave Club button on the <Club> card
    Given User clicks on the Clubs button
    Then Verify My Clubs screen is displayed by default
    Then Verify the "<Club>" card has the Join Club or Leave Club button
    Then Verify the Leave Club button of "<Club>" card is highlighted in "<color>"
    And User clicks on Leave Club button of "<Club>" card
    Then Verify the notification arises after clicking on the Leave Club button
    Then Verify after clicking on Leave Club button on "<Club>" card it changes to Join group button
    Examples:
      | Club                  | color   |
      | Cultural Club         | #ec974b |
      | Entrepreneurship Club | #ec974b |
      | CSR Club              | #ec974b |
      | Gemini-On-wheels      | #ec974b |
      | Sports Club           | #ec974b |
      | Technology Club       | #ec974b |



















