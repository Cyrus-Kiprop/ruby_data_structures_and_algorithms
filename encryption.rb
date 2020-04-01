# frozen_string_literal: true
def encryption(str)
  # get rid of empty spaces on the input string
  regex = /(\s)*/
  no_space = str.gsub(regex, '').split('')

  rows = Math.sqrt(no_space.size).floor
  columns = Math.sqrt(no_space.size).ceil

  gen_hash = no_space.each_slice(columns).to_a

  result = Array.new(rows + 1) {Array.new()}

 gen_hash.each_with_index do |item, idx|
    item.each_with_index do |val, index|
      result[index] << val
    end
 end
 hash_string = ''
 result.each do |item|
  hash_string = hash_string + " " + item.join('')
 end

 hash_string.strip()

end

encryption("haveanice  day")
