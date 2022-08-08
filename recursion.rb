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

def recurse_fib(n, array = [])

  if n == 1
    return 0
  elsif n == 2
    return 1
  elsif n > 2
    p array << (recurse_fib(n-1, array) + recurse_fib(n-2, array))
    return (recurse_fib(n-1, array) + recurse_fib(n-2, array))
  end

end

# returns correct fib number given n
# how do we shove the result of each method into the array?
# what about using extra variables?

p recurse_fib(4)