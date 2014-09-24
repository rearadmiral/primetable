class Primes

  # based on incremental sieve of eratosthenes algorithm described by:
  # http://www.cs.hmc.edu/~oneill/papers/Sieve-JFP.pdf
  def self.first(n)
    composites = OrderedCompositeSequences.new
    primes = []
    current = 2

    while primes.size < n
      if composites.empty? || composites.next_composite > current
        primes << current
        composites.add_sequence_for current
        current += 1
      elsif composites.next_composite == current
        composites.take_next_composite!
        current += 1
      end

    end

    primes
  end


end
