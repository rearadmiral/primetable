require_relative '../lib/composite_sequence'

describe CompositeSequence do

  it "starts with the doubling of the prime" do
    expect(CompositeSequence.of_base_prime(3).next).to eq 6
  end

  it "lets you see the upcoming value" do
    sequence = CompositeSequence.of_base_prime(7)
    sequence.next
    expect(sequence.upcoming).to eq 21
  end

  it "gives the next multiple each iteration indefinitely" do
    seq = CompositeSequence.of_base_prime(5)
    expect(5.times.map { seq.next  }).to eq [10,15,20,25,30]
  end

  it "is comparable by upcoming value" do
    evens = CompositeSequence.of_base_prime(2)
    multiples_of_three = CompositeSequence.of_base_prime(3)
    expect(evens <=> multiples_of_three).to eq -1
    evens.next
    expect(evens <=> multiples_of_three).to eq 0
    evens.next
    expect(evens <=> multiples_of_three).to eq +1
  end


end
