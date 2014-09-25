require_relative '../lib/multiplication_table'

describe MultiplicationTable do

  let(:multiplication_table) { MultiplicationTable.new([1,2,3]) }

  it "generates a table" do

    table = [
      [1,2,3],
      [2,4,6],
      [3,6,9]
    ]

    expect(multiplication_table.generate).to eq table
  end


end
