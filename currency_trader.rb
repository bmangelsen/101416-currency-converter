require_relative "./currency"
require_relative "./currency_converter"

class CurrencyTrader

  def initialize(converter1, converter2, currency)
    @converter1 = converter1
    @converter2 = converter2
    @currency = currency
  end

  def converter1_rates
    @converter1.conversion_rates
  end

  def converter2_rates
    @converter2.conversion_rates
  end

  def my_value
    @currency.value
  end

  def my_code
    @currency.code
  end


end
