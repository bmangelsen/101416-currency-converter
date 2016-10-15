require_relative "./error"

class CurrencyConverter

  def initialize
    conversion_rates = {
      "USD" => 1.00,
      "EUR" => 0.91,
      "GBP" => 0.82,
      "INR" => 66.71,
      "CAD" => 1.31
    }
  end
end
