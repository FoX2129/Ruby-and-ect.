require_relative "item_container"
require_relative "cart"
require_relative "order"
require_relative "item"
require_relative "virtual_item"
require_relative "real_item"



#cart.add_item(Item.new({:price => 30,:weight => 3}))
item1 = VirtualItem.new({:price =>111, :weight => 2, :height => 1, :name => "Диван"})
item2 = RealItem.new({:price => 106, :weight => 50, :height => 60, :name => "Стена"})
item3 = VirtualItem.new({:price => 105, :name => "нига"})
item4 = RealItem.new({:price => 1, :name => "Доширак"})

#item.info { |attr| puts attr }

cart = Cart.new
cart.add_item  item1
cart.add_item  item2
cart.add_item  item3
cart.remove_item
cart.add_item  item4

order = Order.new
order.add_item  item1
order.add_item  item2
order.remove_item
order.add_item  item4

puts cart.items.size
