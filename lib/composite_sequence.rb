class CompositeSequence

  def self.of_base_prime(prime)
    self.new(prime)
  end

  def initialize(prime)
    @base = prime
    @current = 2 * prime
  end

  def next
    @current
  end

  def <=>(other)
    self.next <=> other.next
  end

  def take_next!
    self.next.tap do
      @current += @base
    end
  end

end
