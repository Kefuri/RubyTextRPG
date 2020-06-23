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
    puts "It's empty here..."
  end

end
