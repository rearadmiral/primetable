require_relative '../lib/multiplication_table'

class TablePrinter

  def initialize(primes, io=STDOUT)
    @primes = primes
    @table = MultiplicationTable.new(@primes).generate
    @io = io
  end

  def print

    print_header_row

    @table.each_with_index do |row, i|
      @io.write(format % @primes[i] + separator)
      @io.write formatted_list(row)
      @io.write "\n"
    end

  end

  private

  def print_header_row
    @io.write spacer
    @io.write formatted_list(@primes)
    @io.write "\n"
    @io.write "=" * ((@primes.size + 1) * field_size)
    @io.write "\n"
  end

  def formatted_list(array)
    array.map { |elem| format % elem }.join(separator)
  end

  def spacer
    @spacer ||= " " * field_size
  end

  def separator
    " | "
  end

  def format
    @format ||= "%#{longest_digits}d"
  end

  def field_size
    @field_size ||= longest_digits + separator.size
  end

  def longest_digits
    @longest_digits ||= @table.max_by { |row| row.max }.to_s.size
  end

end
