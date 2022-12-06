require 'password_checker'
checker = PasswordChecker.new

RSpec.describe PasswordChecker do
  context 'when less than 8 characters' do
    it 'fails to submit' do
      expect { checker.check('SmolPas') }.to raise_error 'Invalid password, must be 8+ characters.'
    end
  end

  it 'returns true when 8 characters or longer' do
    expect(checker.check('LongPass')).to eq true
  end
end
