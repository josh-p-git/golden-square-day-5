require_relative '../lib/todolist'

describe TodoList do
  it 'has an empty list if given no tasks' do
    todo_list = TodoList.new('Joe')
    expect(todo_list.list).to eq []
  end
end
