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

        Given I type "A, 3"
        Then the output should contain
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



