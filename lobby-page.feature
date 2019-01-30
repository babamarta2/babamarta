Feature: Lobby page

  @LUD-1 @OPEN
  Scenario: Lobby Scenario
    Given I am on the homepage
    When I login
    Then I should see the Deposit button
