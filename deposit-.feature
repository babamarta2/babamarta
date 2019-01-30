Feature: Deposit 

  The users should have the ability to deposit

  @LUD-1 @OPEN @uk @acceptance
  Scenario: Deposit option
    Given I am on the homepage
    When I login
    Then I should see the Deposit button
