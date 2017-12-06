File.open('./d05input.txt', 'r') do |f|
  arr_offsets = []

  f.each_line do |offset|
    arr_offsets << offset.to_i
  end
  current_jump_index = 0
  next_jump_index = 0
  total_jumps = 0
  while next_jump_index < arr_offsets.length
    total_jumps += 1
    current_jump_index = next_jump_index
    next_jump_index += arr_offsets[current_jump_index]
    if arr_offsets[current_jump_index] > 2
      arr_offsets[current_jump_index] -= 1
    else
      arr_offsets[current_jump_index] += 1
    end
  end
  p total_jumps
end
