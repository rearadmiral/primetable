require_relative '../lib/primes'

describe Primes do

  it "knows that 1 is prime" do
    expect(Primes.contains?(1)).to be true
  end

end
