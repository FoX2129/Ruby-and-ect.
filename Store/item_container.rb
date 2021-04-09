module ItemContainer

  module ClassMethods
    def min_price
      0
    end
  end

  module InstanceMethods

    def method_missing(method_name)
      if method_name =~ /^all_/
        show_all_items_with_name(method_name.to_s.sub(/^all_/,'').chomp('s'))
      else
        super #puts "method #{method_name} is not defined  on this object"
      end
    end

    def add_item(item)
      #byebug
      unless item.price < self.class.min_price
        @items.push item
      end
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

    private

      def show_all_items_with_name(n)
        @items.map { |i|  i if n.gsub(/[^\p{L}\d]/,'') == i.name.downcase.gsub(/[^\p{L}\d]/,'')}.delete_if {|i| i.nil?}
        #@items.map do |i|
        #   if n.gsub(/[^\p{L}\d]/,'') == i.name.downcase.gsub(/[^\p{L}\d]/,'')
        #     i.to_s
        #   end
        # end
      end

  end


  def self.included(base)
    base.extend ClassMethods
    base.class_eval do
      include InstanceMethods
    end
  end

end
