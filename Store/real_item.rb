class RealItem < Item

  attr_reader :weight, :height

  def initialize(options)
    @weight = options[:weight]
    @height = options[:height]
    super
  end

  def info
    yield(weight)
    yield(height)
    super
  end

end
