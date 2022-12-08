require_relative '../lib/todolist'

describe TodoList do
  it 'has an empty list if given no tasks' do
    todo_list = TodoList.new('Joe')
    expect(todo_list.remind_me_to('')).to eq ['']
  end
  it 'will give an error if attempt to remind with no tasks set' do
    todo_list = TodoList.new('Joe')
    expect { todo_list.remind }.to raise_error 'No tasks set!'
  end
  it 'will return a string reminding user to do the task' do
    todo_list = TodoList.new('Joe')
    todo_list.remind_me_to('Walk the dog')
    expect(todo_list.remind).to eq 'Walk the dog, Joe!'
  end
  it 'will return a list of items if multiple items added' do
    todo_list = TodoList.new('Joe')
    todo_list.remind_me_to('Walk the dog')
    todo_list.remind_me_to('Take out trash')
    todo_list.remind_me_to('Clean the car')
    expect(todo_list.remind).to eq 'Walk the dog, Take out trash, Clean the car, Joe!'
  end
end
