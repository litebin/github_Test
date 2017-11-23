Feature: Login
  As a user
  I want to login Wealth App, to buy stuff.

  @regression @FWMWDW-2951
  Scenario: Login success with correct phone & password

    Given I launch Wealth app
    When I goto my page
    And I input valid phone
    And I input valid password
    And I click login button
    Then I am logged in


  @regression @FWMWDW-2952
  Scenario: Login fail for unregistered user

    Given I launch Wealth app
    When I goto my page
    And I input invalid phone
    And I input valid password
    And I click login button
    Then App shows "用户未注册"

  @regression @FWMWDW-2952
  Scenario: Login fail for invalid password

    Given I launch Wealth app
    When I goto my page
    And I input valid phone
    And I input invalid password
    And I click login button
    Then App shows "密码错误"