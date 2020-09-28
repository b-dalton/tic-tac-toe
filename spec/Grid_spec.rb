require_relative "../lib/Grid"

RSpec.describe Grid do
    describe '.grid' do
      context 'when no moves have been made' do
        it 'returns an empty grid' do
            grid = Grid.new

          expect(grid.grid).to eq([
              [nil, nil, nil],
              [nil, nil, nil],
              [nil, nil, nil]
          ])
        end
      end

      context 'when a move is made' do
        it 'records that move' do
            grid = Grid.new

            grid.add_move("player1", "A3")

            expect(grid.grid).to eq([
              ["player1", nil, nil],
              [nil, nil, nil],
              [nil, nil, nil]
            ])
        end
        end
    end
  end