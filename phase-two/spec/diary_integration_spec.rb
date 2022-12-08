require 'diary_entry2'
require 'diary'

describe 'diary integration' do
  it 'will return a list of all diary entries' do
  diary = Diary.new
  diary_entry = DiaryEntry.new('my_title', 'my_contents')
  diary.add(diary_entry)
  expect(diary.all).to eq ['my_title']
  end
end