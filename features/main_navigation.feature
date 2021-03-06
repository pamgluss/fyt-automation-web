Feature: Main navigation

  Background:
    Given I'm on the home page


  Scenario: Navigation visible

    Then I must see the following navigation elements:
      | Log in      |
      | Wishlist    |
      | Cart        |


  @mobile
  Scenario: Menu button visible

    Then I must see a menu button in the navigation bar


  @mobile
  Scenario: Open menu

    When I click the menu button in the navigation bar
    Then I see the mobile navigation menu appear


  Scenario: Login item

    When I click on the login navigation item
    Then I am taken to the login page


  Scenario: Wishlist item

    When I click on the wishlist navigation item
    Then I am taken to the wishlist page


  Scenario: Cart item

    When I click on the cart navigation item
    Then I see the cart panel appear


  Scenario: Close cart panel

    And the cart panel is displayed
    When I click outside of the cart panel
    Then the cart panel is no longer displayed


  Scenario: Open currency selector

    When I click on the currency selector
    Then I see the following currencies:
      | USD |
      | EUR |


  Scenario Outline: Select a currency

    When I select <currency> as a currency
    Then I see the featured products prices are in <currency_symbol>'s

    Examples:
      | currency  | currency_symbol |
      | USD       | $               |
      | EUR       | €               |
