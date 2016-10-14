class Error < StandardError
  def initialize(msg="DifferentCurrencyCodeError")
    super
  end
end
