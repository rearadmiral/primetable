class Primes

  # based on incremental sieve of eratosthenes algorithm described by:
  # http://www.cs.hmc.edu/~oneill/papers/Sieve-JFP.pdf
  def self.first(n)
    composites = OrderedCompositeSequences.new
    primes = [2]
    composites.add_sequence_for 2

    while primes.size < n


    end

    primes
  end


end
