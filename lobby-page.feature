Feature: Lobby page

  @LUD-1 @OPEN
  Scenario: Deposit button
    Given I am on the homepage
    When I login
    Then I should see the Deposit button
