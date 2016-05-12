# modules
module Menu
   def menu
      " Welcome to the TodoList Program!
      This menu will help you use the Task List System
      1) Add
      2) Show 
      4) Delete
      5) Write a file
      6) Read from a file
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
  
  def write_to_file(filename)
    IO.write(filename, @all_tasks.map(&to_s).join("\n"))
  end
  
  def read_from_file(filename)
    IO.readlines(filename).each do |line|
      add(Task.new(line.chomp))
    end
  end
end

class Task
  attr_reader :description
  
  def initialize(description)
    @description = description
  end
  
  def to_s
    description
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
    else
      puts 'Sorry, I did not understand'       
    end 
    prompt('Press enter to continue','...')
  end
  
  puts 'Thanks for using the system...' 
  
end 