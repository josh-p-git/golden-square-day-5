require 'report_length'
describe 'report_length' do
  it 'returns correct length in a sentence' do
    expect(report_length('word')).to eq 'This string was 4 characters long.'
  end
end
