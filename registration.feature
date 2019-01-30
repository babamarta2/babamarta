Feature: Registration

  - Registration should be possible only with valid data
  - Registration should be accessible from "Join Now" lobby button, Main menu, "Sign Up" button in login form
  - Non-duplicate registration should result in a bonus animation
  - Successful non-duplicate newly registered player should have 5£ added to his/her balance
  - Successful registration should lead to deposit limit popup

  Background:
    Given I am on the pre-login lobby page

  @LUD-4 @WIP @sanity @devops
  Scenario: Successful registration
    When I navigate to the registration form
    And I complete the registration process with valid details
    Then I should be registered successfully
    And my balance should be 0

  @ORPHAN
  Scenario: Open registration form from main menu
    When I open main menu
    And I press on Join Now from main menu
    Then the "REGISTRATION" popup should be displayed

  @ORPHAN
  Scenario: Open registration from from login form
    When I navigate to the login form
    And I press on Sign up button from the login popup
    Then the "REGISTRATION" popup should be displayed

  @ORPHAN
  Scenario: Open Login form from the Registration form
    When I navigate to the registration form
    And I press on Login button from the Registration form
    Then the "LOGIN" popup should be displayed

  @ORPHAN
  Scenario: Successful registration from a game
    When I open the first available game
    And I press on Sign up button from the login popup
    And I complete the registration process with valid details
    And I close the "REALITY CHECK" popup
    And I close the "CONFIRM YOUR ACCOUNT" popup
    Then the game should be loaded in realplay mode
    And my balance in the game HUD should be 0

  @ORPHAN
  Scenario: Try to avoid deposits limit during registration
    Given I am on the registration form
    When I register with valid details
    And I refresh the page
    Then the "DEPOSITS LIMIT" popup should be displayed
