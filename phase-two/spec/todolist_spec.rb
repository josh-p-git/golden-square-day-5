require_relative '../lib/todolist.rb'

describe Reminder do
  it 'initializes with a name' do
    reminder = Reminder.new("Joe")
    task = "walk the dog"
    expect(reminder.remind_me_to(task)).to eq 'walk the dog'
  end
end