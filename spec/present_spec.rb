require 'present'

RSpec.describe 'presents' do
  context 'returns and error if contents is already wrapped' do
    it 'fails' do
      present = Present.new
      present.wrap('Stuff')
      expect { present.wrap('Stuff') }.to raise_error 'A contents has already been wrapped.'
    end
  end
  context 'returns error if trying to unwrap nothing'
  it 'fails' do
    present = Present.new
    expect { present.unwrap }.to raise_error 'No contents have been wrapped.'
  end
end
