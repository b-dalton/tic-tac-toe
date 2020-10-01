require 'sinatra'

class MyApp < Sinatra::Base
  get '/' do
    'Hello world'
  end
end

# TicTacToe.new.new_game
