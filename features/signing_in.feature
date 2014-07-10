Feature: Signing in
  Scenario: Unsuccessful sign in
    Given a user visits the signin page
    When he submits invalid signin information
    Then he should see an error message

  Scenario: Successful sign in
    Given a user visits the signin page
    And he has a valid account
    When he submits valid signin information
    Then he sees his profile page
    And he sees a sign out link