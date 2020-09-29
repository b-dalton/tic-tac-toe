require_relative "../lib/opponent"

RSpec.describe Opponent do
    describe 'given an AI player' do
      context 'when a move is requested' do
        it 'gives a valid coordinate' do
            # Arrange
            opponent = Opponent.new

            # Act
            move = opponent.get_move

            # Assert
            expect(move).to eq ("B2")
        end
      end
    end
  end