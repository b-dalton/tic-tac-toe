require 'spec_helper'

RSpec.describe 'First Run', type: :aruba do
  let(:content) { (<<~'GRID'  # "Act" mixed in with "Assert"
    +----+----+----+
    |    |    |    |
    +----+----+----+
    |    |    |    |
    +----+----+----+
    |    |    |    |
    +----+----+----+
  GRID )}

  before(:each) { run_command('ruby ../../lib/tic_tac_toe.rb') }

  # Full string
  it { expect(last_command_started).to have_output content }
end

# class Tester
#   def say_hello
#     puts 'hello world'
#   end
# end

# describe Tester do
#   context 'when instructed to say hello' do
#     xit 'prints "hello world" to the command line' do
#       expect { Tester.new.say_hello }.to output('hello world').to_stdout
#     end
#   end
# end
