Feature: Home

  Scenario: Home Page
    Home page should be shown correctly.

    Given I launch Wealth app and logged in
    Then Home page should show banners
    And Home page should show product list
    And Home page should show three tabs
