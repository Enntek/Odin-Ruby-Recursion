# Odin Ruby Project: Recursion
# https://www.theodinproject.com/lessons/ruby-recursion

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

def recursive_fib_array(n)
  return [0] if n == 1
  return [0, 1] if n == 2
  
  array = recursive_fib_array(n - 1)
  array << (array[-2] + array[-1])
end

p recursive_fib_array(8)