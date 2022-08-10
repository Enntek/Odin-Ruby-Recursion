# Odin Ruby Project: Merge Sort
# https://www.theodinproject.com/lessons/ruby-recursion

def merge_sort(array)
  return array if array.size < 2

  middle = array.length/2
  left = merge_sort(array[0...middle])
  right = merge_sort(array[middle..array.length])

  merge(left, right)
end

def merge(left, right)
  sorted = []

  until left.empty?
    if right.first.nil?
      sorted += left
      left = []
    elsif left.first < right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end

  # for readability
  unless right.empty?
    sorted += right
    right = []
  end

  sorted
end

def create_random_array(size, range = size)
  arr = []

  loop do
    num = rand(range)
    # arr << num unless arr.include?(num) # unique numbers
    arr << num
    break if arr.length == size
  end

  arr
end

p arr = create_random_array(9, 9)
p merge_sort(arr)
