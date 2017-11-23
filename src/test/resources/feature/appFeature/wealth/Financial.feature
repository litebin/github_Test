Feature: Financial Page
  As a user, I can visit financial page.

  Scenario: Product List
    As a user, I can browser product list.

    Given I launch Wealth app
    When I goto financial page
    Then I can see product list

  Scenario: Private Placement
    As a user, I can browser private placement.

    Given I launch Wealth app
    When I goto financial page
    And I goto private placement
    Then I can see private placement

  Scenario: Aeon Life

    Given I launch Wealth app
    When I goto financial page
    And I goto aeon life
    Then I can see aeon life

  Scenario: Oversea Property

    Given I launch Wealth app
    When I goto financial page
    And I goto oversea property
    Then I can see oversea property
