Feature: Account
  As a user
  I want to manage my account info.

  @regression
  Scenario: Avatar
    As a user
    I want to change my avatar.

    Given I launch Wealth app and logged in
    When I goto my page
    And I goto setting page
    And I click avatar button
    And I select one image form camera
    Then My avatar is changed
    And I click avatar button
    And I select one image from gallery
    Then My avatar is changed
    And I click avatar button
    And I select cancel
    Then My avatar is not changed

  @regression
  Scenario: Identity

    Given I am a brand new comer and logged in
    When I goto my page
    And I goto setting page
    And I click identity item
    And I click goto identity button
    And I input correct info
    And I click add button
    Then I successfully identity
#    And I click identity item
#    Then I can see identity info

  Scenario: Risk Assessment

    Given I am a brand new comer and logged in
    When I goto my page
    And I goto setting page
    And I click assessment item
    And I click start assessment
    And I answer all questions
    Then I have finished assessment
