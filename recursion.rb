# Odin Ruby Project: Recursion
# https://www.theodinproject.com/lessons/ruby-recursion


# Using iteration, write a method #fibs which takes a number and returns an array 
# containing that many numbers from the fibonacci sequence. Using an example input 
# of 8, this method should return the array [0, 1, 1, 2, 3, 5, 8, 13].
# Now write another method #fibs_rec which solves the same problem recursively. 
# This can be done in just 3 lines (or 1 if you’re crazy, but don’t consider either
#    of these lengths a requirement… just get it done).

def fibs(n)
  sequence = [0, 1]
  return sequence.first(n) if n < 2

  i = 2
  while i < n
    sequence << sequence[-1] + sequence[-2]
    i += 1
  end

  sequence
end
p fibs(6)

# your recursive method must have a base case
# your recursive method must call itself with a smaller chunk of data

# maybe the array is closer to a train
# to get the next answer we just add the previous two numbers!!!
# we actually solved it...
# half luck, half deliberate thinking
# it seems creating several if scenarios helps a lot, going through the actual sequence
# as it's counting down, it's gathering the sequence
# once we hit the base case, only the array is returned

def recursive_fib_array(n, arr = [0, 1])
  return [0] if n == 1
  return arr if n == 2
  arr << (arr[-2] + arr[-1])
  recursive_fib_array(n - 1, arr)
end

p recursive_fib_array(8)