# Bubble Sort
def bubble_sort(array)
  n = array.length

  loop do
    # [1, 4, 1, 3, 4, 1, 3, 3]
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

a = [1, 4, 1, 3, 4, 1, 3, 3]
p bubble_sort(a)


# Quicksort
class Array
  def quicksort
    return [] if empty?

    # [34, 2, 1, 5, 3]
    pivot = delete_at(rand(size))
    # grab 2 values
    left, right = partition(&pivot.method(:>))

    # splat, recursive
    return *left.quicksort, pivot, *right.quicksort
  end
end

arr = [34, 2, 1, 5, 3]
p arr.quicksort

# Merge sort
def merge_sort(list)
  if list.length <= 1
    list
  else
    mid = (list.length / 2).floor
    left = merge_sort(list[0..mid - 1])
    right = merge_sort(list[mid..list.length])
    merge(left, right)
  end
end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left[1..left.length], right)
    # merging another array
  else
    [right.first] + merge(left, right[1..right.length])
  end
end

arr = [4, 1, 5, 1, 33, 312]
    # left = [1, 4, 1, 3]
    # right = [100, 101]
    # newly_merged = [1] + ...[4] +
