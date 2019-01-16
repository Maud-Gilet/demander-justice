require 'csv'

class Stock
  attr_accessor :numbers

  def initialize
    @numbers = []
    load_csv
  end

  def push(number)
    @numbers << number
    save_to_csv(number)
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

  def load_csv
    CSV.foreach('stock.csv') do |row|
      @numbers << row.to_i
    end
  end

  def save_to_csv(number)
    CSV.open('stock.csv', 'w') do |csv|
      csv << number
    end
  end
end
