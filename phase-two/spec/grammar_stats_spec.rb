require_relative '../lib/grammar_stats.rb'

describe 'grammar_stats' do
  grammar_stats = GrammarStats.new
  it 'will return true if first letter of text is capitalised' do
    expect(grammar_stats.check('Hello world.')).to eq true
  end
  it 'will return true if last letter of text is punctuation' do
    expect(grammar_stats.check('Hello world.')).to eq true
  end
  it 'will return 100% when every test passes' do
    grammar_stats.check('Hello, world.')
    expect(grammar_stats.percentage_good).to eq 100
  end
  it 'will return 50% when half of the tests pass' do
    grammar_stats.check('Hello, world')
    grammar_stats.check('hello, world.')
    expect(grammar_stats.percentage_good).to eq 50
  end

end