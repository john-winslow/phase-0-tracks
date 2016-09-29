# Method to create a list

# Make a hash for storing each type of item, and the number of each type of item. (Hash better for this function)

# Making a series of methods to manipulate the grocey list:
grocery_list = {}

# Method to create list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Break up the user's long string with .split
  # Go through each item in the array, and push that to a hash. At the same time, each should have a default value of one.

def create_list(input)
  grocery_list = {}
  # grocery_list.default = 0
  temp_array = input.split(' ')
  p temp_array
  #  p temp_array.kind_of?(Array)  to test if temp_array is in fact an array 
  i = 0
  while i < temp_array.length
    temp_array[i].to_sym
    grocery_list[temp_array[i]] = 0 # grocery_list[:cheese] = 0
    i += 1
  end
  # i = 0
  # while i < temp_array.length
  #   new_item = temp_array[i]
  #   new_item = new_item.to_sym
  #   grocery_list.store(new_item, 0)
  #   i += 1
  # end
  # temp_array.each { |item|
  #   item.to_sym
  #   grocery_list.store(item, 0)}
  grocery_list
end 

  # Update the grocery list hash
  # Show results using the new print method (see below)
  # Return a hash of all the items

# Method to add an item to a list
# input: item name and optional quantity input(name, quantity) is going to be pushed into the grocery list hash
# output: Return item and quantity to confirm. 

def add_item(name, quantity)  # grocery_list.add_item(apples,1)
  grocery_list.each {name,quantity}
  grocery_list
end

# Method to remove an item from the list
# input: an existing key from the grocery list hash 
# steps: remove the key and the value from the hash
# output: Say, "Item removed!"

def remove_item(deleted_item)
  grocery_list.delete(deleted_item)
  grocery_list
end

# Method to update the quantity of an item
# input: both the key for a grocery list item, and the value for the number
# steps: User inputs the they keyname.
# This overwrites the previous value. 
# output: Return item and quantity. 

def update_quantity(u_item, u_quantity)
  u_item.to_sym
  grocery_list[u_item] = u_quantity
  grocery_list
end
# Method to print a list and make it look pretty
# input: When user's ready to print, get the latest version of the grocery list hash.
# steps: Says, "Here's your list of items:"
# Loops through and says how many of each item you have on new lines. 
# output: Printing to the screen all of the items. 

def print(
  puts 
end

# DRIVER CODE:

puts "What items do you want to add to the list?" 
input = gets.chomp

p create_list(input)

puts grocery_list