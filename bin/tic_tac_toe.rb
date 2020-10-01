require 'sinatra/base'
require 'erb'

class MyApp < Sinatra::Base
  # enable :sessions

  get '/tictactoe' do
    erb :tictactoe
  end

  get '/hello' do
    'Hello world!'
  end

  run! if app_file == $0
end


