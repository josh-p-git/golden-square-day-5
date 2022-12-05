require 'check_codeword'

describe 'codeword' do
  it 'returns correct if horse' do
    expect(codeword('horse')).to eq 'Correct! Come in.'
  end
  it "returns 'close' if codeword starts with h" do
    expect(codeword('house')).to eq 'Close, but nope.'
  end
  it 'returns wrong if false' do
    expect(codeword('wrong')).to eq 'WRONG!'
  end
end
