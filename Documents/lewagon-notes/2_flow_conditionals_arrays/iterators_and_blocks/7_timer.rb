# Let's code a custom time method

def timer
  start_time = Time.now

  # Do some work...
  yield # yield executes a block that is passed as an argument

  end_time = Time.now
  elapsed_time = end_time - start_time
  puts "Elapsed time: #{elapsed_time} seconds"
end
# => 2023-04-03 17:37:29.156593 +0900

# Flow:
# call the method timer
# goes back to start of method
# gets to keyword yield, this executes block below timer do
# once block is finished, run all code after the yield
timer do
  puts "Doing a bit of work..."
  sleep(2)
  puts
end

timer do
  puts "Doing a bit of work..."
  sleep(4)
  puts
end

# ➜  iterators_and_blocks git:(master) ✗ ruby 7_timer.rb
# Doing a bit of work...

# Elapsed time: 2.001326 seconds
# Doing a bit of work...

# Elapsed time: 4.00123 seconds
