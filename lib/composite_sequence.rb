class CompositeSequence

  def self.of_base_prime(prime)
    self.new(prime)
  end

  def initialize(prime)
    @base = prime
    @current = 2 * prime
  end

  def upcoming
    @current
  end

  def <=>(other)
    self.upcoming <=> other.upcoming
  end

  def next
    upcoming.tap do
      @current += @base
    end
  end

end
