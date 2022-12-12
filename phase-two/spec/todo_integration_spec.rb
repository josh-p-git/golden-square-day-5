require 'todo'
require 'todo_list'

describe 'todo integration' do
    it 'will add a todo task' do
        todo_list = TodoList.new 
        task_entry = Todo.new('buy milk')
        task_entry = task_entry.task
        todo_list.add(task_entry)
        expect(todo_list.incomplete).to eq ["buy milk"]
    end
    it 'will return a list of complete todos' do
        todo_list = TodoList.new 
        task_entry = Todo.new('buy milk')
        task_entry = task_entry.mark_done!
        todo_list.add(task_entry)        
        expect(todo_list.complete).to eq ['buy milk']
    end
        it 'will complete all todos' do
        todo_list = TodoList.new 
        task_entry = Todo.new('buy milk')
        task_entry = task_entry.task
        todo_list.add(task_entry)  
        task_2 = Todo.new('wash car')
        task_2 = task_2.task
        todo_list.add(task_2)
        todo_list.give_up!
        expect(todo_list.complete).to eq [['buy milk', 'wash car']]
    end
end
