require_relative "string"
require_relative "item_container"
require_relative "item"
require_relative "virtual_item"
require_relative "real_item"
require_relative "antique_item"
require_relative "cart"
require_relative "order"


@items = []
#cart.add_item(Item.new({:price => 30,:weight => 3}))
@items << AntiqueItem.new({:price =>111, :name => "Диван"})
@items << RealItem.new({:price => 0, :weight => 50, :height => 60, :name => "Стена"})
@items << RealItem.new({:price => 105, :weight => 1, :height=> 0.5, :name => "нига"})

cart = Cart.new("Andrey")
cart.add_item RealItem.new({:price => 0, :weight => 50, :height => 60, :name => "Cтена"})
cart.add_item RealItem.new({:price => 1, :weight => 70, :height => 60, :name => "Cтена"})
cart.add_item RealItem.new({:price => 0, :weight => 90, :height => 60, :name => "Cтена"})
cart.add_item RealItem.new({:price => 105, :weight => 1, :height=> 0.5, :name => "нига"})
p cart.all_стенаs
