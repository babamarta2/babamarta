Feature: Deposit bla bla

  The lobby page footer consists of the following ordered links (mini sites):
  - About Us
  - Banking
  - User Agreement
  - Privacy Policy
  - Responsible Gaming Policy
  - Fair Play
  - Contact Us

  @LUD-1 @OPEN
  Scenario: Deposit option
    Given I am on the homepage
    When I login
    Then I should see the Deposit button
