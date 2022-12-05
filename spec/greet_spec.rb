require 'greet'
describe 'greet' do
  it "returns a greeting with the user's name" do
    expect(greet('Josh')).to eq 'Hello, Josh!'
  end
end
