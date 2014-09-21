class Primes

  def self.all
    Enumerator.new do |yielder|
      current = 2
      yielder.yield 2
    end
  end

end
