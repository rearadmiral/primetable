require_relative 'sieve_of_eratosthenes'

class Primes

  def self.up_to(n)
    SieveOfEratosthenes.new(2..n).strain_out_composites
  end

end
