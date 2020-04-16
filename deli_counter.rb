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

def line(queue_line)#line method,argument queue_line array
  if queue_line.length == 0# if condition used, .length method used on queue_line array, == opperator used to signal 0 to be served
    puts "The line is currently empty."
  else
message="The line is currently:"# message used to return

    queue_line.each_with_index do |value, index|
      message += " #{index.to_i+1}. #{value}"
    end

    puts "#{message}"
  end


end
