require_relative '../../lib/tic_tac_toe.rb'

describe TicTacToe do
  context 'given the app is started from the command line' do
    context 'when the user opens the app' do
      # User runs tic_tac_toe.rb from command line
      it 'then display an empty grid' do
        # Empty grid is displayed to the command line
        expect { system 'ruby lib/tic_tac_toe.rb' }.to output(a_string_including(<<~'GRID'
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
end
