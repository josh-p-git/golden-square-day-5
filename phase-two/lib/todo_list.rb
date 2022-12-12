class TodoList
    def initialize
        @entries = ""
        @complete = []
        @incomplete = []
        
    end
  
    def add(todo) # todo is an instance of Todo
         @entries = todo
if @entries.chr == "1"
    @complete << @entries[1..-1]
else
  @incomplete << @entries
end
    end
  
    def incomplete
      return @incomplete
    end
  
    def complete
     return @complete
    end
  
    def give_up!
@complete << @incomplete
return @complete
    end
end