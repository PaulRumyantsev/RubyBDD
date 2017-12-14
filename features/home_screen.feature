@home_screen
Feature: Test for home screen functionality

  @default
  Scenario: Default values on Home screen is Foot and Centimeter
    Given I land on home screen
    Then Left Unit picker value should be "Foot"
    And Right unit picker value should be "Centimeter"

  @button
  Scenario: Show All button be enabled at launch
    Given I land on home screen
    Then Show all button should be enabled
    When I press on Clear button
    Then Show all button should be disabled
    Then Show all button should be undefined

  @conversions @wip
  Scenario Outline: Verify default conversion
    Given I land on home screen
    When I type "<target>" to target text field
    Then I should see result as "<result>"

    Examples:
    |target|result   |
    |1     |30.48    |
    |2     |60.96    |
    |3     |91.44    |
    |9     |274.32   |


  Scenario: User able to add current conversion to Favorites list
    Given I land on home screen
    Then I press on Favorites icon
    When I press on menu icon
    Then I press on Favorites conversions
    And I verify "Длина" added to Favorite conversions list


  Scenario: User able to search by existing Conversion type
    Given I land on home screen
    Then I press in search icon
    Then I type "Temperature" in search field
    And I press return button on soft keyboard
    Then I see "Temperature" as a current unit converter
    Then Left Unit picker value should be "Celsius"
    And Right unit picker value should be "Fahrenheit"


