require_relative "cart"
require_relative "item"
require_relative "virtual_item"
require_relative "real_item"

#cart.add_item(Item.new({:price => 30,:weight => 3}))
item1 = VirtualItem.new({:price =>20, :weight => 2, :height => 1, :name => "Диван"})
item2 = RealItem.new({:weight => 50, :height => 60, :name => "Стена"})

#item.info { |attr| puts attr }

cart = Cart.new
cart.add_item  item1
cart.add_item  item2

puts item1.price
puts item1.real_price
