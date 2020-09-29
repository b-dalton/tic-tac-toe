require 'grid'

class GameManager
    def initialize
        @current_player = "X"
        @grid = Grid.new
    end

    def grid
        [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
    end

    def current_player
        @current_player
    end

    def next_turn
        Grid.add_move(@current_player, "A3")
        
        if Grid.check_winner? 
            CLInterface.declare_winner
        else
            next_turn
        end
    end
end