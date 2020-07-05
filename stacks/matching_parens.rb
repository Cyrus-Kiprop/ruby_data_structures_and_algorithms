def balanced_brackets?(string)
  parens_comb = {
    "{" => "}",
    "(" => ")",
    "[" => "]"
  }
  
  opening = parens_comb.keys
  closing = parens_comb.values
  
  stack = []
  
  string.each_char do |char|
    if opening.include?(char)
      stack << char
    elsif closing.include?(char)
    char == parens_comb[stack.last] ? stack.pop : false
    end
  end
  stack.empty?
  # your code here
end

puts balanced_brackets?('(hello)[world]')
# => true

puts balanced_brackets?('([)]')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true