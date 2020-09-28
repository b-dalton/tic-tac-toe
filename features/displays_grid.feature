Feature: Displays Tic Tac Toe board grid
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