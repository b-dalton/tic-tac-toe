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
end
