describe TicTacToe do
  context 'given a new game is started' do
    context 'when the user requests it' do
      # User runs tic_tac_toe.rb from command line
      it 'then display an empty grid' do
        # Empty grid is displayed to the command line
        expect(game.new_game).to output('
        _______ _        _______           _______
        |__   __(_)      |__   __|         |__   __|
            | |   _  ___     | | __ _  ___     | | ___   ___
            | |  | |/ __|    | |/ _` |/ __|    | |/ _ \ / _ \
            | |  | | (__     | | (_| | (__     | | (_) |  __/
            |_|  |_|\___|    |_|\__,_|\___|    |_|\___/ \___|
                        (C) 2020 Dalton & Adlington Productions

        Ready Player 1

        +----+----+----+
        |    |    |    |
        +----+----+----+
        |    |    |    |
        +----+----+----+
        |    |    |    |
        +----+----+----+
        ')
      end
    end
  end
end

describe Tester do
  context 'when instructed to say hello' do
    xit 'prints "hello world" to the command line' do
      expect { Tester.new.say_hello }.to output('hello world').to_stdout
    end
  end
end
