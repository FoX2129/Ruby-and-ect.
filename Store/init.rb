require_relative "item_container"
require_relative "cart"
require_relative "order"
require_relative "item"
require_relative "virtual_item"
require_relative "real_item"



#cart.add_item(Item.new({:price => 30,:weight => 3}))
item1 = VirtualItem.new({:price =>20, :weight => 2, :height => 1, :name => "Диван"})
item2 = RealItem.new({:weight => 50, :height => 60, :name => "Стена"})
item3 = VirtualItem.new({:price => 50, :name => "нига"})

#item.info { |attr| puts attr }

cart = Cart.new
cart.add_item  item1
cart.add_item  item2
cart.add_item  item3
cart.remove_item

order = Order.new
order.add_item  item1
order.add_item  item2
order.remove_item

puts cart.items.size
puts order.items.size
