prime_nums = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97];

def search_primes(arr, quess)
  min = 0;
  max = arr.size - 1;
  while min < max
    mid = ((max + min)/2).to_i
    return arr[mid] if arr[mid] == quess
    max = mid - 1 if arr[mid] > quess
    min = mid + 1 if arr[mid] < quess
  end
    -1
end

# calling the method
p search_primes(prime_nums, 67)
