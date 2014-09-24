require_relative '../lib/ordered_composite_sequences'

describe OrderedCompositeSequences do

  let(:sequences) { OrderedCompositeSequences.new }

  describe "#add_sequence_for" do
    it "adds" do
      sequences.add_sequence_for 3
      expect(sequences.next_composite).to be 6
    end
  end

  describe "#next_composite" do
    it "returns the next lowest composite available but keeps it" do
      sequences.add_sequence_for 3
      sequences.add_sequence_for 2
      expect(2.times.map { sequences.next_composite }).to eq [4,4]
    end
  end

  describe "#take_next_composite!" do
    it "returns next lowest composite and discards it" do
      sequences.add_sequence_for 7
      expect(sequences.take_next_composite!).to eq 14
      expect(sequences.take_next_composite!).to eq 21
    end

    it "returns next lowest composite from any of its sequences" do
      sequences.add_sequence_for 7
      sequences.add_sequence_for 11
      expect(sequences.take_next_composite!).to eq 14
      expect(sequences.take_next_composite!).to eq 21
      expect(sequences.take_next_composite!).to eq 22
    end

    it "discards all identical composites when they exist in multiple sequences" do
      sequences.add_sequence_for 2
      sequences.add_sequence_for 3
      expect(sequences.take_next_composite!).to eq 4
      expect(sequences.take_next_composite!).to eq 6
      expect(sequences.take_next_composite!).to eq 8
    end

  end


end
