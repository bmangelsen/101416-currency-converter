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
