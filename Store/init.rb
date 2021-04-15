require_relative "store_application"
StoreApplication.config do |app|
  app.name        = "My Store"
  app.environment = :production

  app.admin do |admin|
    admin.email = "fox2129@gmail.com"
    admin.login = "admin"
    admin.send_info_emails_on :mondays
  end

end

unless StoreApplication.frozen?
  StoreApplication.name = "My name"
end
#StoreApplication::Admin.email = "Deleted"
p StoreApplication::Admin.email

@items = []
#cart.add_item(Item.new({:price => 30,:weight => 3}))
@items << AntiqueItem.new(:price => 111, :name => "Диван")
@items << RealItem.new(price: 0, weight: 50, height: 60, name: "Стена")
@items << RealItem.new({:price => 105, :weight => 1, :height=> 0.5, :name => "нига"})

order = Order.new
order.place
puts order.placed_at.strftime("%Y %b %-d, %H:%M:%S")
