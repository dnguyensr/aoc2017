File.open('./d04input.txt', 'r') do |f|
  def is_valid?(passphrase)
    arr = passphrase.split(' ')
    arr_size = arr.length
    return false if arr_size < 2

    arr_anagram_sorted = arr.map { |word| word.split('').sort.join('')}
    i = 0
    while i < arr_size - 1
      current_value = arr.shift
      current_anagram_value = arr_anagram_sorted.shift
      return false if arr.include?(current_value)
      return false if arr_anagram_sorted.include?(current_anagram_value)
      i += 1
    end

    true
  end


  num_valid_passphrases = 0
  f.each_line do |password|
    num_valid_passphrases += 1 if is_valid?(password)
  end

  p num_valid_passphrases
end
