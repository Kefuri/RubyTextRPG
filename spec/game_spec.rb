require 'game'

describe Player do
  describe '#set_name' do
    it "should take a name, set it, and print out a message" do
      expect { subject.set_name('Haydon') }.to output("Name set to Haydon\n").to_stdout
    end
    it "should be able to handle all name changes" do
      expect { subject.set_name('Haydon') }.to output("Name set to Haydon\n").to_stdout
      name = ['John', 'Jack', 'Tim'].sample
      expect { subject.set_name(name) }.to output("Name set to #{name}\n").to_stdout
    end
  end
end