require_relative "store_application"
StoreApplication.config do |app|
  app.name        = "My Store"
  app.environment = :production

  app.admin do |admin|
    admin.email = "admin@mystore.com"
    admin.login = "admin"
    admin.send_info_emails_on :mondays
  end

end

p StoreApplication.environment
p StoreApplication.name
p StoreApplication::Admin.email
p StoreApplication::Admin.login

@items = []
#cart.add_item(Item.new({:price => 30,:weight => 3}))
@items << AntiqueItem.new(:price => 111, :name => "Диван")
@items << RealItem.new(price: 0, weight: 50, height: 60, name: "Стена")
@items << RealItem.new({:price => 105, :weight => 1, :height=> 0.5, :name => "нига"})

cart = Cart.new("Andrey")
cart.add_item RealItem.new({:price => 0, :weight => 50, :height => 60, :name => "Car"})
cart.add_item RealItem.new({:price => 1, :weight => 70, :height => 60, :name => "Car"})
cart.add_item RealItem.new({:price => 105, :weight => 1, :height=> 0.5, :name => "нига"})
