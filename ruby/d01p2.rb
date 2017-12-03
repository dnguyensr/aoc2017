def sum_matching_halfway_around(num)
  arr = num.to_s.split('')
  arr_length = arr.length
  half_length = arr_length / 2
  sum = 0

  if arr_length <= 1
    p 0
  elsif arr_length == 2
    p arr[0].to_i * 2 if check_first_last(arr)
  else
    i = 0
    while i <= half_length
      sum += arr[i].to_i if arr[i] == arr[i + half_length]
      i += 1
    end
    p sum * 2
  end
end

def check_first_last(arr)
  arr.first == arr.last
end

sum_matching_halfway_around(1212)
sum_matching_halfway_around(1221)
sum_matching_halfway_around(123_425)
sum_matching_halfway_around(123_123)
sum_matching_halfway_around(12_131_415)