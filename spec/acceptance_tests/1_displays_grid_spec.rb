require_relative '../../lib/tic_tac_toe.rb'

describe TicTacToe do
  context 'given the app is started from the command line' do
    # Arrange
    # run from the command line
    it 'displays an empty grid' do
      # Assert
      expect { system 'ruby lib/tic_tac_toe.rb' }.to output(a_string_including(<<~'GRID'  # "Act" mixed in with "Assert"
        +----+----+----+
        |    |    |    |
        +----+----+----+
        |    |    |    |
        +----+----+----+
        |    |    |    |
        +----+----+----+
      GRID
                                                                              )).to_stdout_from_any_process
    end
  end
end
