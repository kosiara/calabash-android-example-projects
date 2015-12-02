Feature: Employees list feature

  Scenario: I can see employees and absences list
    When I press "Log in"
    Then I wait for 3 seconds
    When I see "John"
    #Then I swipe right
    #Then I drag from 0:150 to 300:150 moving with 20 steps
    Then I press the menu key

    When I see "Employees"
    Then I press "Employees"
    * I wait for 1 seconds
    * I scroll recyclerview down
    * I wait for 1 seconds
    When I see "Bert Lawnmower"
    Then I press "Bert Lawnmower"

    When I see "John Smith"
    Then I wait for 2 seconds
    * I go back
    * I scroll recyclerview down
    * I scroll recyclerview down
    When I see "Mieszko Wrightwheel"
    Then I press "Mieszko Wrightwheel"

    When I see "John Smith"
    Then I wait for 2 seconds
    * I go back

    * I go back
    Then I wait for 2 seconds
    Then I press the menu key
    When I see "Absences"
    Then I press "Absences"

    When I see "Out Of Office"
    Then I wait for 2 seconds

    * I press "Mieszko Wrightwheel"
    When I see "John Smith"
    Then I wait for 1 seconds
    * I go back

    * I scroll recyclerview down
    * I scroll recyclerview down
    When I see "Bert Lawnmower"
    Then I press "Bert Lawnmower"
    When I see "John Smith"
    Then I wait for 2 seconds
    * I go back

    When I see "John Smith"
    Then I press the menu key

    When I see "Absences"
    Then I press "Absences"

    When I see "Out Of Office"
    Then I wait for 1 seconds


    * I press "Work From Home"
    * I press "Jack Evening"
    When I see "John Smith"
    Then I wait for 1 seconds
    * I go back

    * I scroll recyclerview down
    * I scroll recyclerview down
    When I see "Tommy Necessary"
    Then I press "Tommy Necessary"
    When I see "John Smith"
    Then I wait for 2 seconds
    * I go back

    * I press "Holiday"
    * I press "Lucas Vega"
    When I see "John Smith"
    Then I wait for 1 seconds
    * I go back

    * I go back
    When I see "John Smith"
    Then I press the menu key

    When I see "Settings"
    Then I press "Settings"

    * I go back
    When I see "John Smith"
    Then I press the menu key

    * I go back
    When I see "John Smith"
    Then I press the menu key

    When I see "Offices"
    Then I press "Offices"

    * I wait for 1 seconds

    When I see "Wrocław"
    Then I press "Wrocław"
    * I wait for 2 seconds
    When I see "Piła"
    Then I press "Piła"

