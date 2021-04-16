require "rspec"
require 'rspec/collection_matchers'
require_relative "../app/item"
require_relative "../app/virtual_item"
require_relative "../app/item_container"

class ItemBox
  include ItemContainer
  def initialize
    @items = []
  end

end

describe ItemContainer do

  before(:each) do
    @box = ItemBox.new

    @item1 = Item.new(name:"Item1", price: 100)
    @item2 = Item.new(name:"Item2", price: 200)
  end

  it "shows minimum price for the item" do
    ItemBox.min_price.should be(0)
  end

  it "adds items into the container" do
    @box.add_item(@item1)
    @box.add_item(@item2)
    @box.items.should have(2).items
  end

  it "removes item from the box" do
    @box.add_item(@item1)
    @box.add_item(@item2)
    @box.remove_item
    @box.remove_item
    @box.items.should be_empty
  end

  it "user is trying to add anithing else but an item" do
    lambda {@box.add_item("shomething else")}.should raise_error
  end



end
