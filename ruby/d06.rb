File.open('./d06input.txt', 'r').each do |f|
  def redistribute(memory)
    max_value = memory.max
    index_of_max = memory.find_index(max_value)
    current_memory = memory
    current_memory[index_of_max] = 0
    next_index = index_of_max + 1
    while max_value > 0
      if current_memory[next_index].nil?
        current_memory[0] += 1
        next_index = 1
      else
        current_memory[next_index] += 1
        next_index += 1
      end
      max_value -= 1
    end
    current_memory
  end

  current_memory_bank = f.split(' ').map(&:to_i)
  arr_length = current_memory_bank.length
  arr_arrays = []
  number_redistributions = 0
  until arr_arrays.include?(current_memory_bank)
    arr_arrays << current_memory_bank.dup
    current_memory_bank = redistribute(current_memory_bank)
    number_redistributions += 1
  end
  
  loop_length = 1
  loop_bank = current_memory_bank.dup
  arr_arrays = []
  
  loop_length += 1 until loop_bank == redistribute(current_memory_bank)
  
  p number_redistributions
  p loop_length
end
