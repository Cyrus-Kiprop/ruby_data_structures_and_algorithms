	def flatten(arr, result = []) 
		arr.each do |element| 
			if element.kind_of?(Array)
				flatten(element, result)
			else
				result << element
			end
		end
		result
	end


p flatten([[1, [8, 9]], [3, 4]]	)