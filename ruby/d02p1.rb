File.open('./d02input.txt', 'r') do |f|
  def largest_smallest_diff(arr)
    largest = arr[0]
    smallest = arr[0]
    arr.each do |value|
      if value > largest
        largest = value
      elsif value < smallest
        smallest = value
      end
    end
    largest - smallest
  end

  def largest_smallest_divisible_diff(arr)
    arr_length = arr.length
    arr_sorted = arr.sort
    i = 0
    result = 1

    while i < arr_length
      j = arr_length - 1
      while j > i
        if arr_sorted[j] % arr_sorted[i] == 0
          result = arr_sorted[j] / arr_sorted[i]
          return result
        end
        j -= 1
      end
      i += 1
    end
    result
  end

  sum = 0
  sum_divisible = 0
  f.each_line do |line|
    arr = line.split(' ').map(&:to_i)
    sum += largest_smallest_diff(arr)
    sum_divisible += largest_smallest_divisible_diff(arr)
  end

  p 'Sum of the difference of largest and smallest values in each line is:'
  p sum
  p 'Sum of the difference of largest and smallest divisible pairs in each line is:'
  p sum_divisible
end
