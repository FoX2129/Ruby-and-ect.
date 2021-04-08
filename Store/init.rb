require_relative "item_container"
require_relative "cart"
require_relative "order"
require_relative "item"
require_relative "virtual_item"
require_relative "real_item"


@items = []
#cart.add_item(Item.new({:price => 30,:weight => 3}))
@items << VirtualItem.new({:price =>111, :weight => 2, :height => 1, :name => "Диван"})
@items << RealItem.new({:price => 0, :weight => 50, :height => 60, :name => "Стена"})
@items << VirtualItem.new({:price => 105, :name => "нига"})
