require 'gratitudes'

RSpec.describe 'gratitudes' do
  it 'pushes gratitudes to the empty array' do
    gratitudes = Gratitudes.new
    result = gratitudes.add('Stuff')
    expect(result).to eq ['Stuff']
  end
  it 'returns a formatted string' do
    gratitudes = Gratitudes.new
    gratitudes.add('Stuff')
    gratitudes.add('More stuff')
    result = gratitudes.format
    expect(result).to eq 'Be grateful for: Stuff, More stuff'
  end
end
