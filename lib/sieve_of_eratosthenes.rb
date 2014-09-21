class SieveOfEratosthenes

  def initialize(range_or_array)
    @range = range_or_array
    @potentials = range_or_array.to_a
  end

  def strain_out_composites
    current = 2

    while @range.include?(current)
      @potentials -= multiples_in_range(current)
      current = @potentials.find { |n| n > current}
    end

    @potentials
  end

  def multiples_in_range(n)
    (2..@range.end/n).each_with_object([]) do |i, multiples|
      multiples << i * n
    end
  end

  def possible_factors(number)
    (2..(number/2)).to_a
  end

end
