require "rspec"
require_relative "../app/item"
require_relative "../app/virtual_item"
require_relative "../app/real_item"

describe RealItem do
  it "uses weight while returning info of the condition is true" do
    item1 = RealItem.new(name:"Tovar", price:100, weight: 2, height:11)
    item2 = RealItem.new(name:"Tovarishe", price:200, weight: 50, height:22)
    item1_info = []
    item2_info = []
    item1.info { |attr| item1_info << attr}
    item2.info { |attr| item2_info << attr}
    item1_info.join(", ").should == "11, 107.0, Tovar"
    item2_info.join(", ").should == "50, 22, 212.0, Tovarishe"
  end

end
