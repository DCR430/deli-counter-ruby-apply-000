queue_line=["Ada","Grace","Kent"]

  #arguments: queue_line array and name
def take_a_number(queue_line, name)
  queue_line << name # name argument use shovel method to add name argument to end of queue_line array
  puts "Welcome, #{name}. You are number #{queue_line.length} in line."
  # uses string interpolation to insert #{name}& #{queue_line} , uses .length method to output total quantity in queue_line array
end


def now_serving(queue_line)
  if queue_line.empty? #if expression used on conditional basis, .empty used to show that queue_line array is empty
    puts "There is nobody waiting to be served!"
  else #else expression used on conditional basis
    puts "Currently serving #{queue_line.first}." #.first method used to show first member of queue_line array.
    queue_line.shift #.shift removes first element of queue_line array as well as returns
  end


end

def line(queue_line)
  if queue_line.empty? # if expresion used on conditionial basis , .empty method used when the array is empty
    puts "The line is currently empty."
  else #else expresion used on conditional basis
    current_line = "The line is currently:" #current_line variable used
    queue_line.each.with_index(1) do |person,i| #.each method ,.with_index(1) allows index of queue_line array to start at 1 rather then 0
      current_line << " #{i}. #{person}"
    end
    puts current_line
  end

end
