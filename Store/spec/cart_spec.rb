require "rspec"
require_relative "../app/item"
require_relative "../app/virtual_item"
require_relative "../app/antique_item"
require_relative "../app/item_container"
require_relative "../app/cart"

describe Cart do

    it "adds items into the cart" do
      cart = Cart.new("Andrey")
      item1= Item.new(price: 100, name: "Name1")
      item2= Item.new(price: 200, name: "Name2")
      cart.add_items(item1, item2)
      cart.items.should include(item1, item2 )
    end

end
