class Stock
  attr_accessor :numbers

  def initialize
    @numbers = []
  end

  def push(number)
    @numbers << number
  end

  def pop
    @numbers.empty? ? nil : @numbers.last
  end

  def max
    @numbers.max
  end

  def mean
    @numbers.sum / @numbers.length
  end
end
