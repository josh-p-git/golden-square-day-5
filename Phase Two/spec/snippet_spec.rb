require 'snippet'

describe 'snippet' do
  it 'returns the string when it is 5 words or less' do
    expect(snippet('This is a string')).to eq 'This is a string'
  end
  it 'returns only the first 5 words with ... when string is longer than 5 words' do
    expect(snippet('This is a string longer than five words')).to eq 'This is a string longer ...'
  end
  it 'returns an error message when parameter is not a string' do
    expect(snippet(9)).to eq 'Please input a string!'
  end
end
