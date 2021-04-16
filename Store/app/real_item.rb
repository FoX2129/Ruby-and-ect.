class RealItem < Item

  attr_reader :weight, :height

  show_info_about :weight, lambda { |attr| attr > 10}


  def initialize(options)
    @weight = options[:weight]
    @height = options[:height]
    super
  end

  def to_s
    super + " : #{self.weight} : #{self.height}"
  end

  def info
    if !@@show_info_about[:weight] || @@show_info_about[:weight].call(weight)
      yield(weight)
    end
    yield(height)
    super
  end

end
