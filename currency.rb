require_relative "./error"

class Currency

  def initialize(value, code = "")
    @code_symbols =
      { "$" => "USD",
        "€" => "EUR",
        "£" => "GBP",
        "₹" => "INR" }
    raise Error if !@code_symbols.include?(value.to_s[0]) && code == ""
    if @code_symbols.include?(value.to_s[0])  #value.to_s allows us to take in float and check zero position
      @code = @code_symbols[value[0]]
      value[0] = ""
      @value = value.to_f
    else
      @code = code
      @value = value.to_f
    end
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
    value + object.value
  end

  def -(object)
    raise Error if object.code != code
    value - object.value
  end

  def *(factor)
    Currency.new(value * factor, code)
  end

end
