require_relative '../lib/sieve_of_eratosthenes'

describe SieveOfEratosthenes do

  let(:sieve) { SieveOfEratosthenes.new(2..20) }

  it "can generate multiples of a number in the range" do
    expect(sieve.multiples_in_range(3)).to eq [3, 6, 9, 12, 15, 18]
  end

  it "won't generate multiples of a number out of the range" do
    expect(sieve.multiples_in_range(21)).to eq []
  end

  it "can find the next smallest prime" do
    sieve = SieveOfEratosthenes.new([4, 6, 8, 9, 11, 18])
    expect(sieve.next_smallest_prime).to eq 11
  end

  it "returns nil if set contains no more primes" do
    sieve = SieveOfEratosthenes.new([4, 6, 8, 9, 10, 12, 15, 16, 18, 20, 21, 22, 24])
    expect(sieve.next_smallest_prime).to be nil
  end

  it "knows the possible factors to check for a number" do
    expect(sieve.possible_factors(16)).to eq [2, 3, 4, 5, 6, 7, 8]
  end

end
