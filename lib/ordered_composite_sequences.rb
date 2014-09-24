class OrderedCompositeSequences

  def initialize
    @sequences = []
  end

  def next_sequence
    @sequences[0]
  end

  def add_sequence_for(prime)
    (@sequences << CompositeSequence.of_base_prime(prime)).sort!
  end

  def size
    @sequences.size
  end

end
