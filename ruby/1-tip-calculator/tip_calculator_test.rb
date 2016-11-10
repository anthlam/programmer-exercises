require 'test/unit'
require_relative './tip_calculator.rb'

class TipCalculatorTest < Test::Unit::TestCase
  def test_15_percent_tip
    bill_amount = 10
    tip_rate = 15
    expected_tip = 1.50
    expected_total = 11.50

    tip_calc = TipCalculator.new(bill_amount, tip_rate).calculate

    assert_equal expected_tip, tip_calc.tip
    assert_equal expected_total, tip_calc.total
  end

  def test_tip_on_unround_bill
    bill_amount = 13.49
    tip_rate = 20
    expected_tip = 2.70
    expected_total = 16.19

    tip_calc = TipCalculator.new(bill_amount, tip_rate).calculate

    assert_equal expected_tip, tip_calc.tip
    assert_equal expected_total, tip_calc.total
  end
end
