# Release 0: Implement a Simple Search

def search_array(array, integer)
# create fake_index counter, since we cannot use .index
  fake_index = 0 
# iterate through array, chicking each item
  array.each do |item|             
# return fake_index of integer if contained in array      
    if item == integer; 
    	return fake_index; 
    end     
    fake_index += 1
# return nil if integer not contained in array
    if fake_index >= array.length; 
    	return nil;
    end 
  end
end

arr = [42, 89, 23, 1]

p search_array(arr, 1)

p search_array(arr, 24)

# Release 1: Calculate Fibonacci Numbers


def fibonacci(input)
  fib_array = [0, 1]
 # start index after edge cases
  index = 2
 # edge cases
  return [] if input == 0
  return [0] if input == 1

  until index == input
 # fibonacci equation
    new_value = fib_array[index - 1] + fib_array[index - 2]
 # push into array
    fib_array << new_value
    index += 1
  end
 # return the last value
  fib_array
 end

p fibonacci(6)

p fibonacci(100).last


# Release 2: Sort an Array


