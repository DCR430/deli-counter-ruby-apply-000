queue_line=["Ada","Grace","Kent"]
  #arguments: queue_line array and name
def take_a_number(queue_line, name)
  queue_line << name # name argument use shovel method to add name argument to end of queue_line array
  puts "Welcome, #{name}. You are number #{queue_line.length} in line."
  # uses string interpolation to insert #{name}& #{queue_line} , uses .length method to output total quantity in queue_line array
end


def now_serving(queue_line) #now_serving method,argument queue_line array
  if queue_line.length == 0 # if condition used, .length method used on queue_line array, == opperator used to signal 0 to be served
    puts "There is nobody waiting to be served!"
  else #else condition used
    puts "Currently serving #{queue_line.shift}." #calling .shift method on array to pull first item from front of queue_line array
  end

end

def line(deli)
  if deli.empty?
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    deli.each.with_index(1) do |person, i|
      current_line << " #{i}. #{person}"
    end
    puts current_line
  end
end
