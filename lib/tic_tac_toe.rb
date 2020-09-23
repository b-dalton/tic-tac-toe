class TicTacToe
  def new_game
    puts <<~'GRID'
      +----+----+----+
          |    |    |    |
      +----+----+----+
           |    |    |    |
      +----+----+----+
      |    |    |    |
      +----+----+----+
    GRID
  end
end
