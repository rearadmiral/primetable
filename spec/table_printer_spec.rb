require_relative '../lib/table_printer'
require 'stringio'

describe TablePrinter do

  let(:io) { StringIO.new }
  let(:primes) { [2,3,5] }
  let(:printer) { TablePrinter.new(primes, io) }

  it "prints the table" do

    printer.print

    expect(io.string).to include(<<-TABLE)
      2 |  3 |  5
====================
 2 |  4 |  6 | 10
 3 |  6 |  9 | 15
 5 | 10 | 15 | 25
TABLE

  end

end
