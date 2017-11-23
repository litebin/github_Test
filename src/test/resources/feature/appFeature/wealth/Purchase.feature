Feature: Purchase
  End user can purchase all products from home page with different interest rates

  Scenario: Browser product
  End user can look over all products with different interest rates

    Given I launch Wealth app and logged in
    When I am in home page
    Then The following home products exist:
      | product         | field1    | field2       | period | minimum purchase amount |
      | 万达-灵活宝      | 4.5       | 七日年化收益率 | 每万元收益1.2元      | 100元起                    |
      | 万惠金90天A      | 6.0       | 上期年化收益率 | 90天     | 1000元起                    |
      | 万惠金30天微信3号 | 5.8       | 上期年化收益率 | 30天    | 1000元起                   |

  Scenario: Purchase "new comer special" product
    New comer can purchase "new comer special" product.
    In this scenario, "new comer" has authenticated and risk assessed and password set.

    Given I am a new comer and logged in
    When I am in home page
    Then I can see "new comer special" product item
    And I click purchase button of "new comer special" product item
    And I can see fixed product detail page
    And I click purchase button in fixed product detail page
    And I input 2000 as purchase amount in fixed product detail page
    And I accept term and condition in fixed product detail page
    And I click submit button in fixed product detail page
    And I enter correct purchase password
    Then I can see the "purchase success" result page
