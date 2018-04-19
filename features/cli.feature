Feature: Basic command-line interface
  Scenario: Happy path: running the comand with no args
    When I run `one`
    Then it should pass matching:
      """
      I'm a one!
      """