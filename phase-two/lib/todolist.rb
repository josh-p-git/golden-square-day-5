class TodoList
  def initialize(name)
    @name = name
    @tasks = []
  end

  def remind_me_to(task)
    @tasks << task
  end

  def remind
    raise 'No tasks set!' if @tasks == []

    "#{@tasks.join(', ')}, #{@name}!"
  end
end
