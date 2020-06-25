require 'game'

describe Game do
  describe "#get_input" do
    it "should get input using gets.chomp" do
      expect_any_instance_of(Game).to receive(:gets).and_return("user input")
      expect(subject.get_input).to eq("user input")
    end
  end
end