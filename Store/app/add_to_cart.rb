require_relative "init"

cart = Cart.new(ARGV.delete_at(0))
ARGV.each do |a|
  @items.each { |i| cart.add_item(i) if a == i.name}
end
cart.read_from_file
begin
  cart.save_to_file
rescue Cart::ItemNotSupported
  puts "Sorry, Your item is unsupported (maybe yet). You can not add to cart this types of items:
  #{Cart::UNSUPPORTED_ITEMS}"
end
