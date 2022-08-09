# Odin Ruby Project: Recursion
# https://www.theodinproject.com/lessons/ruby-recursion


# Using iteration, write a method #fibs which takes a number and returns an array 
# containing that many numbers from the fibonacci sequence. Using an example input 
# of 8, this method should return the array [0, 1, 1, 2, 3, 5, 8, 13].
# Now write another method #fibs_rec which solves the same problem recursively. 
# This can be done in just 3 lines (or 1 if you’re crazy, but don’t consider either
#    of these lengths a requirement… just get it done).

def iterate_fib(n)
  arr = Array.new

  a = 0
  b = 1

  i = 0
  while i < n
    if i == 0
      arr << 0
    elsif i == 1
      arr << 1
    else
      temp = b
      b = a + b
      arr << b

      a = temp

    end

    i += 1
  end

  arr
end

# p iterate_fib(8)

# def fib_of(n)

#   if n == 1
#     return 0
#   elsif n == 2
#     return 1
#   elsif n > 2
#     return (fib_of(n-1) + fib_of(n-2))
#   end

# end

# def fib_array(n, array = [])
#   if n == 1
#     return array
#   else
#     array.prepend fib_of(n - 1)
#     return fib_array(n - 1, array)
#   end
# end

# p fib_array(8)

# we can get the correct fib number given n
# we need all of the numbers inbetween to also display somehow
# that is, we need the entire sequence

# your recursive method must have a base case
# your recursive method must call itself with a smaller chunk of data

# we have a method for finding fib of n
# it seems like we need a helper function or similar function
# that calls each number starting with 6, counting down
# then shoves the result into an array
# basically 2 functions are needed for this

# p fib_of(7)

# maybe the array is closer to a train
# to get the next answer we just add the previous two numbers!!!
# we actually solved it...
# half luck, half deliberate thinking
# it seems creating several if scenarios helps a lot, going through the actual sequence
# as it's counting down, it's gathering the sequence
# once we hit the base case, only the array is returned

def fib_array(n, arr = [0, 1])
  return [0] if n == 1
  return arr if n == 2
  arr << (arr[-2] + arr[-1])
  fib_array(n - 1, arr)
end

# arr = [0, 1]
# arr << (arr[-2] + arr[-1])
# arr << (arr[-2] + arr[-1])
# p arr
p fib_array(8)