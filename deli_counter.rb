queue_line=["Ada","Grace","Kent"]

  #arguments: queue_line array and name
def take_a_number(queue_line, name)
  queue_line << name # name argument use shovel method to add name argument to end of queue_line array
  puts "Welcome, #{name}. You are number #{queue_line.length} in line."
  # uses string interpolation to insert #{name}& #{queue_line} , uses .length method to output total quantity in queue_line array
end


def now_serving(queue_line)
  if queue_line.empty? #.empty used to show that queue_line array is empty
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{queue_line.first}." #.first method used to show first member of queue_line array.
    queue_line.shift #.shift removes first element of queue_line array
  end


end

def line(queue_line)
  if queue_line.empty? # if condition used , .empty method Returns true when the array is empty
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    queue_line.each.with_index(1) do |person, i|
      current_line << " #{i}. #{person}"
    end
    puts current_line
  end

end
