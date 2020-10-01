require '../tic_tac_toe'
require 'rspec'
require 'rack/test'

describe 'tic-tac-toe app' do
    include Rack::Test::Methods

    def app 
        MyApp
    end

    context 'when web server is started' do
        it 'displays a simple welcome message' do
            get '/'
            expect(last_response).to be_ok
            expect(last_response.body).to eq("Hello, world")
        end
        
    end
end