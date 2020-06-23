class Player
  
  def initialize(name="", hp=100, items=[])
    @name = name
    @hp = hp
    @items = items
    @status_effects = []
  end

  def set_name(name)
    puts "Name set to #{name}"
  end

  def show_items
    if @items.length > 0
      puts "==>Inventory<=="
      puts "==> Sword ==> QTY - 1"
      return
    end
    puts "It's empty here..."
  end
end
