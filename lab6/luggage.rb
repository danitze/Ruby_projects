class Luggage
  attr_accessor :amount, :weight

  def initialize(amount, weight)
    @amount = amount
    @weight = weight
  end

  def get_mean_weight
    weight.quo amount
  end
end
