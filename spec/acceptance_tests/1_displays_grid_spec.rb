require_relative '../../lib/tic_tac_toe.rb'

describe TicTacToe do
  context 'given a new game is started' do
    context 'when the user requests it' do
      # User runs tic_tac_toe.rb from command line
      it 'then display an empty grid' do
        # Empty grid is displayed to the command line
        game = TicTacToe.new
        expect { game.new_game }.to output(<<~'GRID'
          +----+----+----+
          |    |    |    |
          +----+----+----+
          |    |    |    |
          +----+----+----+
          |    |    |    |
          +----+----+----+
        GRID
                                          ).to_stdout
      end
    end
  end
end
