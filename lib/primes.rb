class Primes

  def self.include?(potential)
    return false if potential == 1
    test(potential)
  end

  private

  def self.test(potential)
    (2..potential-1).each do |potential_divisor|
      if potential % potential_divisor == 0
        return false
      end
    end
    true
  end

end
