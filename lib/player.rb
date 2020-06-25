class Player
  
  def initialize(name="", hp=100, attack=10, items=[])
    @name = name
    @hp = hp
    @base_attack = attack
    @items = items
    @status_effects = []
  end

  def set_name(name)
    puts "Name set to #{name}"
  end

  def name
    return @name
  end

  def hp
    return @hp
  end

  def take_damage(damage)
    if damage == 0 
      puts "The attack bounced off of you! 0 damage taken. Remaining HP: #{self.hp}\n"
      return
    end
    change_hp(damage)
    puts "#{self.name} took #{damage} damage! Remaining HP: #{self.hp}"
  end

  def show_items
    if @items.length == 0
      puts "It's empty here..."
      return
    end
    get_item_list
  end

  private

  def change_hp(hp)
    @hp -= hp
    @hp.negative? ? @hp = 0 : nil
    return @hp
  end

  def get_item_list
    puts "==>Inventory<=="
    itemindex = 0
    @items.length.times do
      puts "==> #{@items[itemindex]} ==> QTY - 1"
      itemindex += 1
    end
  end
end
