def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  # Your code here

  arr = (1..number).to_a.sort!
  mid_idx = ((min_interval + max_interval) / 2).to_i
  
  
      #base case
  return nil if min_interval > max_interval
  
if arr[mid_idx] ** 2 == number
   return arr[mid_idx] 
 else
 max_interval = mid_idx if arr[mid_idx] ** 2 > number #consider the left side
  min_interval = mid_idx if arr[mid_idx] ** 2 < number #consider the right side
 sqrt_recursive(number, min_interval, max_interval)
end
end

puts sqrt(25)
puts sqrt(7056)
