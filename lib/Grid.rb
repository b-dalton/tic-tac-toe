class Grid
    def initialize
       @grid = [
           [nil, nil, nil],  # 3
           [nil, nil, nil],  # 2
           [nil, nil, nil]   # 1
           # A    B    C
        ]
    end

    def grid
        @grid
    end

    def add_move(player_name, user_coordinates)
       coordinates = coordinate_converter(user_coordinates)
       column = coordinates[0]
       row = coordinates[1]
       
       @grid[row][column] = player_name        
    end

    private

    def coordinate_converter(user_coordinate)
        # Takes user-inputted coordinates and returns grid indices
        # E.g. "A3" => [2, 0]
        lookup = {
            "A" => 0,
            "B" => 1,
            "C" => 2,
            "1" => 2,
            "2" => 1,
            "3" => 0,
        }

        user_column = user_coordinate[0]
        user_row = user_coordinate[1]

        [lookup[user_row], lookup[user_column]]
    end
end
