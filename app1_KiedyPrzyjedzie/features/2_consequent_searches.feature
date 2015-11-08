Feature: 2 consequent searches for different stop names

  Scenario: I search for "CENTRUM" stop and wait for a result and then search for "LUBOSZYCKA" and wait for a result
    * I wait for "ULUBIONE" to appear
    When I see "ULUBIONE"
    Then I enter text "centrum" into field with id "search_src_text"
    * I should see text containing "CHMIELOWICE"
    * I touch the "(040) CHMIELOWICE - CENTRUM" text
    When I see "40"
    Then I wait for 5 seconds
    * I go back
    * I wait for 1 seconds
    * I press view with id "search_close_btn"
    When I see "ULUBIONE"
    Then I enter text "luboszycka" into field with id "search_src_text"
    * I should see text containing "LUBOSZYCKA"
    * I touch the "(171) LUBOSZYCKA - CHABRÓW" text
    When I see "171"
    Then I wait for 5 seconds
    * I go back
    * I wait for 2 seconds