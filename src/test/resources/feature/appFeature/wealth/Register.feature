Feature: Register
  Register should be quick and friendly

  Scenario Outline: Successful register
    New user should receive verification code and enter home page when signs in

    Given I launch Wealth app and choose sign up
    When I input phone "<phone>" in sign up page
    And I click get verification code in sign up page
    Then I should receive verification code for sign up
    And I input verification "<code>" for sign up
    And I input password "<password>" in sign up page
    And I check term and condition in sign up page
    And I click register button in sign up page
    Then I should see gesture cipher setup page
    And I skip setup gesture cipher
    Then I should be in home page
    Examples:
      | phone      | code | password |
      | unregistered | auto | abc123   |

  Scenario Outline: Failed register

    Given I launch Wealth app and choose sign up
    When I input phone "<phone>" in sign up page
    And I click get verification code in sign up page
    Then I should receive verification code for sign up
    And I input verification "<code>" for sign up
    And I input password "<password>" in sign up page
    And I check term and condition in sign up page
    Then I click register button and see "<error message>" in sign up page
    Examples:
      | phone      | code   | password | error message |
      | unregistered | 000000 | abc123   | 验证码错误     |
      | unregistered | auto   | 000000   | 请输入6~16位密码, 至少包含数字、字母、特殊符号中的两种 |
      | registered   | auto   | abc123   | 该手机号已注册  |

