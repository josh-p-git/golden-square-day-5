require 'diary_entry2'

describe 'DiaryEntry' do 
  it 'constructs with title and contents' do
    diary_entry = DiaryEntry.new('my_title', 'my_contents')
    expect(diary_entry.title).to eq 'my_title'
  end
end