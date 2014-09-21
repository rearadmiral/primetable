class SieveOfEratosthenes

  def initialize(range)
    @range = range
    @potentials = Set.new(range.to_a)
  end

  def strain_out_composites
    current_prime = 2

    while @range.include? current_prime
      @potentials -= multiples_in_range(current_prime)
      current_prime = next_smallest_prime(@potentials)
    end
  end

  def multiples_in_range(n)
    (1..@range.end/n).each_with_object([]) do |i, multiples|
      multiples << i * n
    end
  end

  def next_smallest_prime(numbers)
    numbers.find do |number|
      possible_factors(number).none? { |factor| number % factor == 0 }
    end
  end

  def possible_factors(number)
    (2..(number/2)).to_a
  end

end
