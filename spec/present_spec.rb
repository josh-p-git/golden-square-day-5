require 'present'

RSpec.describe Present do
  present = Present.new

  context 'when already wrapped' do
    it 'fails to wrap' do
      present.wrap('Socks')
      expect { present.wrap('Lynx Africa') }.to raise_error 'A contents has already been wrapped.'
    end
  end

  context 'when not yet wrapped'
  it 'fails to unwrap' do
    expect { present.unwrap }.to raise_error 'No contents have been wrapped.'
  end

  context 'when wrapped' do
    it 'should be able to unwrap' do
      expect(present.unwrap).to eq 'Socks'
    end
  end
end
