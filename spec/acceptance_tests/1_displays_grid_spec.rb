require_relative '../../lib/tic_tac_toe.rb'

describe 'command line interface', type: :aruba do
  context 'given the app is started from the command line' do
    # Arrange
    before(:each) do
      run_command('ruby ../../lib/tic_tac_toe.rb')
    end

    it 'displays an empty grid' do
      # Act - N/A

      # Assert
      grid = <<~'GRID'
          +-----+-----+-----+
        3 |     |     |     |
          +-----+-----+-----+
        2 |     |     |     |
          +-----+-----+-----+
        1 |     |     |     |
          +-----+-----+-----+
             A     B     C
      GRID

      expect(last_command_started).to have_output an_output_string_including grid
    end

    context 'when the user makes a move "X"' do
      it 'displays an X in the grid' do
        X = "A, 3"
        grid = <<~GRID
          +-----+-----+-----+
        3 |#{X} |     |     |
          +-----+-----+-----+
        2 |     |     |     |
          +-----+-----+-----+
        1 |     |     |     |
          +-----+-----+-----+
             A     B     C

        GRID
        
        expect(TicTacToe.player_move(X)).to have_output an_output_string_including grid

        expect
      end
    end
  end
end



