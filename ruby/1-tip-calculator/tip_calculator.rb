class TipCalculator
  attr_reader :tip
  attr_reader :total

  def initialize(bill_amount, tip_rate = 0)
    @bill_amount = bill_amount.to_f
    @tip_rate = tip_rate.to_i
  end

  def calculate
    @tip = calculate_tip
    @total = calculate_total
    self
  end

  private

  def calculate_tip
    (@bill_amount * (@tip_rate/100.0)).round(2)
  end

  def calculate_total
    @bill_amount + @tip
  end
end

puts 'What is the bill amount? '
bill = gets.chomp
puts 'What is the tip percentage? '
tip = gets.chomp

tip_calc = TipCalculator.new(bill, tip).calculate

puts "The tip is $#{tip_calc.tip}"
puts "The total is $#{tip_calc.total}"
