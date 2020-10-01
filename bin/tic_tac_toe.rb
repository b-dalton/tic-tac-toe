require 'sinatra'
require 'erb'

class MyApp < Sinatra::Base
  get '/' do
    erb :tictactoe
  end

  get '/hello' do
    'Hello world!'
  end
end

# TicTacToe.new.new_game
