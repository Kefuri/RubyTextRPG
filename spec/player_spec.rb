require 'player'

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

  describe '#show_items' do
    it "should show a message when item inventory is empty" do
      expect { subject.show_items }.to output("It's empty here...\n").to_stdout
    end

    it "should show a list of items when the user inventory is not empty" do
      user = Player.new("Haydon", 100, 10, ["Sword"])
      expect { user.show_items }.to output("==>Inventory<==\n==> Sword ==> QTY - 1\n").to_stdout
    end

    it "should be able to display a large list of items" do
      user = Player.new("Haydon", 100, 10, ["Sword", "Shield"])
      expect { user.show_items }.to output("==>Inventory<==\n==> Sword ==> QTY - 1\n==> Shield ==> QTY - 1\n").to_stdout
    end
  end

  describe '#take_damage' do
    it "should remove health from the user when dealing damage" do
      expect { subject.take_damage(10) }.to output("#{subject.name} took 10 damage! Remaining HP: 90\n").to_stdout
    end

    it "should display a special message when the user takes no damage" do
      expect { subject.take_damage(0) }.to output("The attack bounced off of you! 0 damage taken. Remaining HP: 100\n").to_stdout
    end

    it "should handle the user taking damage multiple times" do
      expect{ subject.take_damage(10) }.to output("#{subject.name} took 10 damage! Remaining HP: 90\n").to_stdout
      expect{ subject.take_damage(30) }.to output("#{subject.name} took 30 damage! Remaining HP: 60\n").to_stdout
      expect{ subject.take_damage(0) }.to output("The attack bounced off of you! 0 damage taken. Remaining HP: 60\n").to_stdout
    end

    it "should prevent the user from going below 0 hp" do
      expect{ subject.take_damage(101) }.to output("#{subject.name} took 101 damage! Remaining HP: 0\n").to_stdout
      expect(subject.hp).to eq(0)
    end
  end
end