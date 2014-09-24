require_relative '../lib/composite_sequence'

describe CompositeSequence do

  it "starts with the doubling of the prime" do
    expect(CompositeSequence.of_base_prime(3).take_next!).to eq 6
  end

  it "lets you see the next value without consuming it" do
    sequence = CompositeSequence.of_base_prime(7)
    expect(2.times.map { sequence.next }).to eq [14,14]
  end

  it "gives the next multiple each iteration indefinitely" do
    seq = CompositeSequence.of_base_prime(5)
    expect(5.times.map { seq.take_next! }).to eq [10,15,20,25,30]
  end

  it "is comparable by its next value" do
    evens = CompositeSequence.of_base_prime(2)
    multiples_of_three = CompositeSequence.of_base_prime(3)
    expect(evens <=> multiples_of_three).to eq -1
    evens.take_next!
    expect(evens <=> multiples_of_three).to eq 0
    evens.take_next!
    expect(evens <=> multiples_of_three).to eq +1
  end


end
