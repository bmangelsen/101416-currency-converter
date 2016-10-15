require_relative "./error"
require_relative "./currency"

class CurrencyConverter

  def initialize
    @conversion_rates = {
      "USD" => 1.00,
      "EUR" => 0.91,
      "GBP" => 0.82,
      "INR" => 66.71,
      "CAD" => 1.31
    }
  end

  def conversion_rates
    @conversion_rates
  end

  def convert(object, code)
    if object.code == code
      Currency.new(object.value, object.code)
    else
      raise Error unless conversion_rates.include?(object.code) && conversion_rates.include?(code)
      Currency.new(conversion_rates["USD"] / conversion_rates[object.code] * conversion_rates[code] * object.value, code)
    end
  end
end

usd_100 = Currency.new(100, "USD")
usd_100_second = CurrencyConverter.new.convert(usd_100, "USD")
eur_100 = CurrencyConverter.new.convert(usd_100, "EUR")

inr_100 = Currency.new(100, "INR")
eur = CurrencyConverter.new.convert(inr_100, "EUR")

gbp_100 = Currency.new(100, "GBP")
cad = CurrencyConverter.new.convert(gbp_100, "CAD")

eur
usd_100_second
