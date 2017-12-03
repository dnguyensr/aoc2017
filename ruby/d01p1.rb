def sum_matching_adjacent(num)
  arr = num.to_s.split('')
  arr_length = arr.length
  sum = 0

  if arr_length <= 1
    p 0
  elsif arr_length == 2
    p arr[0].to_i * 2 if check_first_last(arr)
  else
    i = 0
    while i < arr.length - 1
      sum += arr[i].to_i if arr[i] == arr[i + 1]
      i += 1
    end
    sum += arr[0].to_i if check_first_last(arr)
    p sum
  end
end

def check_first_last(arr)
  arr.first == arr.last
end

sum_matching_adjacent(1122)
sum_matching_adjacent(1111)
sum_matching_adjacent(1234)
sum_matching_adjacent(91212129)
