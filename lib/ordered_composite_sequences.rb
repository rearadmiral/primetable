require_relative 'composite_sequence'

class OrderedCompositeSequences

  def initialize
    @sequences = []
  end

  def take_next_composite!
    next_sequence.take_next!.tap do |return_value|

      @sequences.sort!
      @sequences.each do |other_sequence|
        upcoming_value = other_sequence.next
        if upcoming_value == return_value
          other_sequence.take_next!
        end
        break if upcoming_value > return_value
      end

      @sequences.sort!
    end
  end

  def next_composite
    next_sequence.next
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
