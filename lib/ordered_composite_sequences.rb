class OrderedCompositeSequences

  def initialize
    @sequences = []
  end

  def take_next_composite!
    next_sequence.next.tap { @sequences.sort! }
  end

  def next_composite
    next_sequence.upcoming
  end

  def add_sequence_for(prime)
    (@sequences << CompositeSequence.of_base_prime(prime)).sort!
    nil
  end

  private

  def next_sequence
    @sequences[0]
  end

end
