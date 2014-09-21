require_relative '../lib/sieve_of_eratosthenes'

describe SieveOfEratosthenes do

  let(:sieve) { SieveOfEratosthenes.new(2..20) }

  it "can generate multiples of a number in the range" do
    expect(sieve.multiples_in_range(2)).to eq [4, 6, 8, 10, 12, 14, 16, 18, 20]
  end

  it "won't generate multiples of a number out of the range" do
    expect(sieve.multiples_in_range(11)).to eq []
  end

  it "knows the possible factors to check for a number" do
    expect(sieve.possible_factors(16)).to eq [2, 3, 4, 5, 6, 7, 8]
  end

end
