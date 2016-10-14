class Currency

  def initialize
    @amount = 100
    @currency_code = "USD"
    @equal = true           #
  end

  def amount
    @amount
  end

  def currency_code
    @currency_code
  end

  def equal
    @equal
  end

  def not_equal
    !@equal
  end

  def equal?(user_value, user_code)
    if user_value == amount && user_code == currency_code
      equal
    else
      not_equal
    end
  end


end
