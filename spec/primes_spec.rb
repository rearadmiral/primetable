require_relative '../lib/primes'

describe Primes do

  it "knows that 1 is not prime" do
    expect(Primes.contains?(1)).to be false
  end

  it "knows that 2 is not prime" do
    expect(Primes.contains?(2)).to be false
  end

  it "knows that 3 is prime" do
    expect(Primes.contains?(3)).to be true
  end

end
