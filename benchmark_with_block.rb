def benchmark
  start_time = Time.now # Record the start time
  yield # Execute the block
  end_time = Time.now # Record the end time
  elapsed_time = end_time - start_time # Calculate the elapsed time
  elapsed_time # Return the elapsed time
end

# Example usage
# Be careful, pasting this into IRB/Pry will take a long time to print.
# It's a loooong string. :)
long_string = "apple" * 100000000

running_time = benchmark { long_string.reverse }

puts "string.reverse took #{running_time} seconds to run"
