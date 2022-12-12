class Todo
    def initialize(task) # task is a string
      @task = task
           
    end
  
    def task
      @task
    end
  
    def mark_done!
      @task = ("1" + @task)
    end
  
    def done?
     @complete
      
    end
end