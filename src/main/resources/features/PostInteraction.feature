Feature: Gembook -> News Feed -> Events Section

  Background: User Login into the Gembook Application
    When User clicks on signIn Button
    Then User enters the "username"
    Then User enters the "password"
    And User logins into the application
    Then Verify user is logged into the application or not
    When User navigates to tab "News Feeds"

  @regression
  Scenario: Verify if posts appear on the page
    Then User checks the presence of posts on the News Feeds page

  @regression
  Scenario: Verify if all necessary elements are present inside the posts
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts

  @regression
  Scenario: Verify if user is able to like the post
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts
    When User hits the "Like Button" of the post
    Then User verifies if the "Like Count" "increases" or not

  @regression
  Scenario: Verify if user is able to like and unlike the comment
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts
    When User hits the "Comment Button" of the post
    Then Verify if the comment box shows up or not
    When User hits the "Like Comment Button" of the post
    Then User verifies if the "Likes on Comment" "increases" or not
    When User hits the "Like Comment Button" of the post
    Then User verifies if the "Likes on Comment" "decreases" or not

  @regression
  Scenario Outline: Verify is user is able to toggle between different post types using post filter dropdown
    Then User checks the presence of posts on the News Feeds page
    And User checks if post filter dropdown is present or not
    When User expands the post filtering dropdown
    Then User verifies if dropdown expands or not and selects a "<Post Type>"
    And User verifies if the post type updated to the selected "<Post Type>" in dropdown
    And User verifies the updated posts appear according to the selected "<Post Type>"
    Examples:
      | Post Type     |
      | Achievements  |
      | Announcements |
      | Questions     |
      | Generic       |
      | Ideas         |
      | Findings      |

  @regression
  Scenario: Verify if user is able to unlike the post
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts
    When User hits the "Like Button" of the post
    Then User verifies if the "Like Count" "decreases" or not

  @regression
  Scenario: Verify if Comment Box appears on hitting comment button
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts
    When User hits the "Comment Button" of the post
    Then Verify if the comment box shows up or not

  @regression
  Scenario: Verify if visible comment increases on hitting view more comments and decreases on hitting view less comments button
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts
    When User hits the "Comment Button" of the post
    Then Verify if the comment box shows up or not
    Then User hits the "View More Comments" button
    And User checks if the visible comments "increases" on hitting "View More Comments" button
    Then User hits the "View Less Comments" button
    And User checks if the visible comments "decreases" on hitting "View Less Comments" button

  @regression
  Scenario: Verify if the user is able to post and delete the comment
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts
    When User hits the "Comment Button" of the post
    Then Verify if the comment box shows up or not
    Then User types the "Good Content" comment in the comment box
    When User hits the "Send Comment Button" of the post
    Then User verifies if the "Comment Count" "increases" or not
    When User hits the "Delete Comment Button" of the post
    Then User verifies if the "Comment Count" "decreases" or not

  @regression
  Scenario: Verify if user profile opens up on clicking the username of the commenter
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts
    When User hits the "Comment Button" of the post
    Then Verify if the comment box shows up or not
    When User hits the "Commenter Username" of the post
    Then Check if the profile of the clicked user opens up or not

  @regression
  Scenario: Verify if Emoji dialogue box appears on clicking emoji button
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts
    When User hits the "Comment Button" of the post
    Then Verify if the comment box shows up or not
    When User hits the "Emoji Button" of the post
    Then Verify if the emoji dialogue box appears or not

  @regression
  Scenario Outline: Verify if user is able to toggle between different emoji categories
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts
    When User hits the "Comment Button" of the post
    Then Verify if the comment box shows up or not
    When User hits the "Emoji Button" of the post
    Then Verify if the emoji dialogue box appears or not
    Then Verify if user is able to toggle between "<Emoji Categories>"
    Examples:
      | Emoji Categories |
      | smileys_people   |
      | animals_nature   |
      | food_drink       |
      | travel_places    |
      | activities       |
      | objects          |
      | symbols          |
      | flags            |

  @regression
  Scenario: Verify if user is able to see the users who like the post on hovering on like icon
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts
    When User hover over the "Like Count" icon
    Then User checks if the dialogue box with users who like the post appears or not

  @regression
  Scenario: Verify if profile opens up when user clicks on any user who likes the post
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts
    When User hover over the "Like Count" icon
    Then User checks if the dialogue box with users who like the post appears or not
    When User hits the "Like User Profile" of the post
    Then Check if the profile of the clicked user opens up or not

  @regression
  Scenario: Verify if profile opens up when the user clicks on profile photo or username of the post
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts
    When User hits the "Profile Name" of the post
    Then Check if the profile of the clicked user opens up or not

  @regression
  Scenario: Verify if user is able to paste text into comment box
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts
    When User hits the "Comment Button" of the post
    Then Verify if the comment box shows up or not
    When User copies the text from a "src/main/resources/Data.txt"
    Then User paste the text inside the comment box
    And Verifies if the data is pasted inside the comment box or not
