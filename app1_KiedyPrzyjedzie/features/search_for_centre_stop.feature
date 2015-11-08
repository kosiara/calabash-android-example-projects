Feature: Search for a specific stop feature

  Scenario: I search for "CENTRUM" stop and wait for a result
    * I wait for "ULUBIONE" to appear
    When I see "ULUBIONE"
    Then I enter text "centrum" into field with id "search_src_text"
    * I should see text containing "CHMIELOWICE"
    * I touch the "(040) CHMIELOWICE - CENTRUM" text
    When I see "40"
    Then I wait for 5 seconds
    * I go back
