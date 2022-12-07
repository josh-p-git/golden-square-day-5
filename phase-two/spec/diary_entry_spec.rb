require_relative '../lib/diary_entry.rb'

describe 'diary_entry' do
  diary_entry = DiaryEntry.new('Peter Pan', 'Chapter One...')
  
  it 'should return the title of the entry' do
    expect(diary_entry.title).to eq 'Peter Pan'
end
  it 'should return the contents of the entry' do
    expect(diary_entry.contents).to eq 'Chapter One...'
  end

end
