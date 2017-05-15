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


# Merge Sort
