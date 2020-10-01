require 'rspec'
require 'rack/test'
require_relative '../../tic_tac_toe'

describe 'tic-tac-toe app' do
  include Rack::Test::Methods

  def app
    MyApp
  end

  context 'with simple display' do
    it 'starts with an empty 3x3 tic-tac-toe grid' do
      # Act
      get '/tictactoe'

      # Assert
      expect(last_response).to be_ok

      (0..2).each do |row|
        (0..2).each do |col|
          expect(last_response.body).to have_tag('input', with: { class: "row#{row} col#{col}" })
        end
      end
    end
  end

  context 'when a user makes a move' do
    # Arrange
    grid_cells_with_css = {
      row0_col0_in: { cell_css_selector: 'input.row0.col0', input: 'X', expected_output: 'X' }
    }

    grid_cells_with_css.each do |square, values|
      it "remembers when user makes a mark in a grid square: '#{square}, #{values[:expected_output]}'" do
        # Act
        post '/tictactoe', square => values[:input]

        # Assert
        expect(last_response).to be_ok
        expect(last_response.body).to have_tag(values[:square_css_selector], with: { value: values[:expected_output] })
      end
    end
  end
end
