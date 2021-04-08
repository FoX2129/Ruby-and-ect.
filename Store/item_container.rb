module ItemContainer

  module ClassMethods
    def min_price
      100
    end
  end

  module InstanceMethods

    def add_item(item)
      #byebug
      puts "#{self.class.min_price} = min_price"
      puts item.real_price
      unless item.price < self.class.min_price
        @items.push item
      end
      puts "выход из add_item"
    end

    def remove_item
      @items.pop
    end

    def validate
      @items.each { |i| puts "No price for this unusual item" if i.price.nil? }
    end

    def delete_invalid_items
      @items.delete_if {|i| i.price.nil?}
    end


    def count_valiid_items
      @items.count {|i| i.price}
    end

  end

  def self.included(base)
    base.extend ClassMethods
    base.class_eval do
      include InstanceMethods
    end
  end

end
