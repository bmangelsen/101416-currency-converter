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

  def my_code
    @currency.code
  end

  def best_investment?
    converter1_comparative_rates = []
    converter2_comparative_rates = []
    rate_differences = []
    currency_codes = converter1_rates.keys

      converter1_rates.keys.each do |x|
        converter1_comparative_rates << converter1_rates[x] / converter1_rates[my_code]
      end
      converter2_rates.keys.each do |x|
        converter2_comparative_rates << converter2_rates[x] / converter2_rates[my_code]
      end

      converter1_comparative_rates.each_index do |x|
        rate_differences << converter1_comparative_rates[x] / converter2_comparative_rates[x]
      end

      currency_codes[rate_differences.rindex(rate_differences.max)]
  end
end
