class TodoList
    def initialize
        @entries = []
    end
  
    def add(todo) # todo is an instance of Todo
      @entries << todo
    end
  
    def incomplete
      @entries
    end
  
    def complete
      # Returns all complete todos
    end
  
    def give_up!
      # Marks all todos as complete
    end
end