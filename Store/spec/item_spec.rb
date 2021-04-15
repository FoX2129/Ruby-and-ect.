require "rspec"
require_relative "../app/item"
require_relative "../app/virtual_item"

describe Item do

  before(:each) do
    @item = Item.new(price: 200, name: "Test_item")
  end

  before(:all) do
    end

  it "calculates price according to a special formula" do
    @item.price.should == 212
    @item.price (300)
  end

  it "returns info about an object" do
    @item.to_s.should == "Test_item : 212.0"
  end

end
