require 'todo'
require 'todo_list'

describe 'todo integration' do
    it 'will add a todo task' do
        todo_list = TodoList.new 
        task_entry = Todo.new('buy milk')
        todo_list.add(task_entry)
        expect(todo_list.incomplete).to eq [task_entry]
    end
end
