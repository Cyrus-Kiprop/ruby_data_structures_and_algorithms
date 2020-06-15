class Recursion

	def self.flatten(arr, result=[])
		arr.each do | element |
			if element.kindof?(Array)
				flatten(element, result)
			else
				result << element
			end
		end
		element	
	end
	

end


# Test cases
p Recursion.flatten([1,3,[1,3,[5,6]]])



