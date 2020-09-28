Feature: As a user I can open Tic Tac Toe so I can make my first move
  Scenario: Opening the game for the first time from the command line
    Given I run `tic_tac_toe`
    Then the output should contain:
      """
        +-----+-----+-----+
      3 |     |     |     |
        +-----+-----+-----+
      2 |     |     |     |
        +-----+-----+-----+
      1 |     |     |     |
        +-----+-----+-----+
            A     B     C
      """

  Scenario: Opening the game and making the first move
    Given I run `tic_tac_toe` interactively
    And I type "A, 3"
    Then the output should contain:
      """
        +-----+-----+-----+
      3 |  X  |     |     |
        +-----+-----+-----+
      2 |     |     |     |
        +-----+-----+-----+
      1 |     |     |     |
        +-----+-----+-----+
            A     B     C
      """



