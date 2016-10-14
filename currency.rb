require_relative "./error"  # => true

class Currency

  def initialize(value, code)
    @value = value             # => 100, 100
    @code = code               # => "USD", "EUR"
  end                          # => :initialize

  def value
    @value   # => 100, 100
  end        # => :value

  def code
    @code   # => "EUR", "USD", "EUR", "USD"
  end       # => :code

  def ==(object)
    object.value == value && object.code == code ? true : false  # => false
  end                                                            # => :==

  def +(object)
    raise Error if object.code != code  # ~> Error: DifferentCurrencyCodeError
    object.value + value
  end                                   # => :+

  def -(object)
    raise Error if object.code != code
    object.value - value >= 0 ? object.value - value : 0
  end                                                     # => :-


end  # => :-



usd_100 = Currency.new(100, "USD")  # => #<Currency:0x007fbbd9963970 @value=100, @code="USD">
usd_200 = Currency.new(100, "EUR")  # => #<Currency:0x007fbbd9962ac0 @value=100, @code="EUR">
usd_100.==(usd_200)                 # => false
usd_100.+(usd_200)
usd_100.-(usd_100)

# ~> Error
# ~> DifferentCurrencyCodeError
# ~>
# ~> /Users/bmangelsen/code/github/101416-currency-converter/currency.rb:23:in `+'
# ~> /Users/bmangelsen/code/github/101416-currency-converter/currency.rb:40:in `<main>'
