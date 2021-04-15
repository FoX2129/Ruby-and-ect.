class Order<Cart

  attr_reader :items, :placed_at

  include ItemContainer

  def initialize
    @items = Array.new
    #...
  end

  def place
    @placed_at = Time.now

  #  Pony.mail(:to => StoreApplication::Admin.email,
  #  :from => "My Store <")
  end

end
