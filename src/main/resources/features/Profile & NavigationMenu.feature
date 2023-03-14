Feature: Gembook Profile & NavigationMenu Modules

  Background: User Login into the Gembook Application
    When User clicks on signIn Button
    Then User enters the "username"
    Then User enters the "password"
    And User logins into the application

  @beta_regression  @Profile
  Scenario: Gembook_Profile_ValidateManagerProfileTab
    When Click on ViewProfile icon
    Then Click on Manager Profile
    Then Verify if Manager Profile page is visible

  @beta_regression  @Profile
  Scenario: Gembook_Profile_EnterSkillsData
    When Click on ViewProfile icon
    Then Verify if Any "Skills" are existing
    Then Click on Add new "Skills"
    And Save added "Skills" information
    Then Verify if "Skills" data is updated


  @beta_regression  @Profile
  Scenario: Gembook_Profile_EnterAchievementsData
    When Click on ViewProfile icon
    Then Verify if Any "Achievements" are existing
    Then Click on Add new "Achievements"
    And Save added "Achievements" information
    Then Verify if "Achievements" data is updated


  @beta_regression  @Profile
  Scenario: Gembook_Profile_EnterTrainingsData
    When Click on ViewProfile icon
    Then Verify if Any "Trainings" are existing
    Then Click on Add new "Trainings"
    And Save added "Trainings" information
    Then Verify if "Trainings" data is updated


  @beta_regression  @Profile
  Scenario: Gembook_Profile_EnterGemTalkData
    When Click on ViewProfile icon
    Then Verify if Any "GemTalk" are existing
    Then Click on Add new "GemTalk"
    And Save added "GemTalk" information
    Then Verify if "GemTalk" data is updated


  @beta_regression  @Profile
  Scenario: Gembook_Profile_EnterCertificationData
    When Click on ViewProfile icon
    Then Verify if Any "Certification" are existing
    Then Click on Add new "Certification"
    Then Enter Certificate information
    And Save added "Certification" information
    Then Verify if "Certification" data is updated

  @beta_regression  @Profile
  Scenario: Gembook_Profile_DeleteEnteredCertificationData
    When Click on ViewProfile icon
    When Click on edit certification icon
    Then Click on delete icon and refresh page
    Then Verify if Any "Certification" are existing

  @beta_regression  @Profile
  Scenario: Gembook_Profile_EnterProjectsData
    When Click on ViewProfile icon
    Then Verify if Any "Projects" are existing
    Then Click on Add new "Projects"
    Then Enter Projects information
    Then Select Project Status as "OnGoing"
    Then Select Project type as "Internal"
    And Save added "Projects" information
    Then Verify if "Projects" data is updated

  @beta_regression  @Profile
  Scenario: Gembook_Profile_DeleteEnteredProjectData
    When Click on ViewProfile icon
    When Click on edit projects icon
    Then Click on delete icon and refresh page
    Then Verify if Any "Projects" are existing


  @beta_regression  @Profile
  Scenario:Gembook_Profile_EnterIncompleteCertificationDataVerifyPopup
    When Click on ViewProfile icon
    Then Verify if Any "Certification" are existing
    Then Click on Add new "Certification"
    Then Enter wrong Certificate information
    And Save added "Certification" information
    Then Verify if any Failed alert is displayed


  @beta_regression  @Profile
  Scenario: Gembook_Profile_EnterIncompleteProjectDataVerifyPopup
    When Click on ViewProfile icon
    Then Verify if Any "Projects" are existing
    Then Click on Add new "Projects"
    Then Enter Projects information
    Then Select Project Status as "Completed"
    And Save added "Projects" information
    Then Verify if any Failed alert is displayed


  @beta_regression  @Profile
  Scenario: Gembook_Profile_EnterSkillsDataWithoutComma
    When Click on ViewProfile icon
    Then Verify if Any "Skills" are existing
    Then Add multiple "Skills" without comma
    And Save added "Skills" information
    Then Verify if "Skills" data is updated


  @beta_regression  @Profile
  Scenario:  Gembook_Profile_EnterAchievementsDataWithoutComma
    When Click on ViewProfile icon
    Then Verify if Any "Achievements" are existing
    Then Add multiple "Achievements" without comma
    And Save added "Achievements" information
    Then Verify if "Achievements" data is updated


  @beta_regression  @Profile
  Scenario: Gembook_Profile_EnterTrainingsDataWithoutComma
    When Click on ViewProfile icon
    Then Verify if Any "Trainings" are existing
    Then Add multiple "Trainings" without comma
    And Save added "Trainings" information
    Then Verify if "Trainings" data is updated


  @beta_regression  @Profile
  Scenario: Gembook_Profile_EnterGemTalkDataWithoutComma
    When Click on ViewProfile icon
    Then Verify if Any "GemTalk" are existing
    Then Add multiple "GemTalk" without comma
    And Save added "GemTalk" information
    Then Verify if "GemTalk" data is updated

  @beta_regression @Profile
  Scenario: Gembook_Profile_VerifyHomePageViewProfilePageDataMatches
    When Click on ViewProfile icon
    Then Get UserProfile data from ViewProfile page
    Then Click on three vertical dots icon in Home page
    And Get user data present on three vertical dots icon in home page
    Then Verify if ViewProfile page and Home page data matches

  @beta_regression @NavigationMenu
  Scenario: Gembook_NavigationMenu_OpenNavigationMenu
    When Click on Navigation menu icon
    Then Verify if Navigation tab is opened

  @beta_regression @NavigationMenu
  Scenario: Gembook_NavigationMenu_ValidateExpansionIcon
    When Click on Navigation menu icon
    Then Verify if Navigation tab is opened
    Then Click on Expansion icon in Navigation menu
    And Verify if Other Portals is expanded

  @beta_regression @NavigationMenu
  Scenario: Gembook_NavigationMenu_FetchAllPortalsInNavigationMenu
    When Click on Navigation menu icon
    Then Verify if Navigation tab is opened
    Then Click on Expansion icon in Navigation menu
    And Verify if Other Portals is expanded
    Then Fetch data of all Portals in Navigation Menu

  @Profile @beta_regression
  Scenario: Gembook_Profile_ValidateCloseButtonAndPopupWithEmptyProjectData
    When Click on ViewProfile icon
    Then Verify if Any "Projects" are existing
    Then Click on Add new "Projects"
    And Save added "Projects" information
    Then Verify if any alert is displayed
    And click on close button in "Projects"

  @Profile @beta_regression
  Scenario: Gembook_Profile_ValidateCloseButtonAndPopupWithEmptyCertificationData
    When Click on ViewProfile icon
    Then Verify if Any "Certification" are existing
    Then Click on Add new "Certification"
    And Save added "Certification" information
    Then Verify if any alert is displayed
    And click on close button in "Certification"
