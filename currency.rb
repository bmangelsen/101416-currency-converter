require_relative "./error"

class Currency

  def initialize(value, code)
    @value = value
    @code = code
  end

  def value
    @value
  end

  def code
    @code
  end

  def ==(object)
    object.value == value && object.code == code ? true : false
  end

  def +(object)
    raise Error if object.code != code
    object.value + value
  end

  def -(object)
    raise Error if object.code != code
    object.value - value >= 0 ? object.value - value : 0
  end

  def *(factor)
    Currency.new(value * factor, code)
  end


end



usd_100 = Currency.new(100, "USD")
usd_200 = Currency.new(200, "USD")
usd_100.==(usd_200)
usd_100.+(usd_200)
usd_100.-(usd_100)
usd_423 = usd_100.*4.23
