# A string is said to a palindrome if:
# a) it is empty
# b) the string constitutes of a single character
# c) the inverse of the string is equal to the original string
# d) Nothing else is a palindrome

class	Palindrome

	# case 1 withour recursion
	def self.palindrome(str)
		return true if str.empty? | (str.reverse == str)
		false
	end

	def self.palindrome_recursion?(str)
		str.length < 1 or (str[0] == str[-1] and palindrome_recursion?(str[1..-2]))
	end	
end

# Test cases

p Palindrome.palindrome('racecar')
p Palindrome.palindrome_recursion?('racecar')
