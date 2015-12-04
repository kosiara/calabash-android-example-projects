Feature: Home screen smoke test feature

  Scenario: I can manipulate home screen controls
    When I press "Log in"
    Then I wait for 3 seconds

    When I see "John"
    Then I press view with id "scroll_view_profile_image_view_mapper"

    * I wait for 2 seconds
    * I press view with id "profile_image_view"
    * I wait for 2 seconds

    When I see "Worked hours"
    Then I scroll down
    * I wait for 1 seconds
    * I scroll up

    When I see "Worked hours"
    Then I press view with id "worked_hours_refresh_hours_card_iv"
    * I wait for 2 seconds

    When I see "Worked hours"
    Then I press view with id "floating_button"
    * I wait for 2 seconds

    # I'LL BE LATE PART
    When I see "I\'ll be late!"
    Then I press "I\'ll be late!"

    * I wait for 2 seconds
    When I see "Move your finger!"
    Then I press the menu key

    When I see "Please give reason for lateness"
    Then I press "Please give reason for lateness"
    * I wait for 2 seconds

    * I wait for the view with id "lateness_reason" to appear
    * I go back

    # ADD HOURS PART
    When I see "Worked hours"
    Then I press view with id "floating_button"
    * I wait for 2 seconds
    When I see "Add hours"
    Then I press "Add hours"

    * I wait for 2 seconds
    * I wait for the view with id "activity_add_hours_ticket_id" to appear
    * I wait for the view with id "activity_add_hours_time_value" to appear
    * I wait for the view with id "activity_add_hours_description" to appear


    * I clear "activity_add_hours_time_value"
    * I enter text "1.23" into field with id "activity_add_hours_time_value"
    * I enter text "Test description" into field with id "activity_add_hours_description"
    * I wait for the view with id "activity_add_hours_send_fab" to appear
    * I wait for 2 seconds
    * I go back
    * I wait for 2 seconds
    * I go back

    # REPORT OUT OF OFFICE
    When I see "Worked hours"
    Then I press view with id "floating_button"
    * I wait for 2 seconds
    When I see "Report out of office"
    Then I press "Report out of office"

    * I wait for 2 seconds
    When I see "Work From Home"
    Then I press view with id "work_from_home_switch"

    * I enter text "Sorry guys - got to work from home today!" into field with id "explanation_edit_text"
    * I wait for 3 seconds
    * I press view with id "submit_button"

    * I wait for 2 seconds
    * I go back







