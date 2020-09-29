require_relative "../lib/player"

RSpec.describe Player do
    describe 'for a human player' do
      context 'when a move is requested' do
        it 'gives a valid coordinate' do
            # Arrange
            user_interface = double('CLInterface') 
            allow(user_interface).to receive(:get_user_input) { 'A3' } # user_interface.get_user_input will return "A3"

            player = Player.new(user_interface)

            # Act
            move = player.get_move

            # Assert
            expect(move).to eq ("A3")
        end

        it 'gives another valid coordinate' do
            # Arrange
            user_interface = double('CLInterface') 
            allow(user_interface).to receive(:get_user_input) { 'C1' }

            player = Player.new(user_interface)

            # Act
            move = player.get_move

            # Assert
            expect(move).to eq ("C1")
        end
      end
    end
  end