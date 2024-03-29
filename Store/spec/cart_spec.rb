require "rspec"
require_relative "../app/item"
require_relative "../app/virtual_item"
require_relative "../app/antique_item"
require_relative "../app/item_container"
require_relative "../app/cart"

describe Cart do

    describe "managing items" do
      it "adds items into the cart" do
        cart = Cart.new("Andrey")
        item1= Item.new(price: 100, name: "Name1")
        item2= Item.new(price: 200, name: "Name2")
        cart.add_items(item1, item2)
        cart.items.should include(item1, item2)
      end

      it "removes items from itself"
    end


    it "Counting items in itself"
    it "plaaces order using all the items that were added into the cart"
    it "clear itself off the items after an order is placed"

end
