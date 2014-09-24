require_relative '../lib/ordered_composite_sequences'

describe OrderedCompositeSequences do

  let(:sequences) { OrderedCompositeSequences.new }

  it "can be added to" do
    sequences.add_sequence_for 3
    expect(sequences.size).to be 1
  end

  it "sorts by upcoming composite in each sequence" do
    sequences.add_sequence_for 3
    sequences.add_sequence_for 2
    expect(sequences.next_sequence.upcoming).to eq 4
  end

  it "remains sorted by the upcoming composite in each sequence" do
    sequences.add_sequence_for 7
    expect(sequences.size).to be 1
  end

end
