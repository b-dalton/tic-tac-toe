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
        +----+----+----+
        |    |    |    |
        +----+----+----+
        |    |    |    |
        +----+----+----+
        |    |    |    |
        +----+----+----+
      GRID

      expect(last_command_started).to have_output an_output_string_including grid
    end
  end
end
