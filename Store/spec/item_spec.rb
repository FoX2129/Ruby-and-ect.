require "rspec"
require_relative "../app/item"
require_relative "../app/virtual_item"

describe Item do

  before(:each) do
    @item = Item.new(price: 200, name: "Test_item")
  end

  before(:all) do
    end

  it "returns info about an object" do
    @item.to_s.should == "Test_item : 212.0"
  end

  it "calculates tax" do
    @item.send(:tax).should_not be_nil

  end
end
