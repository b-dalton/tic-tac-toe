class Tester
  def say_hello
    puts 'hello world'
  end
end

describe Tester do
  context 'when instructed to say hello' do
    xit 'prints "hello world" to the command line' do
      expect { Tester.new.say_hello }.to output('hello world').to_stdout
    end
  end
end
