@acceptance @lobby @uk @curacao
Feature: Footer
  The lobby page footer consists of the following ordered links (mini sites):
  - About Us
  - Banking
  - User Agreement
  - Privacy Policy
  - Responsible Gaming Policy
  - Fair Play
  - Contact Us

  Background:
    Given I am on the pre-login lobby page

  Scenario: Footer links
    When I scroll down to the page footer
    Then I should see the footer links in the following order:
      | About Us                  |
      | Banking                   |
      | User Agreement            |
      | Privacy Policy            |
      | Responsible Gaming Policy |
      | Fair Play                 |
      | Affiliate                 |
      | Contact Us                |

  Scenario Outline: Loading "<linkName>" footer link
    When I scroll down to the page footer
    And I press on the "<linkName>" footer link
    Then I should see a popup with header "<popupName>"

    Examples: Footer links
      | linkName                  | popupName                 |
      | About Us                  | ABOUT US                  |
      | Banking                   | BANKING                   |
      | User Agreement            | USER AGREEMENT            |
      | Privacy Policy            | PRIVACY POLICY            |
      | Responsible Gaming Policy | RESPONSIBLE GAMING POLICY |
      | Fair Play                 | FAIR PLAY                 |
      | Contact Us                | CONTACT US                |

  Scenario: Loading "Affiliate" footer link
    When I scroll down to the page footer
    And I press on the "Affiliate" footer link
    Then a new tab should be opened, redirecting me to "http://uk.netopartners.com/"
