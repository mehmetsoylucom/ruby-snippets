# modules
module Menu
   def menu
      " Welcome to the TodoList Program!
      This menu will help you use the Task List System
      1) Add
      2) Show 
      3) Update
      4) Delete
      5) Write a file
      6) Read from a file
      7) Toggle status for a task
      Q) Quit "
  end
  
  def show
      menu
  end
end

module Promtable
  def prompt(message ='What would you like to do ?', symbol = ':>')
    print message
    print symbol
    gets.chomp
  end
end


# classes
class List
  attr_reader :all_tasks
  def initialize()
    @all_tasks = [] 
  end
  
  def add(task)
    all_tasks << task
  end
  
  def show
    all_tasks.map.with_index{|l, i| "(#{i.next}): #{l}" }
  end
  
  def delete(task_number)
    all_tasks.delete_at(task_number - 1)
  end
  
  def update(task_number, task)
    all_tasks[task_number - 1]  = task
  end
  
  def toggle(task_number)
    @all_tasks[task_number - 1].toggle_status
  end
  
  def write_to_file(filename)
    machinified = @all_tasks.map(&:to_machine).join("\n")
    IO.write(filename, machinified)
  end
  
  def read_from_file(filename)
    IO.readlines(filename).each do |line|
      status, *description = line.split(':')
      status = status.include?('X')
      add(Task.new(description.join(':').strip , status))
    end
  end
end

class Task
  attr_reader :description
  attr_accessor :completed_status
  
  def initialize(description, completed_status = false)
    @description = description
    @completed_status = completed_status
  end
  
  def to_s
    description
  end
  
  def toggle_status
    @completed_status = !completed?
  end
  
  def completed?    
    completed_status
  end
  
  def to_machine
    "#{represent_status} : #{description}"
  end
  
  private
  
  def represent_status
    "#{completed? ? '[X]' : '[ ]'}"
  end
end

# action


# Bu if file vs. ne ise yariyor ?
if __FILE__ == $PROGRAM_NAME
  include Menu
  include Promtable 
  my_list = List.new
  puts 'Please choose from the following list:'
  until ['q'].include?(user_input = prompt(show).downcase)
    case user_input 
    
    when '1'
      my_list.add(Task.new(prompt('What your task')))
      
    when '2'
      puts my_list.show
      
    when '3'
      puts my_list.show 
      my_list.update(prompt('Task number for update').to_i, Task.new(prompt('New content for task')))
    when '4'
      puts my_list.show
      my_list.delete(prompt('Task number for delete').to_i)
      
    when '5'
      my_list.write_to_file(prompt('What is the filename to write to?'))
      
    when '6'
      begin
        my_list.read_from_file(prompt('File name please'))
      rescue ErrNo::ENOENT
        puts 'File name not found, please verify your file name and path.'
      end
    when '7'
      puts my_list.show
      my_list.toggle(prompt('What is the new status').to_i)
    else
      puts 'Sorry, I did not understand'       
    end 
    prompt('Press enter to continue','...')
  end
  
  puts 'Thanks for using the system...' 
  
end 