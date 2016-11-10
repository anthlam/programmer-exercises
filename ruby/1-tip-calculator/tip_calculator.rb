class TipCalculator
  attr_reader :tip
  attr_reader :total

  def initialize(bill_amount, tip_rate)
    @bill_amount = bill_amount
    @tip_rate = tip_rate
  end

  def calculate
    @tip = calculate_tip
    @total = calculate_total
    self
  end

  private

  def calculate_tip
    @bill_amount * (@tip_rate/100.0)
  end

  def calculate_total
    @bill_amount + @tip
  end
end
