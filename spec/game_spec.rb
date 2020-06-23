require 'game'

describe Player do
  describe '#set_name' do
    it "should take a name, set it, and print out a message" do
      user = Player.new
      expect { user.set_name('Haydon') }.to output("Name set to Haydon\n").to_stdout
    end
  end
end