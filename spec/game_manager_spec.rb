require_relative "../lib/game_manager"

RSpec.describe GameManager do
    describe 'instantiation' do
        context 'when a new game is started' do
            it 'the grid is blank' do
                # Arrange
                game_manager = GameManager.new

                # Assert
                expect(game_manager.grid).to eq([[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]])
            end
        
            it 'the current player is X' do
                # Arrange
                game_manager = GameManager.new

                # Assert
                expect(game_manager.current_player).to eq("X")
            end
        end

        context 'when the first turn is taken' do
            it 'updates the board' do
                # Arrange
                game_manager = GameManager.new

                # Act
                game_manager.next_turn

                # Assert
                expect(game_manager.grid).to eq([["X", nil, nil], [nil, nil, nil], [nil, nil, nil]])
            end
        end
    end
end