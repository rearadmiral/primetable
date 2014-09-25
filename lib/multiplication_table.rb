class MultiplicationTable

  def initialize(factors)
    @factors = factors
  end

  def generate
    @factors.map do |f1|
      @factors.map { |f2| f1 * f2 }
    end
  end

end
