Feature: Deposit 

  The users should have the ability to deposit

  @LUD-1 @OPEN @uk @acceptance @curacao @deposit
  Scenario: Deposit option
    Given I am on the homepage
    When I login
    Then I should see the Deposit button

  @LUD-1 @OPEN
  Scenario: First Time Deposit
    Given I am logged in as a new user
    When I navigate to Deposit form
    And I fill in valid deposit details
    And I press on *Deposit* button
    Then my deposit should be successful
