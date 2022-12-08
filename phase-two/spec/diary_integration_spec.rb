require 'diary_entry2'
require 'diary'

describe 'diary integration' do
  it 'will return a list of all diary entries' do
  diary = Diary.new
  diary_entry = DiaryEntry.new('my_title', 'my_contents')
  diary.add(diary_entry)
  expect(diary.all).to eq [diary_entry]
  end
  it 'will count the amount of words in all diary entries' do
  diary = Diary.new
  diary_entry = DiaryEntry.new('my_title', 'my_contents')
  diary.add(diary_entry)
  expect(diary.count_words).to eq 1
  end
  it 'will return the time it will take to read diary entries' do
  diary = Diary.new
  diary_entry = DiaryEntry.new('my_title', 'my_contents')
  diary.add(diary_entry)
  expect(diary.reading_time(1)).to eq "It will take 1 minute(s) to read this"
  end
end