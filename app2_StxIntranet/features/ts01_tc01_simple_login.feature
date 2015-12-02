Feature: Login feature

  Scenario: I can log into my app
    When I press "Log in"
    Then I wait for 5 seconds
    * I scroll down
    When I see "johny"
    Then I wait for 1 seconds
    * I scroll down
