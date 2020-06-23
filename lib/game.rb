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
    if @items.length == 0
      puts "It's empty here..."
      return
    end
    get_item_list
  end

  private

  def get_item_list
    puts "==>Inventory<=="
    itemindex = 0
    @items.length.times do
      puts "==> #{@items[itemindex]} ==> QTY - 1"
      itemindex += 1
    end
  end
end
