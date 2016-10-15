require_relative "./error"
require_relative "./currency"

class CurrencyConverter

  def initialize(rates)
    @conversion_rates = rates
  end

  def conversion_rates
    @conversion_rates
  end

  def convert(object, code)
    if object.code == code
      Currency.new(object.value, object.code)
    else
      raise Error unless conversion_rates.include?(object.code) && conversion_rates.include?(code)
      Currency.new(conversion_rates[code] / conversion_rates[object.code] * object.value, code)
    end
  end
end
